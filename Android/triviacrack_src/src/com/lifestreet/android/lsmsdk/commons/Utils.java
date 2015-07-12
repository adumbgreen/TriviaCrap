// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.lifestreet.android.lsmsdk.DeviceInfo;
import com.lifestreet.android.lsmsdk.IntegrationType;
import com.lifestreet.android.lsmsdk.SlotTargeting;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class Utils
{

    public static final ExecutorService THREAD_POOL = Executors.newCachedThreadPool();

    public Utils()
    {
    }

    public static String appendQueryParameter(String s, String s1, String s2)
    {
        if (s2 != null && s2.length() > 0)
        {
            android.net.Uri.Builder builder = Uri.parse(s2).buildUpon();
            if (s != null && s1 != null)
            {
                builder.appendQueryParameter(s, s1);
            }
            String s3;
            try
            {
                s3 = builder.build().toString();
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                return s2;
            }
            s2 = s3;
        }
        return s2;
    }

    public static int convertDipsToPixels(float f, DisplayMetrics displaymetrics)
    {
        return (int)TypedValue.applyDimension(1, f, displaymetrics);
    }

    public static float convertPixelsToDips(int i, DisplayMetrics displaymetrics)
    {
        return (float)i / displaymetrics.density;
    }

    public static Location getLocation(Context context)
    {
        LocationManager locationmanager;
        locationmanager = (LocationManager)context.getSystemService("location");
        if (locationmanager == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        Location location2 = locationmanager.getLastKnownLocation("gps");
        Location location = location2;
_L1:
        Exception exception;
        if (location == null)
        {
            Location location1;
            try
            {
                location1 = locationmanager.getLastKnownLocation("network");
            }
            catch (Exception exception1)
            {
                return location;
            }
            return location1;
        } else
        {
            return location;
        }
        exception;
        location = null;
          goto _L1
        return null;
    }

    public static Map getMapWithQueryParams(SlotTargeting slottargeting, DeviceInfo deviceinfo, String s, IntegrationType integrationtype, Context context)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("libver", "1.9.2");
        hashmap.put("libtype", "src");
        hashmap.put("_mraid", "1");
        if (integrationtype != null)
        {
            hashmap.put("_src", integrationtype.getName());
        }
        if (s != null)
        {
            hashmap.put("__orig_request", s);
        }
        if (deviceinfo != null)
        {
            hashmap.putAll(deviceinfo.toMap());
        }
        if (slottargeting != null)
        {
            hashmap.putAll(slottargeting.toMap(context));
        }
        return hashmap;
    }

    public static Uri getUriWithQueryParams(String s, Map map)
    {
        if (s == null)
        {
            s = "about:blank";
        }
        android.net.Uri.Builder builder = Uri.parse(s).buildUpon();
        if (map != null)
        {
            Iterator iterator = map.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator.next();
                String s2 = (String)map.get(s1);
                if (s1 != null && s2 != null)
                {
                    builder.appendQueryParameter(s1, s2);
                }
            } while (true);
        }
        return builder.build();
    }

    public static void httpGetUrl(String s, String s1)
    {
        if (s != null && s.length() > 0)
        {
            THREAD_POOL.execute(new HttpGetUrlTask(s, s1));
        }
    }

    public static boolean isConnectionAvailable(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager != null)
        {
            NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
            if (networkinfo != null)
            {
                return networkinfo.isConnected();
            }
        }
        return false;
    }

    public static String readInputStream(InputStream inputstream)
    {
        StringBuilder stringbuilder = new StringBuilder();
        InputStreamReader inputstreamreader = new InputStreamReader(inputstream, "UTF-8");
        int i;
        do
        {
            i = inputstreamreader.read();
            if (i != -1)
            {
                stringbuilder.append((char)i);
            }
        } while (i != -1);
        inputstreamreader.close();
        return stringbuilder.toString();
    }


    private class HttpGetUrlTask
        implements Runnable
    {

        private final String mUrl;
        private final String mUserAgent;

        public void run()
        {
            Exception exception;
            CustomHttpClient customhttpclient = new CustomHttpClient(5000);
            HttpResponse httpresponse;
            try
            {
                HttpGet httpget = new HttpGet(mUrl);
                if (mUserAgent != null)
                {
                    httpget.addHeader("User-Agent", mUserAgent);
                }
                httpresponse = customhttpclient.execute(httpget);
            }
            catch (Exception exception1)
            {
                customhttpclient.getConnectionManager().shutdown();
                return;
            }
            finally
            {
                customhttpclient.getConnectionManager().shutdown();
            }
            if (httpresponse == null)
            {
                break MISSING_BLOCK_LABEL_74;
            }
            if (httpresponse.getEntity() != null)
            {
                httpresponse.getEntity().consumeContent();
            }
            customhttpclient.getConnectionManager().shutdown();
            return;
            throw exception;
        }

        public HttpGetUrlTask(String s, String s1)
        {
            mUrl = s;
            mUserAgent = s1;
        }
    }

}
