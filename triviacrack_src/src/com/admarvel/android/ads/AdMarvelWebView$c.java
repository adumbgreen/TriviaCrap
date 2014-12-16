// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.admarvel.android.util.Logging;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelUtils, AdMarvelWebView, s, ab, 
//            AdMarvelInternalWebView, AdMarvelVideoActivity, AdMarvelAd

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
        Logging.log("Load Ad: onPageFinished");
        if (AdMarvelUtils.isLogDumpEnabled())
        {
            webview.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
        }
        if (!AdMarvelWebView.m(a).get() && AdMarvelWebView.k(a).compareAndSet(true, false) && AdMarvelWebView.a(a.e) != null)
        {
            AdMarvelWebView.a(a.e).a(a, AdMarvelWebView.c(a));
        }
        AdMarvelWebView.l(a).set(true);
    }

    public void onPageStarted(WebView webview, String s1, Bitmap bitmap)
    {
        super.onPageStarted(webview, s1, bitmap);
        Logging.log("Load Ad: onPageStarted");
        AdMarvelWebView.l(a).set(false);
    }

    public void onReceivedError(WebView webview, int i, String s1, String s2)
    {
        Logging.log((new StringBuilder()).append("Load Ad : onReceivedError Failing URL - ").append(s2).toString());
        super.onReceivedError(webview, i, s1, s2);
        if (AdMarvelWebView.k(a).compareAndSet(true, false) && AdMarvelWebView.a(a.e) != null)
        {
            AdMarvelWebView.a(a.e).a(a, AdMarvelWebView.c(a), 305, ab.a(305));
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s1)
    {
        Logging.log((new StringBuilder()).append("Load Ad : shouldOverrideUrlLoading URL - ").append(s1).toString());
        if (s1 == null)
        {
            return false;
        }
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)a.findViewWithTag((new StringBuilder()).append(a.e).append("INTERNAL").toString());
        if (admarvelinternalwebview != null)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        Context context;
        if (!AdMarvelWebView.f(a))
        {
            break MISSING_BLOCK_LABEL_151;
        }
        context = a.getContext();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        if (context instanceof Activity)
        {
            admarvelinternalwebview = (AdMarvelInternalWebView)((ViewGroup)((Activity)context).getWindow().findViewById(0x1020002)).findViewWithTag((new StringBuilder()).append(a.e).append("INTERNAL").toString());
        }
        if (admarvelinternalwebview == null)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        if (admarvelinternalwebview.isSignalShutdown())
        {
            return false;
        }
        if (ab.d(s1))
        {
            return true;
        }
        if (!AdMarvelWebView.g(a)) goto _L2; else goto _L1
_L1:
        if (!ab.b(a.getContext(), s1))
        {
            break MISSING_BLOCK_LABEL_232;
        }
        (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
        return true;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_337;
        }
        if (ab.a(s1, "admarvelsdk") == a)
        {
            break MISSING_BLOCK_LABEL_337;
        }
        if (AdMarvelWebView.a(a.e) != null)
        {
            AdMarvelWebView.a(a.e).a(AdMarvelWebView.c(a), ab.a(s1, "admarvelsdk", "", ab.a(s1, "admarvelsdk"), a.getContext()));
        }
        (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
        return true;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_442;
        }
        if (ab.a(s1, "admarvelinternal") == a)
        {
            break MISSING_BLOCK_LABEL_442;
        }
        if (AdMarvelWebView.a(a.e) != null)
        {
            AdMarvelWebView.a(a.e).a(AdMarvelWebView.c(a), ab.a(s1, "admarvelinternal", "", ab.a(s1, "admarvelinternal"), a.getContext()));
        }
        (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
        return true;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_573;
        }
        if (ab.a(s1, "admarvelvideo") == a)
        {
            break MISSING_BLOCK_LABEL_573;
        }
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
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_692;
        }
        if (ab.a(s1, "admarvelexternal") == a)
        {
            break MISSING_BLOCK_LABEL_692;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(ab.a(s1, "admarvelexternal", "", ab.a(s1, "admarvelexternal"), a.getContext())));
        intent.addFlags(0x10000000);
        if (ab.a(a.getContext(), intent))
        {
            a.getContext().startActivity(intent);
        }
        (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
        return true;
        if (s1 == null) goto _L2; else goto _L3
_L3:
        if (ab.a(s1, "admarvelcustomvideo") == a) goto _L2; else goto _L4
_L4:
        Intent intent1;
        intent1 = new Intent(a.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
        intent1.addFlags(0x10000000);
        intent1.putExtra("url", s1);
        AdMarvelWebView.c(a).removeNonStringEntriesTargetParam();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
        objectoutputstream.writeObject(AdMarvelWebView.c(a));
        objectoutputstream.close();
        intent1.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
_L5:
        intent1.putExtra("isCustomUrl", true);
        intent1.putExtra("xml", AdMarvelWebView.h(a));
        intent1.putExtra("source", AdMarvelWebView.i(a));
        intent1.putExtra("GUID", a.e);
        a.getContext().startActivity(intent1);
        (new ab(a.getContext(), AdMarvelWebView.d(a))).b(AdMarvelWebView.h(a));
        return true;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L5
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append(exception.getMessage()).append("exception in shouldOverrideUrlLoading").toString());
_L7:
        return true;
_L2:
        if (!AdMarvelWebView.j(a).get() && !admarvelinternalwebview.b()) goto _L7; else goto _L6
_L6:
        AdMarvelWebView.a(a, s1);
          goto _L7
    }

    ity(AdMarvelWebView admarvelwebview)
    {
        a = admarvelwebview;
        super();
    }
}
