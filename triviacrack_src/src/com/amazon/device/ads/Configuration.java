// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            DebugProperties, PreferredMarketplaceRetriever, Settings, InternalAdRegistration, 
//            IInternalAdRegistration, RegistrationInfo, Log, StringUtils, 
//            ThreadUtils, AdvertisingIdentifier, WebRequest, Metrics, 
//            DeviceInfo, Version, PermissionChecker, ResponseReader, 
//            MetricsCollector, NumberUtils

class Configuration
{

    private static final String AAX_MSDK_CONFIG_ENDPOINT = "/e/msdk/cfg";
    private static final String AAX_PROD_US_HOSTNAME = "aax-us-east.amazon-adsystem.com";
    protected static final String CONFIG_APP_DEFINED_MARKETPLACE = "config-appDefinedMarketplace";
    protected static final String CONFIG_LASTFETCHTIME = "config-lastFetchTime";
    protected static final String CONFIG_TTL = "config-ttl";
    protected static final String CONFIG_VERSION_NAME = "configVersion";
    protected static final int CURRENT_CONFIG_VERSION = 1;
    private static final String LOG_TAG = com/amazon/device/ads/Configuration.getSimpleName();
    protected static final int MAX_CONFIG_TTL = 0x2a300;
    protected static final int MAX_NO_RETRY_TTL = 0x493e0;
    private static Configuration instance = new Configuration();
    private String appDefinedMarketplace;
    private boolean isAppDefinedMarketplaceSet;
    private AtomicBoolean isFetching;
    private boolean isFirstParty;
    private Boolean lastTestModeValue;
    private List listeners;
    private PreferredMarketplaceRetriever pfmRetriever;

    protected Configuration()
    {
        appDefinedMarketplace = null;
        isAppDefinedMarketplaceSet = false;
        listeners = null;
        isFetching = null;
        lastTestModeValue = null;
        isFirstParty = false;
        pfmRetriever = new PreferredMarketplaceRetriever.NullPreferredMarketplaceRetriever();
        listeners = new ArrayList(5);
        isFetching = new AtomicBoolean(false);
    }

    public static final Configuration getInstance()
    {
        return instance;
    }

    public static int getMaxNoRetryTtl()
    {
        return DebugProperties.getDebugPropertyAsInteger("debug.noRetryTTLMax", 0x493e0);
    }

    private String getPreferredMarketplace()
    {
        return pfmRetriever.retrievePreferredMarketplace();
    }

    private boolean hasAppDefinedMarketplaceChanged()
    {
        Settings settings = Settings.getInstance();
        String s = settings.getString("config-appDefinedMarketplace", null);
        if (isAppDefinedMarketplaceSet)
        {
            isAppDefinedMarketplaceSet = false;
            if (appDefinedMarketplace != null && !appDefinedMarketplace.equals(s))
            {
                settings.putLongWithNoFlush("config-lastFetchTime", 0L);
                settings.putStringWithNoFlush("config-appDefinedMarketplace", appDefinedMarketplace);
                settings.flush();
                InternalAdRegistration.getInstance().getRegistrationInfo().requestNewSISDeviceIdentifier();
                Log.d(LOG_TAG, "New application-defined marketplace set. A new configuration will be retrieved.");
                return true;
            }
            if (s != null && appDefinedMarketplace == null)
            {
                settings.remove("config-appDefinedMarketplace");
                InternalAdRegistration.getInstance().getRegistrationInfo().requestNewSISDeviceIdentifier();
                Log.d(LOG_TAG, "Application-defined marketplace removed. A new configuration will be retrieved.");
                return true;
            }
        }
        return false;
    }

    private void writeSettingFromConfigOption(ConfigOption configoption, JSONObject jsonobject)
    {
        if (configoption.getDataType().equals(java/lang/String))
        {
            String s = jsonobject.getString(configoption.getResponseKey());
            if (!configoption.getAllowEmpty() && StringUtils.isNullOrWhiteSpace(s))
            {
                throw new IllegalArgumentException("The configuration value must not be empty or contain only white spaces.");
            } else
            {
                Settings.getInstance().putStringWithNoFlush(configoption.getSettingsName(), s);
                return;
            }
        }
        if (configoption.getDataType().equals(java/lang/Boolean))
        {
            boolean flag = jsonobject.getBoolean(configoption.getResponseKey());
            Settings.getInstance().putBooleanWithNoFlush(configoption.getSettingsName(), flag);
            return;
        } else
        {
            throw new IllegalArgumentException("Undefined configuration option type.");
        }
    }

