// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.ads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.StringUtils;
import com.lifestreet.android.lsmsdk.commons.SwallowRedirectTask;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.ads:
//            AdWebView, AdView, AdListener

final class <init> extends WebViewClient
{

    final AdWebView this$0;

    public void onPageFinished(WebView webview, String s)
    {
        AdListener adlistener;
        if (AdWebView.access$100(AdWebView.this) != null)
        {
            adlistener = AdWebView.access$100(AdWebView.this).getListener();
        } else
        {
            adlistener = null;
        }
        if (adlistener != null)
        {
            adlistener.onReceiveAd(AdWebView.access$100(AdWebView.this));
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        AdListener adlistener;
        if (AdWebView.access$100(AdWebView.this) != null)
        {
            adlistener = AdWebView.access$100(AdWebView.this).getListener();
        } else
        {
            adlistener = null;
        }
        if (adlistener != null)
        {
            adlistener.onFailedToReceiveAd(AdWebView.access$100(AdWebView.this), (new StringBuilder()).append(s).append(": ").append(s1).toString());
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        LSMLogger.LOGGER.fine((new StringBuilder()).append("URL: ").append(s).toString());
        AdListener adlistener;
        if (AdWebView.access$100(AdWebView.this) != null)
        {
            adlistener = AdWebView.access$100(AdWebView.this).getListener();
        } else
        {
            adlistener = null;
        }
        if (s != null && !"about:blank".equalsIgnoreCase(s))
        {
            boolean flag;
            boolean flag1;
            if (StringUtils.containsIgnoreCase(s, "lsm:closeInterstitialAd") || StringUtils.containsIgnoreCase(s, "lsm://#close"))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (StringUtils.containsIgnoreCase(s, "lfstmedia.com") && !StringUtils.containsIgnoreCase(s, "TESTLP.html"))
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag1)
            {
                AdWebView.access$202(AdWebView.this, true);
                (new SwallowRedirectTask(webview, this, AdWebView.access$300(AdWebView.this))).execute(new String[] {
                    s
                });
            } else
            {
                if (flag && adlistener != null)
                {
                    if (AdWebView.access$200(AdWebView.this) && !AdWebView.access$300(AdWebView.this))
                    {
                        AdWebView.access$202(AdWebView.this, false);
                        AdWebView.access$302(AdWebView.this, true);
                        return true;
                    } else
                    {
                        adlistener.onClose();
                        return true;
                    }
                }
                if (adlistener != null)
                {
                    AdWebView.access$202(AdWebView.this, false);
                    adlistener.onClick();
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                    intent.addFlags(0x10000000);
                    try
                    {
                        adlistener.onPresentScreen(AdWebView.access$100(AdWebView.this));
                        getContext().startActivity(intent);
                        AdWebView.access$402(AdWebView.this, true);
                        adlistener.onLeaveApplication(AdWebView.access$100(AdWebView.this));
                    }
                    catch (ActivityNotFoundException activitynotfoundexception)
                    {
                        LSMLogger.LOGGER.log(Level.SEVERE, (new StringBuilder()).append("Activity not found for URL: ").append(s).toString(), activitynotfoundexception);
                        return true;
                    }
                    return true;
                }
            }
        }
        return true;
    }

    private ()
    {
        this$0 = AdWebView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
