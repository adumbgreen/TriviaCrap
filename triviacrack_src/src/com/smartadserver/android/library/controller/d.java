// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;

public class d extends WebViewClient
{

    private static final String c = com/smartadserver/android/library/controller/d.getSimpleName();
    public SASAdView a;
    public WebViewClient b;
    private boolean d;

    public d()
    {
        d = false;
    }

    public void a()
    {
        d = false;
    }

    public void a(WebViewClient webviewclient)
    {
        b = webviewclient;
    }

    public boolean b()
    {
        return d;
    }

    public void doUpdateVisitedHistory(WebView webview, String s, boolean flag)
    {
        if (b != null)
        {
            b.doUpdateVisitedHistory(webview, s, flag);
            return;
        } else
        {
            super.doUpdateVisitedHistory(webview, s, flag);
            return;
        }
    }

    public void onFormResubmission(WebView webview, Message message, Message message1)
    {
        if (b != null)
        {
            b.onFormResubmission(webview, message, message1);
            return;
        } else
        {
            super.onFormResubmission(webview, message, message1);
            return;
        }
    }

    public void onLoadResource(WebView webview, String s)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("onLoadResource: ").append(s).toString());
        if (b != null)
        {
            b.onLoadResource(webview, s);
            return;
        } else
        {
            super.onLoadResource(webview, s);
            return;
        }
    }

    public void onPageFinished(WebView webview, String s)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("onPageFinished: ").append(s).toString());
        if ("about:blank".equals(s)) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
_L2:
        Exception exception;
        if (b != null)
        {
            b.onPageFinished(webview, s);
            return;
        } else
        {
            super.onPageFinished(webview, s);
            return;
        }
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("onPageStarted: ").append(s).toString());
        if (b != null)
        {
            b.onPageStarted(webview, s, bitmap);
            return;
        } else
        {
            super.onPageStarted(webview, s, bitmap);
            return;
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        d = true;
        this;
        JVM INSTR monitorenter ;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("onReceivedError: code: ").append(i).append("description: ").append(s).append("failingUrl: ").append(s1).toString());
        Exception exception;
        if (b != null)
        {
            b.onReceivedError(webview, i, s, s1);
            return;
        } else
        {
            super.onReceivedError(webview, i, s, s1);
            return;
        }
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onReceivedHttpAuthRequest(WebView webview, HttpAuthHandler httpauthhandler, String s, String s1)
    {
        if (b != null)
        {
            b.onReceivedHttpAuthRequest(webview, httpauthhandler, s, s1);
            return;
        } else
        {
            super.onReceivedHttpAuthRequest(webview, httpauthhandler, s, s1);
            return;
        }
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        if (b != null)
        {
            b.onReceivedSslError(webview, sslerrorhandler, sslerror);
            return;
        } else
        {
            super.onReceivedSslError(webview, sslerrorhandler, sslerror);
            return;
        }
    }

    public void onScaleChanged(WebView webview, float f, float f1)
    {
        if (b != null)
        {
            b.onScaleChanged(webview, f, f1);
            return;
        } else
        {
            super.onScaleChanged(webview, f, f1);
            return;
        }
    }

    public void onTooManyRedirects(WebView webview, Message message, Message message1)
    {
        if (b != null)
        {
            b.onTooManyRedirects(webview, message, message1);
            return;
        } else
        {
            super.onTooManyRedirects(webview, message, message1);
            return;
        }
    }

    public void onUnhandledKeyEvent(WebView webview, KeyEvent keyevent)
    {
        if (b != null)
        {
            b.onUnhandledKeyEvent(webview, keyevent);
            return;
        } else
        {
            super.onUnhandledKeyEvent(webview, keyevent);
            return;
        }
    }

    public boolean shouldOverrideKeyEvent(WebView webview, KeyEvent keyevent)
    {
        if (b != null)
        {
            return b.shouldOverrideKeyEvent(webview, keyevent);
        } else
        {
            return super.shouldOverrideKeyEvent(webview, keyevent);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("shouldOverrideUrlLoading: ").append(s).toString());
        if (a != null)
        {
            a.a(s);
        }
        return true;
    }

}
