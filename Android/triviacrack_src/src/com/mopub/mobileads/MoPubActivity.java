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
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.mobileads.factories.HtmlInterstitialWebViewFactory;

// Referenced classes of package com.mopub.mobileads:
//            j, HtmlInterstitialWebView, y, p, 
//            k, AdConfiguration, u

public class MoPubActivity extends j
{

    private HtmlInterstitialWebView a;

    public MoPubActivity()
    {
    }

    static Intent a(Context context, String s, boolean flag, String s1, String s2, AdConfiguration adconfiguration)
    {
        Intent intent = new Intent(context, com/mopub/mobileads/MoPubActivity);
        intent.putExtra("Html-Response-Body", s);
        intent.putExtra("Scrollable", flag);
        intent.putExtra("Clickthrough-Url", s2);
        intent.putExtra("Redirect-Url", s1);
        intent.putExtra("Ad-Configuration", adconfiguration);
        intent.addFlags(0x10000000);
        return intent;
    }

    static HtmlInterstitialWebView a(MoPubActivity mopubactivity)
    {
        return mopubactivity.a;
    }

    static void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, String s)
    {
        HtmlInterstitialWebView htmlinterstitialwebview = HtmlInterstitialWebViewFactory.create(context, customeventinterstitiallistener, false, null, null, null);
        htmlinterstitialwebview.b(false);
        htmlinterstitialwebview.a(new u(customeventinterstitiallistener) {

            final CustomEventInterstitial.CustomEventInterstitialListener a;

            public void onInterstitialLoaded()
            {
                a.onInterstitialLoaded();
            }

            
            {
                a = customeventinterstitiallistener;
                super();
            }
        });
        htmlinterstitialwebview.setWebViewClient(new WebViewClient(customeventinterstitiallistener) {

            final CustomEventInterstitial.CustomEventInterstitialListener a;

            public boolean shouldOverrideUrlLoading(WebView webview, String s1)
            {
                if (!s1.equals("mopub://finishLoad")) goto _L2; else goto _L1
_L1:
                a.onInterstitialLoaded();
_L4:
                return true;
_L2:
                if (s1.equals("mopub://failLoad"))
                {
                    a.onInterstitialFailed(null);
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                a = customeventinterstitiallistener;
                super();
            }
        });
        htmlinterstitialwebview.a(s);
    }

    public static void start(Context context, String s, boolean flag, String s1, String s2, AdConfiguration adconfiguration)
    {
        Intent intent = a(context, s, flag, s1, s2, adconfiguration);
        try
        {
            context.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Log.d("MoPubActivity", "MoPubActivity not found - did you declare it in AndroidManifest.xml?");
        }
    }

    public View getAdView()
    {
        Intent intent = getIntent();
        boolean flag = intent.getBooleanExtra("Scrollable", false);
        String s = intent.getStringExtra("Redirect-Url");
        String s1 = intent.getStringExtra("Clickthrough-Url");
        String s2 = intent.getStringExtra("Html-Response-Body");
        a = HtmlInterstitialWebViewFactory.create(getApplicationContext(), new y(this), flag, s, s1, d());
        a.a(s2);
        return a;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        p.a(this, a(), "com.mopub.action.interstitial.show");
    }

    protected void onDestroy()
    {
        a.loadUrl(k.WEB_VIEW_DID_CLOSE.a());
        a.destroy();
        p.a(this, a(), "com.mopub.action.interstitial.dismiss");
        super.onDestroy();
    }
}
