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
import com.facebook.ads.internal.HtmlAdDataModel;
import com.facebook.ads.internal.HtmlAdHandler;
import com.facebook.ads.internal.StringUtils;
import com.facebook.ads.internal.action.AdAction;
import com.facebook.ads.internal.action.AdActionFactory;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.facebook.ads:
//            AdView, AdSettings, AdListener

class <init> extends WebViewClient
{

    final AdView this$0;

    public void onLoadResource(WebView webview, String s)
    {
        AdView.access$500(AdView.this).activateAd();
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
        if (AdView.access$600(AdView.this) != null)
        {
            AdView.access$600(AdView.this).onAdClicked(AdView.this);
        }
        Uri uri = Uri.parse(s);
        AdAction adaction = AdActionFactory.getAdAction(getContext(), uri);
        Map map = ((HtmlAdDataModel)AdView.access$500(AdView.this).getAdDataModel()).getDataModelMap();
        map.put("adInterstitialUniqueId", UUID.randomUUID().toString());
        if (adaction != null)
        {
            try
            {
                adaction.execute(map);
            }
            catch (Exception exception)
            {
                Log.e(AdView.access$900(), "Error executing action", exception);
            }
        }
        return true;
    }

    private n()
    {
        this$0 = AdView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
