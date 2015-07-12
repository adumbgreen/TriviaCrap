// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;

import android.os.AsyncTask;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.lifestreet.android.lsmsdk.SlotController;
import java.lang.ref.WeakReference;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.lifestreet.android.lsmsdk.commons:
//            CustomHttpClient

public final class SwallowRedirectTask extends AsyncTask
{

    private boolean mLateCloseInterstitial;
    private final WeakReference mWebViewClientRef;
    private final WeakReference mWebViewRef;

    public SwallowRedirectTask(WebView webview, WebViewClient webviewclient)
    {
        mLateCloseInterstitial = false;
        mWebViewRef = new WeakReference(webview);
        mWebViewClientRef = new WeakReference(webviewclient);
    }

    public SwallowRedirectTask(WebView webview, WebViewClient webviewclient, boolean flag)
    {
        mLateCloseInterstitial = false;
        mWebViewRef = new WeakReference(webview);
        mWebViewClientRef = new WeakReference(webviewclient);
        mLateCloseInterstitial = flag;
    }

    private WebView getWebView()
    {
        if (mWebViewRef != null)
        {
            return (WebView)mWebViewRef.get();
        } else
        {
            return null;
        }
    }

    private WebViewClient getWebViewClient()
    {
        if (mWebViewClientRef != null)
        {
            return (WebViewClient)mWebViewClientRef.get();
        } else
        {
            return null;
        }
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient String doInBackground(String as[])
    {
        String s;
        CustomHttpClient customhttpclient;
        HttpParams httpparams;
        s = as[0];
        customhttpclient = new CustomHttpClient();
        httpparams = customhttpclient.getParams();
        httpparams.setParameter("http.protocol.handle-redirects", Boolean.valueOf(false));
        HttpResponse httpresponse;
        HttpGet httpget = new HttpGet(s);
        if (SlotController.USER_AGENT != null)
        {
            httpget.addHeader("User-Agent", SlotController.USER_AGENT);
        }
        httpget.setParams(httpparams);
        httpresponse = customhttpclient.execute(httpget);
        String s1;
        s1 = null;
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        StatusLine statusline = httpresponse.getStatusLine();
        s1 = null;
        if (statusline == null)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        int i;
        if (httpresponse.getStatusLine().getStatusCode() == 301)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        i = httpresponse.getStatusLine().getStatusCode();
        s1 = null;
        if (i != 302)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        Header header = httpresponse.getFirstHeader("Location");
        s1 = null;
        if (header == null)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        String s2 = header.getValue();
        s1 = s2;
_L2:
        if (mLateCloseInterstitial && s1 == null)
        {
            s1 = "lsm://#close";
        }
        return s1;
        Exception exception;
        exception;
        s1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        WebView webview = getWebView();
        WebViewClient webviewclient = getWebViewClient();
        if (webviewclient != null && webview != null && s != null)
        {
            webviewclient.shouldOverrideUrlLoading(webview, s);
        }
    }
}
