// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.smartadserver.android.library.ui.SASAdView;

public class c extends WebChromeClient
{

    private static final String d = com/smartadserver/android/library/controller/c.getSimpleName();
    public SASAdView a;
    android.widget.FrameLayout.LayoutParams b;
    public WebChromeClient c;
    private boolean e;

    public c(Context context)
    {
        b = new android.widget.FrameLayout.LayoutParams(300, 200);
        e = false;
    }

    static String c()
    {
        return d;
    }

    public void a()
    {
        e = false;
    }

    public void a(WebChromeClient webchromeclient)
    {
        c = webchromeclient;
    }

    public boolean b()
    {
        return e;
    }

    public Bitmap getDefaultVideoPoster()
    {
        if (c != null)
        {
            return c.getDefaultVideoPoster();
        } else
        {
            return super.getDefaultVideoPoster();
        }
    }

    public View getVideoLoadingProgressView()
    {
        if (c != null)
        {
            return c.getVideoLoadingProgressView();
        } else
        {
            return super.getVideoLoadingProgressView();
        }
    }

    public void getVisitedHistory(ValueCallback valuecallback)
    {
        if (c != null)
        {
            c.getVisitedHistory(valuecallback);
            return;
        } else
        {
            super.getVisitedHistory(valuecallback);
            return;
        }
    }

    public void onCloseWindow(WebView webview)
    {
        if (c != null)
        {
            c.onCloseWindow(webview);
            return;
        } else
        {
            super.onCloseWindow(webview);
            return;
        }
    }

    public void onConsoleMessage(String s, int i, String s1)
    {
        if (c != null)
        {
            c.onConsoleMessage(s, i, s1);
            return;
        } else
        {
            super.onConsoleMessage(s, i, s1);
            return;
        }
    }

    public boolean onConsoleMessage(ConsoleMessage consolemessage)
    {
        com.smartadserver.android.library.h.c.a(d, (new StringBuilder()).append(consolemessage.message()).append(" -- From line ").append(consolemessage.lineNumber()).append(" of ").append(consolemessage.sourceId()).toString());
        if (c != null)
        {
            return c.onConsoleMessage(consolemessage);
        } else
        {
            return super.onConsoleMessage(consolemessage);
        }
    }

    public boolean onCreateWindow(WebView webview, boolean flag, boolean flag1, Message message)
    {
        if (c != null)
        {
            return c.onCreateWindow(webview, flag, flag1, message);
        } else
        {
            com.smartadserver.android.library.h.c.a(d, "onCreateWindow");
            WebView webview1 = new WebView(webview.getContext());
            webview1.setWebViewClient(new WebViewClient() {

                final c a;

                public boolean shouldOverrideUrlLoading(WebView webview2, String s)
                {
                    com.smartadserver.android.library.h.c.a(c.c(), "shouldOverrideUrlLoading from iframe interceptor");
                    a.a.a(s);
                    return true;
                }

            
            {
                a = c.this;
                super();
            }
            });
            ((android.webkit.WebView.WebViewTransport)message.obj).setWebView(webview1);
            message.sendToTarget();
            return false;
        }
    }

    public void onExceededDatabaseQuota(String s, String s1, long l, long l1, long l2, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        if (c != null)
        {
            c.onExceededDatabaseQuota(s, s1, l, l1, l2, quotaupdater);
            return;
        } else
        {
            super.onExceededDatabaseQuota(s, s1, l, l1, l2, quotaupdater);
            return;
        }
    }

    public void onGeolocationPermissionsHidePrompt()
    {
        if (c != null)
        {
            c.onGeolocationPermissionsHidePrompt();
            return;
        } else
        {
            super.onGeolocationPermissionsHidePrompt();
            return;
        }
    }

    public void onGeolocationPermissionsShowPrompt(String s, android.webkit.GeolocationPermissions.Callback callback)
    {
        if (c != null)
        {
            c.onGeolocationPermissionsShowPrompt(s, callback);
            return;
        } else
        {
            super.onGeolocationPermissionsShowPrompt(s, callback);
            return;
        }
    }

    public void onHideCustomView()
    {
        if (c != null)
        {
            c.onHideCustomView();
            return;
        } else
        {
            super.onHideCustomView();
            return;
        }
    }

    public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        if (c != null)
        {
            return c.onJsAlert(webview, s, s1, jsresult);
        } else
        {
            return super.onJsAlert(webview, s, s1, jsresult);
        }
    }

    public boolean onJsBeforeUnload(WebView webview, String s, String s1, JsResult jsresult)
    {
        if (c != null)
        {
            return c.onJsBeforeUnload(webview, s, s1, jsresult);
        } else
        {
            return super.onJsBeforeUnload(webview, s, s1, jsresult);
        }
    }

    public boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
    {
        if (c != null)
        {
            return c.onJsConfirm(webview, s, s1, jsresult);
        } else
        {
            return super.onJsConfirm(webview, s, s1, jsresult);
        }
    }

    public boolean onJsPrompt(WebView webview, String s, String s1, String s2, JsPromptResult jspromptresult)
    {
        if (c != null)
        {
            return c.onJsPrompt(webview, s, s1, s2, jspromptresult);
        } else
        {
            return super.onJsPrompt(webview, s, s1, s2, jspromptresult);
        }
    }

    public boolean onJsTimeout()
    {
        if (c != null)
        {
            return c.onJsTimeout();
        } else
        {
            return super.onJsTimeout();
        }
    }

    public void onProgressChanged(WebView webview, int i)
    {
        if (c != null)
        {
            c.onProgressChanged(webview, i);
            return;
        } else
        {
            super.onProgressChanged(webview, i);
            return;
        }
    }

    public void onReachedMaxAppCacheSize(long l, long l1, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        if (c != null)
        {
            c.onReachedMaxAppCacheSize(l, l1, quotaupdater);
            return;
        } else
        {
            super.onReachedMaxAppCacheSize(l, l1, quotaupdater);
            return;
        }
    }

    public void onReceivedIcon(WebView webview, Bitmap bitmap)
    {
        if (c != null)
        {
            c.onReceivedIcon(webview, bitmap);
            return;
        } else
        {
            super.onReceivedIcon(webview, bitmap);
            return;
        }
    }

    public void onReceivedTitle(WebView webview, String s)
    {
        if (c != null)
        {
            c.onReceivedTitle(webview, s);
            return;
        } else
        {
            super.onReceivedTitle(webview, s);
            return;
        }
    }

    public void onReceivedTouchIconUrl(WebView webview, String s, boolean flag)
    {
        if (c != null)
        {
            c.onReceivedTouchIconUrl(webview, s, flag);
            return;
        } else
        {
            super.onReceivedTouchIconUrl(webview, s, flag);
            return;
        }
    }

    public void onRequestFocus(WebView webview)
    {
        if (c != null)
        {
            c.onRequestFocus(webview);
            return;
        } else
        {
            super.onRequestFocus(webview);
            return;
        }
    }

    public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        if (c != null)
        {
            c.onShowCustomView(view, customviewcallback);
            return;
        } else
        {
            super.onShowCustomView(view, customviewcallback);
            return;
        }
    }

}
