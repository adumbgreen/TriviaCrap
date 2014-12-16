// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mopub.common.util.VersionCode;
import com.mopub.common.util.Views;
import com.mopub.mobileads.util.WebViews;

public class BaseWebView extends WebView
{

    protected boolean a;

    public BaseWebView(Context context)
    {
        super(context.getApplicationContext());
        b(false);
        WebViews.setDisableJSChromeClient(this);
    }

    protected void b(boolean flag)
    {
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.JELLY_BEAN_MR2))
        {
            return;
        }
        if (flag)
        {
            getSettings().setPluginState(android.webkit.WebSettings.PluginState.ON);
            return;
        } else
        {
            getSettings().setPluginState(android.webkit.WebSettings.PluginState.OFF);
            return;
        }
    }

    public void destroy()
    {
        a = true;
        Views.removeFromParent(this);
        super.destroy();
    }

    void setIsDestroyed(boolean flag)
    {
        a = flag;
    }
}
