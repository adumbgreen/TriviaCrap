// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.net.Uri;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.HtmlAdHandler;
import com.facebook.ads.internal.StringUtils;
import com.facebook.ads.internal.action.AdAction;
import com.facebook.ads.internal.action.AdActionFactory;

// Referenced classes of package com.facebook.ads:
//            InterstitialAdActivity, AdSettings

class <init> extends WebViewClient
{

    private static final String FBAD_CLOSE = "close";
    final InterstitialAdActivity this$0;

    public void onLoadResource(WebView webview, String s)
    {
        InterstitialAdActivity.access$200(InterstitialAdActivity.this).activateAd();
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        String s = AdSettings.getUrlPrefix();
        if (!StringUtils.isNullOrEmpty(s) && s.endsWith(".sb"))
        {
            sslerrorhandler.proceed();
            return;
        } else
        {
            sslerrorhandler.cancel();
            return;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Uri uri = Uri.parse(s);
        if ("fbad".equals(uri.getScheme()) && "close".equals(uri.getAuthority()))
        {
            finish();
        } else
        {
            InterstitialAdActivity.access$100(InterstitialAdActivity.this, "com.facebook.ads.interstitial.clicked");
            AdAction adaction = AdActionFactory.getAdAction(InterstitialAdActivity.this, uri);
            if (adaction != null)
            {
                try
                {
                    adaction.execute(null);
                }
                catch (Exception exception)
                {
                    Log.e(InterstitialAdActivity.access$300(), "Error executing action", exception);
                    return true;
                }
                return true;
            }
        }
        return true;
    }

    private ()
    {
        this$0 = InterstitialAdActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
