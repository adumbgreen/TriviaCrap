// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            AdvertisingIdentifier, AdError, AdTargetingOptions, AdRequest, 
//            AdSlot, Log, MetricsCollector, InternalAdRegistration, 
//            IInternalAdRegistration, StartUpWaiter, JSONUtils, AdData, 
//            AdSize, AAXCreative, AdProperties, Assets, 
//            ResponseReader, WebRequest, DebugProperties, ThreadUtils

class AdLoader
{

    public static final int AD_FAILED = -1;
    public static final int AD_LOAD_DEFERRED = 1;
    public static final int AD_READY_TO_LOAD = 0;
    private static final String DISABLED_APP_SERVER_MESSAGE = "DISABLED_APP";
    protected static final String LOG_TAG = com/amazon/device/ads/AdLoader.getSimpleName();
    private static AdLoaderFactory adLoaderFactory = new AdLoaderFactory();
    protected final AdRequest adRequest;
    protected MetricsCollector.CompositeMetricsCollector compositeMetricsCollector;
    protected AdError error;
    protected final Map slots;
    protected int timeout;

    public AdLoader(AdRequest adrequest, Map map)
    {
        timeout = 20000;
        error = null;
        compositeMetricsCollector = null;
        adRequest = adrequest;
        slots = map;
    }

    private static void beginFetchAds(int i, AdTargetingOptions adtargetingoptions, List list)
    {
        AdvertisingIdentifier.Info info = (new AdvertisingIdentifier()).getAdvertisingIdentifierInfo();
        if (!info.canDo())
        {
            failAds(new AdError(AdError.ErrorCode.INTERNAL_ERROR, "An internal request was not made on a background thread."), list);
        } else
        {
            if (adtargetingoptions == null)
            {
                adtargetingoptions = new AdTargetingOptions();
            }
            AdRequest adrequest = (new AdRequest(adtargetingoptions)).setAdvertisingIdentifierInfo(info);
            HashMap hashmap = new HashMap();
            Iterator iterator = list.iterator();
            int j = 1;
            while (iterator.hasNext()) 
            {
                AdSlot adslot = (AdSlot)iterator.next();
                AdLoader adloader;
                int k;
                if (adslot.isValid())
                {
                    adslot.setSlotNumber(j);
                    hashmap.put(Integer.valueOf(j), adslot);
                    adrequest.putSlot(adslot);
                    k = j + 1;
                } else
                {
                    k = j;
                }
                j = k;
            }
            if (hashmap.size() > 0)
            {
                adloader = adLoaderFactory.createAdLoader(adrequest, hashmap);
                adloader.setTimeout(i);
                adloader.beginFetchAd();
                return;
            }
        }
    }

    private void beginFinalizeFetchAd()
    {
        (new Handler(Looper.getMainLooper())).post(new Runnable() {

            final AdLoader this$0;

            public void run()
            {
                finalizeFetchAd();
            }

            
            {
                this$0 = AdLoader.this;
                super();
            }
        });
    }

