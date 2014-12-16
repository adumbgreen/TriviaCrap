// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.content.ActivityNotFoundException;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.SwallowRedirectTask;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDView, MRAIDViewListener, MRAIDController

final class mTwoPartCreative extends WebViewClient
{

    private final boolean mTwoPartCreative;
    final MRAIDView this$0;

    public void onPageFinished(WebView webview, String s)
    {
        LSMLogger.LOGGER.info("onPageFinished");
        super.onPageFinished(webview, s);
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        if (!mTwoPartCreative && MRAIDView.access$300(MRAIDView.this) != null)
        {
            MRAIDView.access$300(MRAIDView.this).onFailedToReceiveAd(MRAIDView.this);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        LSMLogger.LOGGER.info(s);
        if (!s.contains("lfstmedia.com")) goto _L2; else goto _L1
_L1:
        (new SwallowRedirectTask(webview, this)).execute(new String[] {
            s
        });
_L4:
        return true;
_L2:
        if (MRAIDView.access$300(MRAIDView.this) != null)
        {
            MRAIDView.access$300(MRAIDView.this).onClick(MRAIDView.this);
        }
        MRAIDView.access$400(MRAIDView.this).startActivityWithUrl(s);
        if (MRAIDView.access$300(MRAIDView.this) == null) goto _L4; else goto _L3
_L3:
        MRAIDView.access$300(MRAIDView.this).onLeaveApplication(MRAIDView.this);
        return true;
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        LSMLogger.LOGGER.log(Level.SEVERE, (new StringBuilder()).append("Activity not found for URL: ").append(s).toString(), activitynotfoundexception);
        return true;
    }

    public (boolean flag)
    {
        this$0 = MRAIDView.this;
        super();
        mTwoPartCreative = flag;
    }
}
