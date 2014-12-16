// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Context;
import android.net.http.AndroidHttpClient;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.ResponseHeader;
import java.util.Arrays;
import java.util.Iterator;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.params.HttpConnectionParams;

// Referenced classes of package com.mopub.common:
//            DownloadResponse, HttpResponses, DownloadTask

public class HttpClient
{

    private static String a;

    public HttpClient()
    {
    }

    public static AndroidHttpClient getHttpClient()
    {
        AndroidHttpClient androidhttpclient = AndroidHttpClient.newInstance(DeviceUtils.getUserAgent());
        org.apache.http.params.HttpParams httpparams = androidhttpclient.getParams();
        HttpConnectionParams.setConnectionTimeout(httpparams, 10000);
        HttpConnectionParams.setSoTimeout(httpparams, 10000);
        HttpClientParams.setRedirecting(httpparams, true);
        return androidhttpclient;
    }

    public static String getWebViewUserAgent()
    {
        com/mopub/common/HttpClient;
        JVM INSTR monitorenter ;
        String s = a;
        com/mopub/common/HttpClient;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static HttpGet initializeHttpGet(String s, Context context)
    {
        HttpGet httpget = new HttpGet(s);
        if (getWebViewUserAgent() == null && context != null)
        {
            setWebViewUserAgent((new WebView(context)).getSettings().getUserAgentString());
        }
        String s1 = getWebViewUserAgent();
        if (s1 != null)
        {
            httpget.addHeader(ResponseHeader.USER_AGENT.getKey(), s1);
        }
        return httpget;
    }

    public static void makeTrackingHttpRequest(Iterable iterable, Context context)
    {
        if (iterable == null || context == null)
        {
            return;
        } else
        {
            DownloadTask.DownloadTaskListener downloadtasklistener = new DownloadTask.DownloadTaskListener() {

                public void onComplete(String s, DownloadResponse downloadresponse)
                {
                    if (downloadresponse == null || downloadresponse.getStatusCode() != 200)
                    {
                        MoPubLog.d((new StringBuilder()).append("Failed to hit tracking endpoint: ").append(s).toString());
                        return;
                    }
                    if (HttpResponses.asResponseString(downloadresponse) != null)
                    {
                        MoPubLog.d((new StringBuilder()).append("Successfully hit tracking endpoint: ").append(s).toString());
                        return;
                    } else
                    {
                        MoPubLog.d((new StringBuilder()).append("Failed to hit tracking endpoint: ").append(s).toString());
                        return;
                    }
                }

            };
            Runnable runnable = new Runnable(iterable, context.getApplicationContext(), downloadtasklistener) {

                final Iterable a;
                final Context b;
                final DownloadTask.DownloadTaskListener c;

                public void run()
                {
                    for (Iterator iterator = a.iterator(); iterator.hasNext();)
                    {
                        String s = (String)iterator.next();
                        try
                        {
                            HttpGet httpget = HttpClient.initializeHttpGet(s, b);
                            AsyncTasks.safeExecuteOnExecutor(new DownloadTask(c), new HttpUriRequest[] {
                                httpget
                            });
                        }
                        catch (Exception exception)
                        {
                            MoPubLog.d((new StringBuilder()).append("Failed to hit tracking endpoint: ").append(s).toString());
                        }
                    }

                }

            
            {
                a = iterable;
                b = context;
                c = downloadtasklistener;
                super();
            }
            };
            (new Handler(Looper.getMainLooper())).post(runnable);
            return;
        }
    }

    public static void makeTrackingHttpRequest(String s, Context context)
    {
        makeTrackingHttpRequest(((Iterable) (Arrays.asList(new String[] {
            s
        }))), context);
    }

    public static void setWebViewUserAgent(String s)
    {
        com/mopub/common/HttpClient;
        JVM INSTR monitorenter ;
        a = s;
        com/mopub/common/HttpClient;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
