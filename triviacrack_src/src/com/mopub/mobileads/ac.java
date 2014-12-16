// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.SharedPreferences;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.factories.HttpClientFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.mopub.mobileads:
//            ab, MoPubConversionTracker

class ac
    implements Runnable
{

    final MoPubConversionTracker a;

    private ac(MoPubConversionTracker mopubconversiontracker)
    {
        a = mopubconversiontracker;
        super();
    }

    ac(MoPubConversionTracker mopubconversiontracker, MoPubConversionTracker._cls1 _pcls1)
    {
        this(mopubconversiontracker);
    }

    public void run()
    {
        String s = (new ab(a, null)).generateUrlString("ads.mopub.com");
        MoPubLog.d((new StringBuilder()).append("Conversion track: ").append(s).toString());
        DefaultHttpClient defaulthttpclient = HttpClientFactory.create();
        HttpResponse httpresponse;
        try
        {
            httpresponse = defaulthttpclient.execute(new HttpGet(s));
        }
        catch (Exception exception)
        {
            MoPubLog.d((new StringBuilder()).append("Conversion track failed [").append(exception.getClass().getSimpleName()).append("]: ").append(s).toString());
            return;
        }
        if (httpresponse.getStatusLine().getStatusCode() != 200)
        {
            MoPubLog.d("Conversion track failed: Status code != 200.");
            return;
        }
        HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity == null || httpentity.getContentLength() == 0L)
        {
            MoPubLog.d("Conversion track failed: Response was empty.");
            return;
        } else
        {
            MoPubLog.d("Conversion track successful.");
            MoPubConversionTracker.d(a).edit().putBoolean(MoPubConversionTracker.c(a), true).commit();
            return;
        }
    }
}
