// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.admarvel.android.util.Logging;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelUtils, g, AdMarvelInternalWebView, 
//            s, ac, u, ab, 
//            AdMarvelVideoActivity, AdMarvelAd

class a extends WebViewClient
{

    final AdMarvelWebView a;

    public void onLoadResource(WebView webview, String s1)
    {
        Logging.log((new StringBuilder()).append("Load Ad : onLoadResource URL - ").append(s1).toString());
        super.onLoadResource(webview, s1);
    }

    public void onPageFinished(WebView webview, String s1)
    {
        super.onPageFinished(webview, s1);
        AdMarvelWebView.a(a, true);
        Logging.log("Load Ad: onPageFinished");
        if (AdMarvelUtils.isLogDumpEnabled())
        {
            webview.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
        }
        if (!AdMarvelWebView.m(a).get() && AdMarvelWebView.k(a).compareAndSet(true, false))
        {
            if (AdMarvelWebView.a(a.e) != null)
            {
                AdMarvelInternalWebView.a(a.e, (g)AdMarvelWebView.n(a).get());
                AdMarvelWebView.a(a.e).a(a, AdMarvelWebView.c(a));
            } else
            {
                Logging.log("Load Ad: onPageFinished - No listener found");
            }
        }
        AdMarvelWebView.l(a).set(true);
    }

    public void onPageStarted(WebView webview, String s1, Bitmap bitmap)
    {
        super.onPageStarted(webview, s1, bitmap);
        Logging.log("Load Ad: onPageStarted");
        AdMarvelWebView.l(a).set(false);
        if (ac.a() > 18)
        {
            Logging.log((new StringBuilder()).append(" adding onpagefinsihed callback reciever with delay of 5 sec").append(u.b).toString());
            AdMarvelWebView.d(a).postDelayed(new <init>(a, s1), u.b);
        }
    }

    public void onReceivedError(WebView webview, int i, String s1, String s2)
    {
        AdMarvelInternalWebView.b(a.e);
        Logging.log((new StringBuilder()).append("Load Ad: onReceivedError - Failing Url ").append(s2).toString());
        super.onReceivedError(webview, i, s1, s2);
        if (AdMarvelWebView.k(a).compareAndSet(true, false) && AdMarvelWebView.a(a.e) != null)
        {
            AdMarvelWebView.a(a.e).a(a, AdMarvelWebView.c(a), 305, ab.a(305));
        }
    }