    private static void failAds(AdError aderror, List list)
    {
        Iterator iterator = list.iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            AdSlot adslot = (AdSlot)iterator.next();
            String s;
            Object aobj[];
            int j;
            if (adslot.getSlotNumber() != -1)
            {
                adslot.adFailed(aderror);
                j = i + 1;
            } else
            {
                j = i;
            }
            i = j;
        }
        if (i > 0)
        {
            s = LOG_TAG;
            aobj = new Object[2];
            aobj[0] = aderror.getMessage();
            aobj[1] = aderror.getCode();
            Log.e(s, "%s; code: %s", aobj);
        }
    }

    private WebRequest getAdRequest()
    {
        getCompositeMetricsCollector().startMetric(Metrics.MetricType.AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL);
        WebRequest webrequest = adRequest.getWebRequest();
        getCompositeMetricsCollector().stopMetric(Metrics.MetricType.AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL);
        return webrequest;
    }

    private MetricsCollector getCompositeMetricsCollector()
    {
        if (compositeMetricsCollector == null)
        {
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = slots.entrySet().iterator(); iterator.hasNext(); arraylist.add(((AdSlot)((java.util.Map.Entry)iterator.next()).getValue()).getMetricsCollector())) { }
            compositeMetricsCollector = new MetricsCollector.CompositeMetricsCollector(arraylist);
        }
        return compositeMetricsCollector;
    }

    private static boolean isNoRetry(AdSlot aadslot[])
    {
        int i = InternalAdRegistration.getInstance().getNoRetryTtlRemainingMillis();
        if (i > 0)
        {
            int j = i / 1000;
            String s;
            AdError.ErrorCode errorcode;
            if (InternalAdRegistration.getInstance().getIsAppDisabled())
            {
                s = (new StringBuilder()).append("SDK Message: ").append("DISABLED_APP").toString();
                errorcode = AdError.ErrorCode.INTERNAL_ERROR;
            } else
            {
                s = (new StringBuilder()).append("SDK Message: ").append("no results. Try again in ").append(j).append(" seconds.").toString();
                errorcode = AdError.ErrorCode.NO_FILL;
            }
            failAds(new AdError(errorcode, s), new ArrayList(Arrays.asList(aadslot)));
            return true;
        } else
        {
            return false;
        }
    }

    protected static transient void loadAds(final int timeout, final AdTargetingOptions requestOptions, AdSlot aadslot[])
    {
        if (isNoRetry(aadslot))
        {
            return;
        }
        long l = System.nanoTime();
        final ArrayList requestAdSlots = new ArrayList();
        int i = aadslot.length;
        for (int j = 0; j < i; j++)
        {
            AdSlot adslot = aadslot[j];
            if (adslot.prepareForAdLoad(l))
            {
                requestAdSlots.add(adslot);
            }
        }

        (new StartUpWaiter() {

            final ArrayList val$requestAdSlots;
            final AdTargetingOptions val$requestOptions;
            final int val$timeout;

            protected void startUpFailed()
            {
                ThreadUtils.executeOnMainThread(new Runnable() {

                    final _cls3 this$0;

                    public void run()
                    {
                        AdLoader.failAds(new AdError(AdError.ErrorCode.NETWORK_ERROR, "The configuration was unable to be loaded"), requestAdSlots);
                    }

            
            {
                this$0 = _cls3.this;
                super();
            }
                });
            }

            protected void startUpReady()
            {
                InternalAdRegistration.getInstance().register();
                AdLoader.beginFetchAds(timeout, requestOptions, requestAdSlots);
            }

            
            {
                timeout = i;
                requestOptions = adtargetingoptions;
                requestAdSlots = arraylist;
                super();
            }
        }).start();
    }

    private void parseResponse(JSONObject jsonobject)
    {
        long l;
        HashSet hashset;
        AdError aderror;
        String s1;
        JSONArray jsonarray;
        int i;
        l = System.currentTimeMillis();
        String s = JSONUtils.getStringFromJSON(jsonobject, "status", null);
        hashset = new HashSet(slots.keySet());
        aderror = getAdError(jsonobject);
        s1 = JSONUtils.getStringFromJSON(jsonobject, "errorCode", "No Ad Received");
        adRequest.setInstrumentationPixelURL(JSONUtils.getStringFromJSON(jsonobject, "instrPixelURL", null));
        if (s == null || !s.equals("ok"))
        {
            break MISSING_BLOCK_LABEL_647;
        }
        jsonarray = JSONUtils.getJSONArrayFromJSON(jsonobject, "ads");
        i = 0;
_L2:
        JSONObject jsonobject1;
        if (i >= jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_647;
        }
        jsonobject1 = JSONUtils.getJSONObjectFromJSONArray(jsonarray, i);
        if (jsonobject1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        AdSlot adslot;
        AdData addata1;
        String s4;
        JSONArray jsonarray1;
        HashSet hashset1;
        int j = JSONUtils.getIntegerFromJSON(jsonobject1, "slotId", -1);
        adslot = (AdSlot)slots.get(Integer.valueOf(j));
        if (adslot != null)
        {
label0:
            {
                hashset.remove(Integer.valueOf(j));
                String s3 = JSONUtils.getStringFromJSON(jsonobject1, "instrPixelURL", adRequest.getInstrumentationPixelURL());
                addata1 = new AdData();
                addata1.setInstrumentationPixelUrl(s3);
                addata1.setImpressionPixelUrl(JSONUtils.getStringFromJSON(jsonobject1, "impPixelURL", null));
                if (adslot.getRequestedAdSize().isAuto())
                {
                    adslot.getMetricsCollector().incrementMetric(Metrics.MetricType.AD_COUNTER_AUTO_AD_SIZE);
                }
                s4 = JSONUtils.getStringFromJSON(jsonobject1, "html", "");
                jsonarray1 = JSONUtils.getJSONArrayFromJSON(jsonobject1, "creativeTypes");
                hashset1 = new HashSet();
                if (jsonarray1 != null)
                {
                    for (int k1 = 0; k1 < jsonarray1.length(); k1++)
                    {
                        AAXCreative aaxcreative = AAXCreative.getPrimaryCreativeType(JSONUtils.getIntegerFromJSONArray(jsonarray1, k1, 0));
                        if (aaxcreative != null)
                        {
                            hashset1.add(aaxcreative);
                        }
                    }

                }
                if (!hashset1.isEmpty())
                {
                    break label0;
                }
                adslot.setAdError(new AdError(AdError.ErrorCode.INTERNAL_ERROR, "No valid creative types found"));
                Log.e(LOG_TAG, "No valid creative types found");
            }
        }
          goto _L3
        int k;
        int i1;
        String as[];
        boolean flag1;
        String s5 = JSONUtils.getStringFromJSON(jsonobject1, "size", "");
        if (s5 != null && (s5.equals("9999x9999") || s5.equals("interstitial")) && !hashset1.contains(AAXCreative.INTERSTITIAL))
        {
            hashset1.add(AAXCreative.INTERSTITIAL);
        }
        boolean flag = hashset1.contains(AAXCreative.INTERSTITIAL);
        k = 0;
        i1 = 0;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_550;
        }
        if (s5 != null)
        {
            as = s5.split("x");
        } else
        {
            as = null;
        }
        if (as != null && as.length == 2) goto _L5; else goto _L4
_L4:
        flag1 = true;
_L6:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_550;
        }
        adslot.setAdError(new AdError(AdError.ErrorCode.INTERNAL_ERROR, "Server returned an invalid ad size"));
        Log.e(LOG_TAG, "Server returned an invalid ad size");
          goto _L3
