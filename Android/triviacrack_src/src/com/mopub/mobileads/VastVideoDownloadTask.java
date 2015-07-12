// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import com.mopub.common.CacheService;
import com.mopub.common.HttpClient;
import com.mopub.common.logging.MoPubLog;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

public class VastVideoDownloadTask extends AsyncTask
{

    private final VastVideoDownloadTaskListener a;

    public VastVideoDownloadTask(VastVideoDownloadTaskListener vastvideodownloadtasklistener)
    {
        a = vastvideodownloadtasklistener;
    }

    protected transient Boolean a(String as[])
    {
        if (as != null && as[0] != null) goto _L2; else goto _L1
_L1:
        Boolean boolean1 = Boolean.valueOf(false);
_L4:
        return boolean1;
_L2:
        String s;
        AndroidHttpClient androidhttpclient;
        s = as[0];
        androidhttpclient = null;
        HttpResponse httpresponse;
        androidhttpclient = HttpClient.getHttpClient();
        httpresponse = androidhttpclient.execute(new HttpGet(s));
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        if (httpresponse.getEntity() != null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        throw new IOException((new StringBuilder()).append("Obtained null response from video url: ").append(s).toString());
        Exception exception1;
        exception1;
        Boolean boolean2;
        MoPubLog.d((new StringBuilder()).append("Failed to download video: ").append(exception1.getMessage()).toString());
        boolean2 = Boolean.valueOf(false);
        boolean1 = boolean2;
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
            return boolean1;
        }
        continue; /* Loop/switch isn't completed */
        if (httpresponse.getEntity().getContentLength() > 0x1900000L)
        {
            throw new IOException("Video exceeded max download size");
        }
        break MISSING_BLOCK_LABEL_179;
        Exception exception;
        exception;
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
        }
        throw exception;
        Boolean boolean3;
        BufferedInputStream bufferedinputstream = new BufferedInputStream(httpresponse.getEntity().getContent());
        boolean flag = CacheService.putToDiskCache(s, bufferedinputstream);
        bufferedinputstream.close();
        boolean3 = Boolean.valueOf(flag);
        boolean1 = boolean3;
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
            return boolean1;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void a(Boolean boolean1)
    {
        if (a != null)
        {
            a.onComplete(boolean1.booleanValue());
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onCancelled()
    {
        a(Boolean.valueOf(false));
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    private class VastVideoDownloadTaskListener
    {

        public abstract void onComplete(boolean flag);
    }

}
