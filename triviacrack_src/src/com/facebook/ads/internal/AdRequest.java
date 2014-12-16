// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook.ads.internal:
//            AdWebViewUtils, AdvertisingIdInfo, AdUtilities, AdType, 
//            AdSdkCapability, AdClientEventManager, StringUtils, AdAnalogData, 
//            AdResponse

public class AdRequest
{

    private static final String ADS_ENDPOINT = "network_ads";
    private static final int AD_REQUEST_TIMEOUT_MS = 30000;
    private static final String AD_TYPE_PARAM = "ad_type";
    private static final String APP_BUILD_PARAM = "app_build";
    private static final String APP_VERSION_PARAM = "app_version";
    private static final String ATTRIBUTION_ID_PARAM = "attribution_id";
    private static final String CHILD_DIRECTED_PARAM = "child_directed";
    private static final String CLIENT_EVENTS_PARAM = "events";
    private static final String DEFAULT_ENCODING = "utf-8";
    private static final String DEVICE_ID_PARAM = "device_id";
    private static final String DEVICE_ID_TRACKING_ENABLED_PARAM = "tracking_enabled";
    private static final String GRAPH_URL_BASE = "https://graph.facebook.com";
    private static final String GRAPH_URL_BASE_PREFIX_FORMAT = "http://graph.%s.facebook.com";
    private static final String HEIGHT_PARAM = "height";
    private static final String LOCALE_PARAM = "locale";
    private static final String NATIVE_ADS_ENDPOINT = "network_ads_native";
    private static final String OS = "Android";
    private static final String OS_PARAM = "os";
    private static final String OS_VERSION_PARAM = "os_version";
    private static final String PACKAGE_NAME_PARAM = "package_name";
    private static final String PLACEMENT_ID_PARAM = "placement_id";
    private static final String SCREEN_HEIGHT_PARAM = "screen_height";
    private static final String SCREEN_WIDTH_PARAM = "screen_width";
    private static final String SDK_CAPABILITIES_PARAM = "sdk_capabilities";
    private static final String SDK_VERSION = "sdk_version";
    private static final String TAG = com/facebook/ads/internal/AdRequest.getSimpleName();
    private static final String TEST_MODE_PARAM = "test_mode";
    private static final String WIDTH_PARAM = "width";
    private final AdSize adSize;
    private final AdType adType;
    private final Callback callback;
    private final Context context;
    private final String placementId;
    private final boolean testMode;
    private final String userAgentString;

    public AdRequest(Context context1, String s, AdSize adsize, AdType adtype, boolean flag, Callback callback1)
    {
        if (s == null || s.length() < 1)
        {
            throw new IllegalArgumentException("placementId");
        }
        if (adsize == null)
        {
            throw new IllegalArgumentException("adSize");
        }
        if (callback1 == null)
        {
            throw new IllegalArgumentException("callback");
        } else
        {
            context = context1;
            placementId = s;
            adSize = adsize;
            userAgentString = AdWebViewUtils.getUserAgentString(context1, adtype);
            adType = adtype;
            testMode = flag;
            callback = callback1;
            return;
        }
    }

    private void addAdvertisingInfoParams(Map map, AdUtilities.Fb4aData fb4adata)
    {
        boolean flag = true;
        AdvertisingIdInfo advertisingidinfo = AdvertisingIdInfo.getAdvertisingIdInfo(context, fb4adata);
        if (advertisingidinfo == null)
        {
            map.put("tracking_enabled", Boolean.valueOf(flag));
        } else
        {
            if (advertisingidinfo.isLimitAdTrackingEnabled())
            {
                flag = false;
            }
            map.put("tracking_enabled", Boolean.valueOf(flag));
            if (!advertisingidinfo.isLimitAdTrackingEnabled())
            {
                map.put("device_id", advertisingidinfo.getId());
                return;
            }
        }
    }

    private void addAppInfoParams(Map map)
    {
        map.put("package_name", context.getPackageName());
    }

    private void addDeviceInfoParams(Map map)
    {
        map.put("os", "Android");
        map.put("os_version", android.os.Build.VERSION.RELEASE);
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        int i = (int)((float)displaymetrics.widthPixels / displaymetrics.density);
        int j = (int)((float)displaymetrics.heightPixels / displaymetrics.density);
        map.put("screen_width", Integer.valueOf(i));
        map.put("screen_height", Integer.valueOf(j));
        Locale locale;
        try
        {
            PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            map.put("app_build", Integer.valueOf(packageinfo.versionCode));
            map.put("app_version", packageinfo.versionName);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            map.put("app_version", Integer.valueOf(0));
        }
        locale = context.getResources().getConfiguration().locale;
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        map.put("locale", locale.toString());
    }

