// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.os.AsyncTask;
import android.util.Log;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.facebook.ads.internal:
//            AdAnalogData, AdUtilities, AdClientEvent, AdClientEventManager, 
//            StringUtils

public class OpenUrlTask extends AsyncTask
{

    private static final String INVALID_ADDRESS = "#";
    private static final String TAG = com/facebook/ads/internal/OpenUrlTask.getSimpleName();
    private Map extraData;

    public OpenUrlTask()
    {
        extraData = null;
    }

    public OpenUrlTask(Map map)
    {
        extraData = map;
    }

    private String addAnalogInfo(String s)
    {
        String s1;
        try
        {
            s1 = addData(s, "analog", AdUtilities.jsonEncode(AdAnalogData.getAnalogInfo()));
        }
        catch (Exception exception)
        {
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(exception));
            return s;
        }
        return s1;
    }

    private String addData(String s, String s1, String s2)
    {
        if (StringUtils.isNullOrEmpty(s) || StringUtils.isNullOrEmpty(s1) || StringUtils.isNullOrEmpty(s2))
        {
            return s;
        }
        String s3;
        if (s.contains("?"))
        {
            s3 = "&";
        } else
        {
            s3 = "?";
        }
        return (new StringBuilder()).append(s).append(s3).append(s1).append("=").append(URLEncoder.encode(s2)).toString();
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient Void doInBackground(String as[])
    {
        String s = as[0];
        if (StringUtils.isNullOrEmpty(s) || s.equals("#"))
        {
            return null;
        }
        String s1 = addAnalogInfo(s);
        String s2;
        if (extraData != null)
        {
            Iterator iterator = extraData.keySet().iterator();
            String s3;
            for (s2 = s1; iterator.hasNext(); s2 = addData(s2, s3, (String)extraData.get(s3)))
            {
                s3 = (String)iterator.next();
            }

        } else
        {
            s2 = s1;
        }
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        HttpGet httpget = new HttpGet(s2);
        try
        {
            defaulthttpclient.execute(httpget);
        }
        catch (Exception exception)
        {
            Log.e(TAG, (new StringBuilder()).append("Error opening url: ").append(s2).toString(), exception);
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(exception));
            return null;
        }
        return null;
    }

}
