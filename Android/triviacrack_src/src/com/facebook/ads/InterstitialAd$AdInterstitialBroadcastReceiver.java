// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;

// Referenced classes of package com.facebook.ads:
//            InterstitialAd, InterstitialAdListener, ImpressionListener

class <init> extends BroadcastReceiver
{

    final InterstitialAd this$0;

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getStringExtra("adInterstitialUniqueId");
        if (InterstitialAd.access$400(InterstitialAd.this).equals(s))
        {
            String s1 = intent.getAction();
            if (InterstitialAd.access$200(InterstitialAd.this) != null || s1.equals("com.facebook.ads.interstitial.impression.logged"))
            {
                if ("com.facebook.ads.interstitial.clicked".equals(s1))
                {
                    InterstitialAd.access$200(InterstitialAd.this).onAdClicked(InterstitialAd.this);
                    return;
                }
                if ("com.facebook.ads.interstitial.dismissed".equals(s1))
                {
                    InterstitialAd.access$200(InterstitialAd.this).onInterstitialDismissed(InterstitialAd.this);
                    return;
                }
                if ("com.facebook.ads.interstitial.displayed".equals(s1))
                {
                    InterstitialAd.access$200(InterstitialAd.this).onInterstitialDisplayed(InterstitialAd.this);
                    return;
                }
                if ("com.facebook.ads.interstitial.impression.logged".equals(s1) && InterstitialAd.access$500(InterstitialAd.this) != null)
                {
                    InterstitialAd.access$500(InterstitialAd.this).onLoggingImpression(InterstitialAd.this);
                    return;
                }
            }
        }
    }

    public void register()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.facebook.ads.interstitial.displayed");
        intentfilter.addAction("com.facebook.ads.interstitial.dismissed");
        intentfilter.addAction("com.facebook.ads.interstitial.clicked");
        intentfilter.addAction("com.facebook.ads.interstitial.impression.logged");
        LocalBroadcastManager.getInstance(InterstitialAd.access$600(InterstitialAd.this)).registerReceiver(this, intentfilter);
    }

    public void unregister()
    {
        LocalBroadcastManager.getInstance(InterstitialAd.access$600(InterstitialAd.this)).unregisterReceiver(this);
    }

    private ()
    {
        this$0 = InterstitialAd.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