    private AdRequestResponse createResponsesFromStream(InputStream inputstream)
    {
        AdRequestResponse adrequestresponse = new AdRequestResponse();
        JSONObject jsonobject;
        Object obj = (new JSONTokener(AdUtilities.readStreamToString(inputstream))).nextValue();
        if (obj instanceof JSONObject)
        {
            jsonobject = (JSONObject)obj;
            if (!jsonobject.has("error"))
            {
                break MISSING_BLOCK_LABEL_109;
            }
            JSONObject jsonobject1 = (JSONObject)AdUtilities.getStringPropertyAsJSON(jsonobject, "error");
            adrequestresponse.error = new AdError(jsonobject1.optInt("code", -1), jsonobject1.optString("message", null));
        }
_L1:
        if (adrequestresponse.body == null && adrequestresponse.error == null)
        {
            return null;
        } else
        {
            return adrequestresponse;
        }
        try
        {
            adrequestresponse.body = jsonobject;
            adrequestresponse.error = null;
        }
        catch (Exception exception)
        {
            adrequestresponse.error = new AdError(-1, exception.getMessage());
        }
          goto _L1
    }

    private String getAdsEndpoint()
    {
        class _cls2
        {

            static final int $SwitchMap$com$facebook$ads$internal$AdType[];

            static 
            {
                $SwitchMap$com$facebook$ads$internal$AdType = new int[AdType.values().length];
                try
                {
                    $SwitchMap$com$facebook$ads$internal$AdType[AdType.NATIVE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$facebook$ads$internal$AdType[AdType.HTML.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        switch (_cls2..SwitchMap.com.facebook.ads.internal.AdType[adType.ordinal()])
        {
        default:
            return "network_ads";

        case 1: // '\001'
            return "network_ads_native";
        }
    }

    private String getQueryString(Map map)
    {
        StringBuilder stringbuilder = new StringBuilder(512);
        Iterator iterator = map.entrySet().iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            boolean flag1;
            if (flag)
            {
                flag1 = false;
            } else
            {
                stringbuilder.append("&");
                flag1 = flag;
            }
            stringbuilder.append(URLEncoder.encode((String)entry.getKey(), "utf-8")).append("=").append(URLEncoder.encode(String.valueOf(entry.getValue()), "utf-8"));
            flag = flag1;
        }
        return stringbuilder.toString();
    }

    private Map getRequestParameters()
    {
        HashMap hashmap = new HashMap();
        AdUtilities.Fb4aData fb4adata = AdUtilities.getFb4aData(context.getContentResolver());
        hashmap.put("ad_type", Integer.valueOf(adType.getValue()));
        hashmap.put("sdk_capabilities", AdSdkCapability.getSupportedCapabilitiesAsJSONString());
        hashmap.put("sdk_version", "3.19.1");
        hashmap.put("placement_id", placementId);
        hashmap.put("attribution_id", fb4adata.attributionId);
        hashmap.put("width", Integer.valueOf(adSize.getWidth()));
        hashmap.put("height", Integer.valueOf(adSize.getHeight()));
        hashmap.put("test_mode", Boolean.valueOf(testMode));
        hashmap.put("child_directed", Boolean.valueOf(AdSettings.isChildDirected()));
        hashmap.put("events", AdClientEventManager.dumpClientEventToJson());
        addDeviceInfoParams(hashmap);
        addAppInfoParams(hashmap);
        addAdvertisingInfoParams(hashmap, fb4adata);
        return hashmap;
    }

    private URL getUrlForRequest()
    {
        String s = AdSettings.getUrlPrefix();
        String s1;
        Object aobj[];
        if (StringUtils.isNullOrEmpty(s))
        {
            s1 = "https://graph.facebook.com";
        } else
        {
            s1 = String.format("http://graph.%s.facebook.com", new Object[] {
                s
            });
        }
        aobj = new Object[2];
        aobj[0] = s1;
        aobj[1] = getAdsEndpoint();
        return new URL(String.format("%s/%s", aobj));
    }

    private HttpURLConnection makeRequest()
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)getUrlForRequest().openConnection();
        httpurlconnection.setRequestProperty("User-Agent", userAgentString);
        httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpurlconnection.setRequestMethod("POST");
        httpurlconnection.setDoOutput(true);
        httpurlconnection.setConnectTimeout(30000);
        httpurlconnection.setReadTimeout(30000);
        String s = getQueryString(getRequestParameters());
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
        BufferedWriter bufferedwriter = new BufferedWriter(new OutputStreamWriter(bufferedoutputstream, "utf-8"));
        bufferedwriter.write(s);
        bufferedwriter.flush();
        bufferedwriter.close();
        bufferedoutputstream.close();
        httpurlconnection.connect();
        return httpurlconnection;
    }

    public AsyncTask executeAsync()
    {
        AdAnalogData.startUpdate(context);
        return (new AsyncTask() {

            final AdRequest this$0;

            protected transient AdRequestResponse doInBackground(Void avoid[])
            {
                return executeConnectionAndWait();
            }

            protected volatile Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected void onPostExecute(AdRequestResponse adrequestresponse)
            {
                if (adrequestresponse == null)
                {
                    callback.onError(AdError.INTERNAL_ERROR);
                    return;
                }
                if (adrequestresponse.error != null)
                {
                    callback.onError(adrequestresponse.error);
                    return;
                } else
                {
                    AdResponse adresponse = AdResponse.parseResponse(context, adrequestresponse.body);
                    callback.onCompleted(adresponse);
                    return;
                }
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((AdRequestResponse)obj);
            }

            
            {
                this$0 = AdRequest.this;
                super();
            }

            private class Callback
            {

                public abstract void onCompleted(AdResponse adresponse);

                public abstract void onError(AdError aderror);
            }

        }).execute(new Void[0]);
    }

    public AdRequestResponse executeConnectionAndWait()
    {
        Object obj = null;
        HttpURLConnection httpurlconnection1 = makeRequest();
        HttpURLConnection httpurlconnection = httpurlconnection1;
        int i = httpurlconnection.getResponseCode();
        obj = null;
        if (i < 400) goto _L2; else goto _L1
_L1:
        InputStream inputstream = httpurlconnection.getErrorStream();
        obj = inputstream;
_L3:
        AdRequestResponse adrequestresponse1 = createResponsesFromStream(((InputStream) (obj)));
        AdRequestResponse adrequestresponse;
        adrequestresponse = adrequestresponse1;
        AdUtilities.closeQuietly(((java.io.Closeable) (obj)));
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
_L5:
        return adrequestresponse;
_L2:
        InputStream inputstream1 = httpurlconnection.getInputStream();
        obj = inputstream1;
          goto _L3
        SocketTimeoutException sockettimeoutexception;
        sockettimeoutexception;
        Object obj1;
        SocketTimeoutException sockettimeoutexception1;
        sockettimeoutexception1 = sockettimeoutexception;
        obj1 = null;
_L12:
        adrequestresponse = new AdRequestResponse();
        adrequestresponse.error = new AdError(-1, sockettimeoutexception1.getMessage());
        AdUtilities.closeQuietly(((java.io.Closeable) (obj1)));
        if (obj == null) goto _L5; else goto _L4
_L4:
        ((HttpURLConnection) (obj)).disconnect();
        return adrequestresponse;
        IOException ioexception;
        ioexception;
        IOException ioexception1;
        ioexception1 = ioexception;
        obj1 = null;
_L11:
        adrequestresponse = new AdRequestResponse();
        adrequestresponse.error = new AdError(-1, ioexception1.getMessage());
        AdUtilities.closeQuietly(((java.io.Closeable) (obj1)));
        if (obj == null) goto _L5; else goto _L6
_L6:
        ((HttpURLConnection) (obj)).disconnect();
        return adrequestresponse;
        Exception exception1;
        exception1;
        httpurlconnection = null;
_L10:
        Log.e(TAG, "Unexpected error", exception1);
        adrequestresponse = new AdRequestResponse();
        adrequestresponse.error = AdError.INTERNAL_ERROR;
        AdUtilities.closeQuietly(((java.io.Closeable) (obj)));
        if (httpurlconnection == null) goto _L5; else goto _L7
_L7:
        httpurlconnection.disconnect();
        return adrequestresponse;
        Exception exception;
        exception;
        obj1 = null;
_L9:
        AdUtilities.closeQuietly(((java.io.Closeable) (obj1)));
        if (obj != null)
        {
            ((HttpURLConnection) (obj)).disconnect();
        }
        throw exception;
        exception;
        obj = httpurlconnection;
        obj1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = obj;
        obj = httpurlconnection;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L9; else goto _L8
_L8:
        exception1;
          goto _L10
        IOException ioexception2;
        ioexception2;
        obj = httpurlconnection;
        ioexception1 = ioexception2;
        obj1 = null;
          goto _L11
        IOException ioexception3;
        ioexception3;
        obj1 = obj;
        obj = httpurlconnection;
        ioexception1 = ioexception3;
          goto _L11
        SocketTimeoutException sockettimeoutexception2;
        sockettimeoutexception2;
        obj = httpurlconnection;
        sockettimeoutexception1 = sockettimeoutexception2;
        obj1 = null;
          goto _L12
        SocketTimeoutException sockettimeoutexception3;
        sockettimeoutexception3;
        obj1 = obj;
        obj = httpurlconnection;
        sockettimeoutexception1 = sockettimeoutexception3;
          goto _L12
    }




    private class AdRequestResponse
    {

        JSONObject body;
        AdError error;

        private AdRequestResponse()
        {
            body = null;
            error = null;
        }

    }

}
