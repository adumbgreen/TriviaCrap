// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.millennialmedia.android:
//            MMWebView, MMLog, MMCommand, HttpRedirection

abstract class MMWebViewClient extends WebViewClient
{

    MMWebViewClientListener a;
    HttpRedirection.RedirectionListenerImpl b;
    boolean c;
    private ExecutorService d;

    MMWebViewClient(MMWebViewClientListener mmwebviewclientlistener, HttpRedirection.RedirectionListenerImpl redirectionlistenerimpl)
    {
        d = Executors.newCachedThreadPool();
        a = mmwebviewclientlistener;
        b = redirectionlistenerimpl;
    }

    abstract void a(MMWebView mmwebview);

    public void onPageFinished(WebView webview, String s)
    {
        MMWebView mmwebview = (MMWebView)webview;
        if (!mmwebview.a(s))
        {
            a.onPageFinished(s);
            mmwebview.t();
            a(mmwebview);
            MMLog.b("MMWebViewClient", (new StringBuilder()).append("onPageFinished webview: ").append(mmwebview.toString()).append("url is ").append(s).toString());
        }
        super.onPageFinished(webview, s);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        MMLog.b("MMWebViewClient", String.format("onPageStarted: %s", new Object[] {
            s
        }));
        a.a(s);
        MMWebView mmwebview = (MMWebView)webview;
        mmwebview.c = "loading";
        mmwebview.g = false;
        super.onPageStarted(webview, s, bitmap);
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = s;
        aobj[2] = s1;
        MMLog.e("MMWebViewClient", String.format("Error: %s %s %s", aobj));
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        MMWebView mmwebview = (MMWebView)webview;
        if (!mmwebview.a(s))
        {
            MMLog.a("MMWebViewClient", (new StringBuilder()).append("@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is ").append(s).append(" for ").append(webview).toString());
            if (s.substring(0, 6).equalsIgnoreCase("mmsdk:"))
            {
                MMLog.a("MMWebViewClient", (new StringBuilder()).append("Running JS bridge command: ").append(s).toString());
                MMCommand mmcommand = new MMCommand((MMWebView)webview, s);
                c = mmcommand.a();
                d.execute(mmcommand);
                return true;
            }
            if (b.isExpandingToUrl())
            {
                return false;
            }
            b.a = s;
            b.b = new WeakReference(webview.getContext());
            b.e = mmwebview.a;
            HttpRedirection.a(b);
        }
        return true;
    }

    private class MMWebViewClientListener
    {

        void a(String s)
        {
        }

        void onPageFinished(String s)
        {
        }

        MMWebViewClientListener()
        {
        }
    }

}
