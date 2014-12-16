// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.factories.HttpClientFactory;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.mopub.mobileads:
//            AdViewController, AdConfiguration

class a
    implements Runnable
{

    final AdViewController a;

    public void run()
    {
        DefaultHttpClient defaulthttpclient;
        if (AdViewController.a(a).j() == null)
        {
            return;
        }
        defaulthttpclient = HttpClientFactory.create();
        HttpGet httpget = new HttpGet(AdViewController.a(a).j());
        httpget.addHeader("User-Agent", AdViewController.a(a).r());
        defaulthttpclient.execute(httpget);
        defaulthttpclient.getConnectionManager().shutdown();
        return;
        Exception exception1;
        exception1;
        MoPubLog.d((new StringBuilder()).append("Impression tracking failed : ").append(AdViewController.a(a).j()).toString(), exception1);
        defaulthttpclient.getConnectionManager().shutdown();
        return;
        Exception exception;
        exception;
        defaulthttpclient.getConnectionManager().shutdown();
        throw exception;
    }

    nager(AdViewController adviewcontroller)
    {
        a = adviewcontroller;
        super();
    }
}
