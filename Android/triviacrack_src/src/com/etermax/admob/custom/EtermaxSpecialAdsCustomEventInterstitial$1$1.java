// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;

import android.graphics.Bitmap;
import android.support.v4.app.FragmentActivity;
import android.webkit.WebView;
import com.etermax.a.a;
import com.etermax.adsinterface.a.c;
import com.etermax.adsinterface.a.f;
import com.etermax.adsinterface.a.h;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;

// Referenced classes of package com.etermax.admob.custom:
//            EtermaxSpecialAdsCustomEventInterstitial

class this._cls1
    implements h
{

    final is._cls0 this$1;

    public void contentLoadCompleted(Bitmap bitmap)
    {
        a.c("admob ads", "finished loading custom image");
        EtermaxSpecialAdsCustomEventInterstitial.access$400(_fld0);
        EtermaxSpecialAdsCustomEventInterstitial.access$500(_fld0, bitmap);
    }

    public void contentLoadCompleted(WebView webview)
    {
        a.c("admob ads", "finished loading custom web content");
        EtermaxSpecialAdsCustomEventInterstitial.access$400(_fld0);
        EtermaxSpecialAdsCustomEventInterstitial.access$500(_fld0, webview);
    }

    public void contentLoadFailed(Exception exception)
    {
        a.c("admob ads", (new StringBuilder()).append("failed to load custom content: ").append(exception.getMessage()).toString());
        EtermaxSpecialAdsCustomEventInterstitial.access$400(_fld0);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1

/* anonymous class */
    class EtermaxSpecialAdsCustomEventInterstitial._cls1
        implements c
    {

        final EtermaxSpecialAdsCustomEventInterstitial this$0;

        public void onAdInfoLoadedFailed(Exception exception)
        {
            EtermaxSpecialAdsCustomEventInterstitial.access$200(EtermaxSpecialAdsCustomEventInterstitial.this).onFailedToReceiveAd();
            a.a("admob ads", "Error loading interstitial info", exception);
            EtermaxSpecialAdsCustomEventInterstitial.access$400(EtermaxSpecialAdsCustomEventInterstitial.this);
        }

        public void onAdInfoLoadedOk(com.etermax.adsinterface.a.a a1)
        {
            EtermaxSpecialAdsCustomEventInterstitial.access$002(EtermaxSpecialAdsCustomEventInterstitial.this, a1);
            if (EtermaxSpecialAdsCustomEventInterstitial.access$000(EtermaxSpecialAdsCustomEventInterstitial.this).a(EtermaxSpecialAdsCustomEventInterstitial.access$100(EtermaxSpecialAdsCustomEventInterstitial.this))) goto _L2; else goto _L1
_L1:
            EtermaxSpecialAdsCustomEventInterstitial.access$200(EtermaxSpecialAdsCustomEventInterstitial.this).onFailedToReceiveAd();
_L4:
            return;
_L2:
            EtermaxSpecialAdsCustomEventInterstitial.access$200(EtermaxSpecialAdsCustomEventInterstitial.this).onReceivedAd();
            String s;
            try
            {
                EtermaxSpecialAdsCustomEventInterstitial.access$302(EtermaxSpecialAdsCustomEventInterstitial.this, new f((FragmentActivity)EtermaxSpecialAdsCustomEventInterstitial.access$100(EtermaxSpecialAdsCustomEventInterstitial.this), EtermaxSpecialAdsCustomEventInterstitial.access$000(EtermaxSpecialAdsCustomEventInterstitial.this)));
                EtermaxSpecialAdsCustomEventInterstitial.access$300(EtermaxSpecialAdsCustomEventInterstitial.this).a(new EtermaxSpecialAdsCustomEventInterstitial._cls1._cls1());
                s = EtermaxSpecialAdsCustomEventInterstitial.access$000(EtermaxSpecialAdsCustomEventInterstitial.this).a();
            }
            catch (Exception exception)
            {
                EtermaxSpecialAdsCustomEventInterstitial.access$200(EtermaxSpecialAdsCustomEventInterstitial.this).onFailedToReceiveAd();
                return;
            }
            if (s == null)
            {
                break; /* Loop/switch isn't completed */
            }
            if (!s.equals("")) goto _L4; else goto _L3
_L3:
        }

            
            {
                this$0 = EtermaxSpecialAdsCustomEventInterstitial.this;
                super();
            }
    }

}