    public WebResourceResponse shouldInterceptRequest(WebView webview, String s1)
    {
        int i;
        i = 0;
        Logging.log((new StringBuilder()).append("Load Ad : shouldInterceptRequest URL - ").append(s1).toString());
        if (!s1.equals("http://baseurl.admarvel.com/mraid.js")) goto _L2; else goto _L1
_L1:
        HttpURLConnection httpurlconnection;
        int j;
        InputStream inputstream;
        ArrayList arraylist;
        int l;
        int i1;
        byte abyte0[];
        rReason rreason;
        try
        {
            httpurlconnection = (HttpURLConnection)(new URL("http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js")).openConnection();
            httpurlconnection.setRequestMethod("GET");
            httpurlconnection.setDoOutput(false);
            httpurlconnection.setDoInput(true);
            httpurlconnection.setUseCaches(false);
            httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpurlconnection.setRequestProperty("Content-Length", "0");
            httpurlconnection.setConnectTimeout(2000);
            httpurlconnection.setReadTimeout(10000);
            j = httpurlconnection.getResponseCode();
            int k = httpurlconnection.getContentLength();
            Logging.log((new StringBuilder()).append("Mraid Connection Status Code: ").append(j).toString());
            Logging.log((new StringBuilder()).append("Mraid Content Length: ").append(k).toString());
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return super.shouldInterceptRequest(webview, s1);
        }
        if (j != 200) goto _L4; else goto _L3
_L3:
        inputstream = (InputStream)httpurlconnection.getContent();
        arraylist = new ArrayList();
        l = 0;
        i1 = 8192;
_L6:
        if (i1 == '\uFFFF')
        {
            break MISSING_BLOCK_LABEL_296;
        }
        abyte0 = new byte[8192];
        i1 = inputstream.read(abyte0, 0, 8192);
        if (i1 <= 0) goto _L6; else goto _L5
_L5:
        rreason = new <init>(null);
        rreason.a = abyte0;
        rreason.b = i1;
        l += i1;
        arraylist.add(rreason);
          goto _L6
        inputstream.close();
        if (l <= 0) goto _L8; else goto _L7
_L7:
        byte abyte1[] = new byte[l];
        int j1 = 0;
_L10:
        if (j1 >= arraylist.size())
        {
            break; /* Loop/switch isn't completed */
        }
        rReason rreason1 = (b)arraylist.get(j1);
        System.arraycopy(rreason1.a, 0, abyte1, i, rreason1.b);
        i += rreason1.b;
        j1++;
        if (true) goto _L10; else goto _L9
_L9:
        String s2 = new String(abyte1);
_L12:
        return new WebResourceResponse("text/css", "UTF-8", new ByteArrayInputStream(s2.getBytes()));
_L4:
        WebResourceResponse webresourceresponse = super.shouldInterceptRequest(webview, s1);
        return webresourceresponse;
_L2:
        return super.shouldInterceptRequest(webview, s1);
_L8:
        s2 = "";
        if (true) goto _L12; else goto _L11
_L11:
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s1)
    {
        Logging.log((new StringBuilder()).append("Load Ad : shouldOverrideUrlLoading URL - ").append(s1).toString());
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.findViewWithTag((new StringBuilder()).append(a.e).append("INTERNAL").toString());
        if (admarvelinternalwebview == null && AdMarvelWebView.f(a))
        {
            Context context = a.getContext();
            if (context != null && (context instanceof Activity))
            {
                admarvelinternalwebview = (AdMarvelInternalWebView)((ViewGroup)((Activity)context).getWindow().findViewById(0x1020002)).findViewWithTag((new StringBuilder()).append(a.e).append("INTERNAL").toString());
            }
        }
        if (admarvelinternalwebview != null && admarvelinternalwebview.isSignalShutdown())
        {
            return false;
        }
        if (ab.d(s1))
        {
            return true;
        }
        if (AdMarvelWebView.g(a))
        {
            if (admarvelinternalwebview != null && !admarvelinternalwebview.b() && (s1 == null || s1.length() <= 0 || !s1.startsWith("admarvelsdk") && !s1.startsWith("admarvelinternal")))
            {
                return true;
            }
            if (ab.b(a.getContext(), s1))
            {
                (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                return true;
            }
            if (s1 != null && ab.a(s1, "admarvelsdk") != a)
            {
                if (AdMarvelWebView.a(a.e) != null)
                {
                    AdMarvelWebView.a(a.e).a(AdMarvelWebView.c(a), ab.a(s1, "admarvelsdk", "", ab.a(s1, "admarvelsdk"), a.getContext()));
                }
                (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                return true;
            }
            if (s1 != null && ab.a(s1, "admarvelinternal") != a)
            {
                if (AdMarvelWebView.a(a.e) != null)
                {
                    AdMarvelWebView.a(a.e).a(AdMarvelWebView.c(a), ab.a(s1, "admarvelinternal", "", ab.a(s1, "admarvelinternal"), a.getContext()));
                }
                (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                return true;
            }
            if (s1 != null && ab.a(s1, "admarvelvideo") != a)
            {
                String s2 = ab.a(s1, "admarvelvideo", "http://", ab.a(s1, "admarvelvideo"), a.getContext());
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.addFlags(0x10000000);
                intent2.setDataAndType(Uri.parse(s2), "video/*");
                if (ab.a(a.getContext(), intent2))
                {
                    a.getContext().startActivity(intent2);
                }
                (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                return true;
            }
            if (s1 != null && ab.a(s1, "admarvelexternal") != a)
            {
                Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse(ab.a(s1, "admarvelexternal", "", ab.a(s1, "admarvelexternal"), a.getContext())));
                intent1.addFlags(0x10000000);
                if (ab.a(a.getContext(), intent1))
                {
                    a.getContext().startActivity(intent1);
                }
                (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                return true;
            }
            if (s1 != null && ab.a(s1, "admarvelcustomvideo") != a)
            {
                Intent intent = new Intent(a.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
                intent.addFlags(0x10000000);
                AdMarvelWebView.c(a).removeNonStringEntriesTargetParam();
                try
                {
                    ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                    ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
                    objectoutputstream.writeObject(AdMarvelWebView.c(a));
                    objectoutputstream.close();
                    intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
                intent.putExtra("url", s1);
                intent.putExtra("isCustomUrl", true);
                intent.putExtra("xml", AdMarvelWebView.h(a));
                intent.putExtra("source", AdMarvelWebView.i(a));
                intent.putExtra("GUID", a.e);
                a.getContext().startActivity(intent);
                (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
                return true;
            }
        }
        if (AdMarvelWebView.j(a).get() || admarvelinternalwebview != null && admarvelinternalwebview.b())
        {
            AdMarvelWebView.a(a, s1);
        }
        return true;
    }

    ity(AdMarvelWebView admarvelwebview)
    {
        a = admarvelwebview;
        super();
    }
}
