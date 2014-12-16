// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import android.webkit.WebView;

// Referenced classes of package com.facebook.ads.internal:
//            AdHandler, HtmlAdDataModel, StringUtils, OpenUrlTask

public class HtmlAdHandler extends AdHandler
{

    private volatile boolean adActivated;
    private WebView webView;

    public HtmlAdHandler(WebView webview, AdHandler.ImpressionHelper impressionhelper, long l, Context context)
    {
        super(impressionhelper, l, context);
        webView = webview;
    }

    public void activateAd()
    {
        this;
        JVM INSTR monitorenter ;
        if (adActivated) goto _L2; else goto _L1
_L1:
        AdDataModel addatamodel = adDataModel;
        if (addatamodel != null) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        HtmlAdDataModel htmladdatamodel = (HtmlAdDataModel)adDataModel;
        if (webView != null && !StringUtils.isNullOrEmpty(htmladdatamodel.getActivationCommand()))
        {
            webView.loadUrl((new StringBuilder()).append("javascript:").append(htmladdatamodel.getActivationCommand()).toString());
        }
        scheduleImpressionRetry();
        adActivated = true;
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public void destroy()
    {
        this;
        JVM INSTR monitorenter ;
        webView = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void sendImpression()
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        boolean flag;
        HtmlAdDataModel htmladdatamodel = (HtmlAdDataModel)adDataModel;
        if (webView != null && !StringUtils.isNullOrEmpty(htmladdatamodel.getSendImpressionCommand()))
        {
            webView.loadUrl((new StringBuilder()).append("javascript:").append(htmladdatamodel.getSendImpressionCommand()).toString());
        }
        s = htmladdatamodel.getNativeImpressionUrl();
        flag = StringUtils.isNullOrEmpty(s);
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        (new OpenUrlTask()).execute(new String[] {
            s
        });
        if (impressionHelper != null)
        {
            impressionHelper.afterImpressionSent();
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void setAdDataModel(HtmlAdDataModel htmladdatamodel)
    {
        super.setAdDataModel(htmladdatamodel);
        adActivated = false;
    }
}