_L5:
        int j1;
        i1 = Integer.parseInt(as[0]);
        j1 = Integer.parseInt(as[1]);
        k = j1;
        flag1 = false;
          goto _L6
        NumberFormatException numberformatexception;
        numberformatexception;
        flag1 = true;
        k = 0;
          goto _L6
        long l1 = JSONUtils.getLongFromJSON(jsonobject1, "cacheTTL", -1L);
        if (l1 > -1L)
        {
            addata1.setExpirationTimeMillis(l + l1 * 1000L);
        }
        AdProperties adproperties = new AdProperties(jsonarray1);
        addata1.setHeight(k);
        addata1.setWidth(i1);
        addata1.setCreative(s4);
        addata1.setCreativeTypes(hashset1);
        addata1.setProperties(adproperties);
        addata1.setFetched(true);
        adslot.setAdData(addata1);
          goto _L3
        String s2;
        Object aobj[];
        for (Iterator iterator = hashset.iterator(); iterator.hasNext(); Log.w(s2, "%s; code: %s", aobj))
        {
            Integer integer = (Integer)iterator.next();
            ((AdSlot)slots.get(integer)).setAdError(aderror);
            AdData addata = new AdData();
            addata.setInstrumentationPixelUrl(adRequest.getInstrumentationPixelURL());
            ((AdSlot)slots.get(integer)).setAdData(addata);
            s2 = LOG_TAG;
            aobj = new Object[2];
            aobj[0] = aderror.getMessage();
            aobj[1] = s1;
        }

        return;
    }

    protected static void setAdLoaderFactory(AdLoaderFactory adloaderfactory)
    {
        adLoaderFactory = adloaderfactory;
    }

    private void setErrorForAllSlots(AdError aderror)
    {
        for (Iterator iterator = slots.values().iterator(); iterator.hasNext(); ((AdSlot)iterator.next()).setAdError(aderror)) { }
    }

    public void beginFetchAd()
    {
        getCompositeMetricsCollector().stopMetric(Metrics.MetricType.AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START);
        getCompositeMetricsCollector().startMetric(Metrics.MetricType.AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP);
        startFetchAdThread();
    }

    protected void fetchAd()
    {
        getCompositeMetricsCollector().stopMetric(Metrics.MetricType.AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP);
        getCompositeMetricsCollector().startMetric(Metrics.MetricType.AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START);
        if (!Assets.getInstance().ensureAssetsCreated())
        {
            error = new AdError(AdError.ErrorCode.REQUEST_ERROR, "Unable to create the assets needed to display ads");
            Log.e(LOG_TAG, "Unable to create the assets needed to display ads");
            setErrorForAllSlots(error);
            return;
        }
        WebRequest.WebResponse webresponse;
        try
        {
            webresponse = fetchResponseFromNetwork();
        }
        catch (AdFetchException adfetchexception)
        {
            error = adfetchexception.getAdError();
            Log.e(LOG_TAG, adfetchexception.getAdError().getMessage());
            setErrorForAllSlots(error);
            return;
        }
        if (!webresponse.isHttpStatusCodeOK())
        {
            String s = (new StringBuilder()).append(webresponse.getHttpStatusCode()).append(" - ").append(webresponse.getHttpStatus()).toString();
            error = new AdError(AdError.ErrorCode.NETWORK_ERROR, s);
            Log.e(LOG_TAG, s);
            setErrorForAllSlots(error);
            return;
        }
        JSONObject jsonobject = webresponse.getResponseReader().readAsJSON();
        if (jsonobject == null)
        {
            error = new AdError(AdError.ErrorCode.INTERNAL_ERROR, "Unable to parse response");
            Log.e(LOG_TAG, "Unable to parse response");
            setErrorForAllSlots(error);
            return;
        } else
        {
            parseResponse(jsonobject);
            getCompositeMetricsCollector().stopMetric(Metrics.MetricType.AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END);
            getCompositeMetricsCollector().startMetric(Metrics.MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP);
            return;
        }
    }

    protected WebRequest.WebResponse fetchResponseFromNetwork()
    {
        WebRequest webrequest = getAdRequest();
        webrequest.setMetricsCollector(getCompositeMetricsCollector());
        webrequest.setServiceCallLatencyMetric(Metrics.MetricType.AAX_LATENCY_GET_AD);
        webrequest.setTimeout(timeout);
        webrequest.setDisconnectEnabled(false);
        getCompositeMetricsCollector().stopMetric(Metrics.MetricType.AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START);
        getCompositeMetricsCollector().incrementMetric(Metrics.MetricType.TLS_ENABLED);
        WebRequest.WebResponse webresponse;
        try
        {
            webresponse = webrequest.makeCall();
        }
        catch (WebRequest.WebRequestException webrequestexception)
        {
            AdError aderror;
            if (webrequestexception.getStatus() == WebRequest.WebRequestStatus.NETWORK_FAILURE)
            {
                aderror = new AdError(AdError.ErrorCode.NETWORK_ERROR, "Could not contact Ad Server");
            } else
            if (webrequestexception.getStatus() == WebRequest.WebRequestStatus.NETWORK_TIMEOUT)
            {
                aderror = new AdError(AdError.ErrorCode.NETWORK_TIMEOUT, "Connection to Ad Server timed out");
            } else
            {
                aderror = new AdError(AdError.ErrorCode.INTERNAL_ERROR, webrequestexception.getMessage());
            }
            throw new AdFetchException(aderror);
        }
        getCompositeMetricsCollector().startMetric(Metrics.MetricType.AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END);
        return webresponse;
    }

    protected void finalizeFetchAd()
    {
        for (Iterator iterator = slots.entrySet().iterator(); iterator.hasNext();)
        {
            AdSlot adslot = (AdSlot)((java.util.Map.Entry)iterator.next()).getValue();
            adslot.getMetricsCollector().stopMetric(Metrics.MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP);
            if (!adslot.isFetched())
            {
                adslot.getMetricsCollector().startMetric(Metrics.MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE);
                if (adslot.getAdError() != null)
                {
                    adslot.adFailed(adslot.getAdError());
                } else
                {
                    adslot.adFailed(new AdError(AdError.ErrorCode.INTERNAL_ERROR, "Unknown error occurred."));
                }
            } else
            {
                adslot.getMetricsCollector().startMetric(Metrics.MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START);
                adslot.initializeAd();
            }
        }

    }

    protected AdError getAdError(JSONObject jsonobject)
    {
        int i = retrieveNoRetryTtlSeconds(jsonobject);
        InternalAdRegistration.getInstance().setNoRetryTtl(i);
        String s = JSONUtils.getStringFromJSON(jsonobject, "errorMessage", "No Ad Received");
        InternalAdRegistration.getInstance().setIsAppDisabled(s.equalsIgnoreCase("DISABLED_APP"));
        String s1 = (new StringBuilder()).append("Server Message: ").append(s).toString();
        if (i > 0)
        {
            getCompositeMetricsCollector().publishMetricInMilliseconds(Metrics.MetricType.AD_NO_RETRY_TTL_RECEIVED, i * 1000);
        }
        if (i > 0 && !InternalAdRegistration.getInstance().getIsAppDisabled())
        {
            String s2 = (new StringBuilder()).append(s1).append(". Try again in ").append(i).append(" seconds").toString();
            return new AdError(AdError.ErrorCode.NO_FILL, s2);
        }
        if (s.equals("no results"))
        {
            return new AdError(AdError.ErrorCode.NO_FILL, s1);
        } else
        {
            return new AdError(AdError.ErrorCode.INTERNAL_ERROR, s1);
        }
    }

    protected int retrieveNoRetryTtlSeconds(JSONObject jsonobject)
    {
        return DebugProperties.getDebugPropertyAsInteger("debug.noRetryTTL", JSONUtils.getIntegerFromJSON(jsonobject, "noretryTTL", 0));
    }

    public void setTimeout(int i)
    {
        timeout = i;
    }

    protected void startFetchAdThread()
    {
        ThreadUtils.executeRunnable(new Runnable() {

            final AdLoader this$0;

            public void run()
            {
                fetchAd();
                beginFinalizeFetchAd();
            }

            
            {
                this$0 = AdLoader.this;
                super();
            }
        });
    }





    private class AdLoaderFactory
    {

        public AdLoader createAdLoader(AdRequest adrequest, Map map)
        {
            return new AdLoader(adrequest, map);
        }

        protected AdLoaderFactory()
        {
        }
    }


    private class AdFetchException extends Exception
    {

        private static final long serialVersionUID = 1L;
        private final AdError adError;
        final AdLoader this$0;

        public AdError getAdError()
        {
            return adError;
        }

        public AdFetchException(AdError aderror)
        {
            this$0 = AdLoader.this;
            super();
            adError = aderror;
        }

        public AdFetchException(AdError aderror, Throwable throwable)
        {
            this$0 = AdLoader.this;
            super(throwable);
            adError = aderror;
        }
    }

}
