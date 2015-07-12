// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import com.mopub.common.logging.MoPubLog;
import java.net.URI;
import org.apache.http.client.methods.HttpUriRequest;

// Referenced classes of package com.mopub.common:
//            HttpClient, DownloadResponse

public class DownloadTask extends AsyncTask
{

    private final DownloadTaskListener a;
    private String b;

    public DownloadTask(DownloadTaskListener downloadtasklistener)
    {
        if (downloadtasklistener == null)
        {
            throw new IllegalArgumentException("DownloadTaskListener must not be null.");
        } else
        {
            a = downloadtasklistener;
            return;
        }
    }

    protected transient DownloadResponse a(HttpUriRequest ahttpurirequest[])
    {
        if (ahttpurirequest != null && ahttpurirequest.length != 0 && ahttpurirequest[0] != null) goto _L2; else goto _L1
_L1:
        DownloadResponse downloadresponse;
        MoPubLog.d("Download task tried to execute null or empty url");
        downloadresponse = null;
_L4:
        return downloadresponse;
_L2:
        HttpUriRequest httpurirequest;
        httpurirequest = ahttpurirequest[0];
        b = httpurirequest.getURI().toString();
        AndroidHttpClient androidhttpclient1 = HttpClient.getHttpClient();
        AndroidHttpClient androidhttpclient = androidhttpclient1;
        downloadresponse = new DownloadResponse(androidhttpclient.execute(httpurirequest));
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
            return downloadresponse;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        androidhttpclient = null;
_L8:
        MoPubLog.d("Download task threw an internal exception", exception1);
        cancel(true);
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
        }
        return null;
        Exception exception;
        exception;
        androidhttpclient = null;
_L6:
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
        }
        throw exception;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
        exception1;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected void a(DownloadResponse downloadresponse)
    {
        if (isCancelled())
        {
            onCancelled();
            return;
        } else
        {
            a.onComplete(b, downloadresponse);
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((HttpUriRequest[])aobj);
    }

    protected void onCancelled()
    {
        a.onComplete(b, null);
    }

    protected void onPostExecute(Object obj)
    {
        a((DownloadResponse)obj);
    }

    private class DownloadTaskListener
    {

        public abstract void onComplete(String s, DownloadResponse downloadresponse);
    }

}
