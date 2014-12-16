// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;

// Referenced classes of package com.lifestreet.android.lsmsdk.commons:
//            CustomHttpClient

class mUserAgent
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

    public (String s, String s1)
    {
        mUrl = s;
        mUserAgent = s1;
    }
}