    protected void beginFetch()
    {
        ThreadUtils.executeRunnable(new Runnable() {

            final Configuration this$0;

            public void run()
            {
                fetchConfigurationOnBackgroundThread();
            }

            
            {
                this$0 = Configuration.this;
                super();
            }
        });
    }

    AdvertisingIdentifier.Info createAdvertisingIdentifierInfo()
    {
        AdvertisingIdentifier advertisingidentifier = new AdvertisingIdentifier();
        int i = Settings.getInstance().getInt("configVersion", 0);
        boolean flag = false;
        if (i != 0)
        {
            flag = true;
        }
        return advertisingidentifier.setShouldSetCurrentAdvertisingIdentifier(flag).getAdvertisingIdentifierInfo();
    }

    protected WebRequest createWebRequest(AdvertisingIdentifier.Info info)
    {
        WebRequest webrequest = WebRequest.createJSONGetWebRequest();
        webrequest.setExternalLogTag(LOG_TAG);
        webrequest.enableLog(true);
        webrequest.setHost(DebugProperties.getDebugPropertyAsString("debug.aaxConfigHostname", "aax-us-east.amazon-adsystem.com"));
        webrequest.setPath("/e/msdk/cfg");
        webrequest.setMetricsCollector(Metrics.getInstance().getMetricsCollector());
        webrequest.setServiceCallLatencyMetric(Metrics.MetricType.AAX_CONFIG_DOWNLOAD_LATENCY);
        webrequest.setUseSecure(DebugProperties.getDebugPropertyAsBoolean("debug.aaxConfigUseSecure", true));
        RegistrationInfo registrationinfo = InternalAdRegistration.getInstance().getRegistrationInfo();
        DeviceInfo deviceinfo = InternalAdRegistration.getInstance().getDeviceInfo();
        webrequest.putUnencodedQueryParameter("appId", registrationinfo.getAppKey());
        webrequest.putUnencodedQueryParameter("dinfo", deviceinfo.getDInfoProperty().toString());
        webrequest.putUnencodedQueryParameter("adId", info.getSISDeviceIdentifier());
        webrequest.putUnencodedQueryParameter("sdkVer", Version.getSDKVersion());
        webrequest.putUnencodedQueryParameter("fp", Boolean.toString(isFirstParty));
        webrequest.putUnencodedQueryParameter("mkt", Settings.getInstance().getString("config-appDefinedMarketplace", null));
        webrequest.putUnencodedQueryParameter("pfm", getPreferredMarketplace());
        boolean flag = Settings.getInstance().getBoolean("testingEnabled", false);
        setLastTestModeValue(flag);
        if (flag)
        {
            webrequest.putUnencodedQueryParameter("testMode", "true");
        }
        webrequest.setAdditionalQueryParamsString(DebugProperties.getDebugPropertyAsString("debug.aaxConfigParams", null));
        return webrequest;
    }

