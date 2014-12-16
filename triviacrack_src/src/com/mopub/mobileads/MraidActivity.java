// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.util.VersionCode;
import com.mopub.mobileads.factories.MraidViewFactory;
import com.mopub.mobileads.util.WebViews;

// Referenced classes of package com.mopub.mobileads:
//            j, MraidView, p, AdConfiguration, 
//            k

public class MraidActivity extends j
{

    private MraidView a;

    public MraidActivity()
    {
    }

    private static Intent a(Context context, String s, AdConfiguration adconfiguration)
    {
        Intent intent = new Intent(context, com/mopub/mobileads/MraidActivity);
        intent.putExtra("Html-Response-Body", s);
        intent.putExtra("Ad-Configuration", adconfiguration);
        intent.addFlags(0x10000000);
        return intent;
    }

    static MraidView a(MraidActivity mraidactivity)
    {
        return mraidactivity.a;
    }

    static void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, String s)
    {
        MraidView mraidview = MraidViewFactory.create(context, null, MraidView.ExpansionStyle.DISABLED, MraidView.NativeCloseButtonStyle.ALWAYS_VISIBLE, MraidView.PlacementType.INTERSTITIAL);
        mraidview.b(false);
        mraidview.setMraidListener(new MraidView.MraidListener(customeventinterstitiallistener) {

            final CustomEventInterstitial.CustomEventInterstitialListener a;

            public void onClose(MraidView mraidview1, MraidView.ViewState viewstate)
            {
            }

            public void onExpand(MraidView mraidview1)
            {
            }

            public void onFailure(MraidView mraidview1)
            {
                a.onInterstitialFailed(null);
            }

            public void onOpen(MraidView mraidview1)
            {
            }

            public void onReady(MraidView mraidview1)
            {
                a.onInterstitialLoaded();
            }

            
            {
                a = customeventinterstitiallistener;
                super();
            }
        });
        mraidview.setWebViewClient(new WebViewClient(customeventinterstitiallistener) {

            final CustomEventInterstitial.CustomEventInterstitialListener a;

            public void onPageFinished(WebView webview, String s1)
            {
                a.onInterstitialLoaded();
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s1)
            {
                return true;
            }

            
            {
                a = customeventinterstitiallistener;
                super();
            }
        });
        mraidview.loadHtmlData(s);
    }

    public static void start(Context context, String s, AdConfiguration adconfiguration)
    {
        Intent intent = a(context, s, adconfiguration);
        try
        {
            context.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Log.d("MraidInterstitial", "MraidActivity.class not found. Did you declare MraidActivity in your manifest?");
        }
    }

    public View getAdView()
    {
        a = MraidViewFactory.create(this, d(), MraidView.ExpansionStyle.DISABLED, MraidView.NativeCloseButtonStyle.AD_CONTROLLED, MraidView.PlacementType.INTERSTITIAL);
        a.setMraidListener(new MraidView.BaseMraidListener() {

            final MraidActivity a;

            public void onClose(MraidView mraidview, MraidView.ViewState viewstate)
            {
                MraidActivity.a(a).loadUrl(k.WEB_VIEW_DID_CLOSE.a());
                a.finish();
            }

            public void onOpen(MraidView mraidview)
            {
                p.a(a, a.a(), "com.mopub.action.interstitial.click");
            }

            public void onReady(MraidView mraidview)
            {
                MraidActivity.a(a).loadUrl(k.WEB_VIEW_DID_APPEAR.a());
                a.b();
            }

            
            {
                a = MraidActivity.this;
                super();
            }
        });
        a.setOnCloseButtonStateChange(new MraidView.OnCloseButtonStateChangeListener() {

            final MraidActivity a;

            public void onCloseButtonStateChange(MraidView mraidview, boolean flag)
            {
                if (flag)
                {
                    a.b();
                    return;
                } else
                {
                    a.c();
                    return;
                }
            }

            
            {
                a = MraidActivity.this;
                super();
            }
        });
        String s = getIntent().getStringExtra("Html-Response-Body");
        a.loadHtmlData(s);
        return a;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        p.a(this, a(), "com.mopub.action.interstitial.show");
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH))
        {
            getWindow().setFlags(0x1000000, 0x1000000);
        }
        e();
    }

    protected void onDestroy()
    {
        a.destroy();
        p.a(this, a(), "com.mopub.action.interstitial.dismiss");
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        WebViews.onPause(a);
    }

    protected void onResume()
    {
        super.onResume();
        WebViews.onResume(a);
    }
}