    protected void fetchConfigurationOnBackgroundThread()
    {
        int i;
        JSONObject jsonobject;
        Settings settings;
        int k;
        i = 0x2a300;
        Log.d(LOG_TAG, "In configuration fetcher background thread.");
        if (!PermissionChecker.hasInternetPermission(InternalAdRegistration.getInstance().getApplicationContext()))
        {
            Log.e(LOG_TAG, "Network task cannot commence because the INTERNET permission is missing from the app's manifest.");
            onFetchFailure();
            return;
        }
        AdvertisingIdentifier.Info info = createAdvertisingIdentifierInfo();
        if (!info.canDo())
        {
            onFetchFailure();
            return;
        }
        WebRequest webrequest = createWebRequest(info);
        WebRequest.WebResponse webresponse;
        ConfigOption aconfigoption[];
        int j;
        ConfigOption configoption;
        try
        {
            webresponse = webrequest.makeCall();
        }
        catch (WebRequest.WebRequestException webrequestexception)
        {
            onFetchFailure();
            return;
        }
        jsonobject = webresponse.getResponseReader().readAsJSON();
        settings = Settings.getInstance();
        try
        {
            aconfigoption = getConfigOptions();
            j = aconfigoption.length;
        }
        catch (JSONException jsonexception)
        {
            String s1 = LOG_TAG;
            Object aobj1[] = new Object[1];
            aobj1[0] = jsonexception.getMessage();
            Log.e(s1, "Unable to parse JSON response: %s", aobj1);
            onFetchFailure();
            return;
        }
        catch (Exception exception)
        {
            String s = LOG_TAG;
            Object aobj[] = new Object[1];
            aobj[0] = exception.getMessage();
            Log.e(s, "Unexpected error during parsing: %s", aobj);
            onFetchFailure();
            return;
        }
        k = 0;
_L2:
        if (k >= j)
        {
            break MISSING_BLOCK_LABEL_249;
        }
        configoption = aconfigoption[k];
        if (!jsonobject.isNull(configoption.getResponseKey()))
        {
            break MISSING_BLOCK_LABEL_201;
        }
        if (!configoption.getAllowEmpty())
        {
            throw new Exception("The configuration value must be present and not null.");
        }
        settings.removeWithNoFlush(configoption.getSettingsName());
        break MISSING_BLOCK_LABEL_339;
        writeSettingFromConfigOption(configoption, jsonobject);
        break MISSING_BLOCK_LABEL_339;
        int l;
        if (jsonobject.isNull("ttl"))
        {
            throw new Exception("The configuration value must be present and not null.");
        }
        l = jsonobject.getInt("ttl");
        if (l <= i)
        {
            i = l;
        }
        settings.putIntWithNoFlush("config-ttl", i);
        settings.putLongWithNoFlush("config-lastFetchTime", nanoTime());
        settings.putIntWithNoFlush("configVersion", 1);
        settings.flush();
        Log.d(LOG_TAG, "Configuration fetched and saved.");
        onFetchSuccess();
        return;
        k++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected ConfigurationListener[] getAndClearListeners()
    {
        this;
        JVM INSTR monitorenter ;
        ConfigurationListener aconfigurationlistener1[];
        ConfigurationListener aconfigurationlistener[] = new ConfigurationListener[listeners.size()];
        aconfigurationlistener1 = (ConfigurationListener[])listeners.toArray(aconfigurationlistener);
        listeners.clear();
        this;
        JVM INSTR monitorexit ;
        return aconfigurationlistener1;
        Exception exception;
        exception;
        throw exception;
    }

    public String getAppDefinedMarketplace()
    {
        return appDefinedMarketplace;
    }

    public boolean getBoolean(ConfigOption configoption)
    {
        return getBooleanWithDefault(configoption, false);
    }

    public boolean getBooleanWithDefault(ConfigOption configoption, boolean flag)
    {
        if (DebugProperties.containsDebugProperty(configoption.getDebugProperty()))
        {
            return DebugProperties.getDebugPropertyAsBoolean(configoption.getDebugProperty(), flag);
        } else
        {
            return Settings.getInstance().getBoolean(configoption.getSettingsName(), flag);
        }
    }

    protected ConfigOption[] getConfigOptions()
    {
        return ConfigOption.configOptions;
    }

    PreferredMarketplaceRetriever getPreferredMarketplaceRetriever()
    {
        return pfmRetriever;
    }

    public String getString(ConfigOption configoption)
    {
        String s = DebugProperties.getDebugPropertyAsString(configoption.getDebugProperty(), null);
        if (s == null)
        {
            s = Settings.getInstance().getString(configoption.getSettingsName(), null);
        }
        return s;
    }

    protected boolean isFetching()
    {
        return isFetching.get();
    }

    boolean isFirstParty()
    {
        return isFirstParty;
    }

    protected long nanoTime()
    {
        return System.nanoTime();
    }

    protected void onFetchFailure()
    {
        int i = 0;
        this;
        JVM INSTR monitorenter ;
        ConfigurationListener aconfigurationlistener[];
        int j;
        Metrics.getInstance().getMetricsCollector().incrementMetric(Metrics.MetricType.AAX_CONFIG_DOWNLOAD_FAILED);
        setIsFetching(false);
        aconfigurationlistener = getAndClearListeners();
        j = aconfigurationlistener.length;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        aconfigurationlistener[i].onConfigurationFailure();
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void onFetchSuccess()
    {
        int i = 0;
        this;
        JVM INSTR monitorenter ;
        ConfigurationListener aconfigurationlistener[];
        int j;
        setIsFetching(false);
        aconfigurationlistener = getAndClearListeners();
        j = aconfigurationlistener.length;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        aconfigurationlistener[i].onConfigurationReady();
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void queueConfigurationListener(ConfigurationListener configurationlistener)
    {
        this;
        JVM INSTR monitorenter ;
        queueConfigurationListener(configurationlistener, true);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void queueConfigurationListener(ConfigurationListener configurationlistener, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!isFetching()) goto _L2; else goto _L1
_L1:
        listeners.add(configurationlistener);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!shouldFetch())
        {
            break MISSING_BLOCK_LABEL_71;
        }
        listeners.add(configurationlistener);
        if (!flag) goto _L4; else goto _L3
_L3:
        Log.d(LOG_TAG, "Starting configuration fetching...");
        setIsFetching(true);
        beginFetch();
          goto _L4
        Exception exception;
        exception;
        throw exception;
        configurationlistener.onConfigurationReady();
          goto _L4
    }

    public void setAppDefinedMarketplace(String s)
    {
        appDefinedMarketplace = s;
        isAppDefinedMarketplaceSet = true;
    }

    protected void setIsFetching(boolean flag)
    {
        isFetching.set(flag);
    }

    public void setIsFirstParty(boolean flag)
    {
        isFirstParty = flag;
    }

    protected void setLastTestModeValue(boolean flag)
    {
        lastTestModeValue = Boolean.valueOf(flag);
    }

    public void setPreferredMarketplaceRetriever(PreferredMarketplaceRetriever preferredmarketplaceretriever)
    {
        pfmRetriever = preferredmarketplaceretriever;
    }

    protected boolean shouldFetch()
    {
        Settings settings;
        settings = Settings.getInstance();
        break MISSING_BLOCK_LABEL_4;
        if (!hasAppDefinedMarketplaceChanged() && Settings.getInstance().getInt("configVersion", 0) == 1)
        {
            long l = nanoTime();
            long l1 = settings.getLong("config-lastFetchTime", 0L);
            long l2 = settings.getInt("config-ttl", 0x2a300);
            if (l1 == 0L)
            {
                Log.d(LOG_TAG, "No configuration found. A new configuration will be retrieved.");
                return true;
            }
            if (l - l1 > NumberUtils.convertToNsFromS(l2))
            {
                Log.d(LOG_TAG, "The configuration has expired. A new configuration will be retrieved.");
                return true;
            }
            if (lastTestModeValue != null && lastTestModeValue.booleanValue() != settings.getBoolean("testingEnabled", false))
            {
                Log.d(LOG_TAG, "The testing mode has changed. A new configuration will be retrieved.");
                return true;
            }
            if (!DebugProperties.getDebugPropertyAsBoolean("debug.shouldFetchConfig", false))
            {
                return false;
            }
        }
        return true;
    }


    private class ConfigOption
    {

        public static final ConfigOption AAX_HOSTNAME;
        public static final ConfigOption AD_PREF_URL;
        public static final ConfigOption MADS_HOSTNAME;
        public static final ConfigOption SEND_GEO;
        public static final ConfigOption SIS_DOMAIN;
        public static final ConfigOption SIS_URL;
        public static final ConfigOption configOptions[];
        private final boolean allowEmpty;
        private final Class dataType;
        private final String debugProperty;
        private final String responseKey;
        private final String settingsName;

        boolean getAllowEmpty()
        {
            return allowEmpty;
        }

        Class getDataType()
        {
            return dataType;
        }

        String getDebugProperty()
        {
            return debugProperty;
        }

        String getResponseKey()
        {
            return responseKey;
        }

        String getSettingsName()
        {
            return settingsName;
        }

        static 
        {
            AAX_HOSTNAME = new ConfigOption("config-aaxHostname", java/lang/String, "aaxHostname", "debug.aaxHostname");
            SIS_URL = new ConfigOption("config-sisURL", java/lang/String, "sisURL", "debug.sisURL");
            AD_PREF_URL = new ConfigOption("config-adPrefURL", java/lang/String, "adPrefURL", "debug.adPrefURL");
            MADS_HOSTNAME = new ConfigOption("config-madsHostname", java/lang/String, "madsHostname", "debug.madsHostname", true);
            SIS_DOMAIN = new ConfigOption("config-sisDomain", java/lang/String, "sisDomain", "debug.sisDomain");
            SEND_GEO = new ConfigOption("config-sendGeo", java/lang/Boolean, "sendGeo", "debug.sendGeo");
            ConfigOption aconfigoption[] = new ConfigOption[6];
            aconfigoption[0] = AAX_HOSTNAME;
            aconfigoption[1] = SIS_URL;
            aconfigoption[2] = AD_PREF_URL;
            aconfigoption[3] = MADS_HOSTNAME;
            aconfigoption[4] = SIS_DOMAIN;
            aconfigoption[5] = SEND_GEO;
            configOptions = aconfigoption;
        }

        protected ConfigOption(String s, Class class1, String s1, String s2)
        {
            this(s, class1, s1, s2, false);
        }

        protected ConfigOption(String s, Class class1, String s1, String s2, boolean flag)
        {
            settingsName = s;
            responseKey = s1;
            dataType = class1;
            debugProperty = s2;
            allowEmpty = flag;
        }
    }


    private class ConfigurationListener
    {

        public abstract void onConfigurationFailure();

        public abstract void onConfigurationReady();
    }

}
