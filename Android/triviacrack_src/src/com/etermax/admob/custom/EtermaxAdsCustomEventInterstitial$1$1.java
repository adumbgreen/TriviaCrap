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
//            EtermaxAdsCustomEventInterstitial

class this._cls1
    implements h
{

    final tener.onFailedToReceiveAd this$1;

    public void contentLoadCompleted(Bitmap bitmap)
    {
        EtermaxAdsCustomEventInterstitial.access$200(_fld0).onReceivedAd();
        a.c("admob ads", "finished loading custom image");
        EtermaxAdsCustomEventInterstitial.access$402(_fld0, bitmap);
        EtermaxAdsCustomEventInterstitial.access$502(_fld0, null);
    }

    public void contentLoadCompleted(WebView webview)
    {
        EtermaxAdsCustomEventInterstitial.access$200(_fld0).onReceivedAd();
        a.c("admob ads", "finished loading custom web content");
        EtermaxAdsCustomEventInterstitial.access$502(_fld0, webview);
        EtermaxAdsCustomEventInterstitial.access$402(_fld0, null);
    }

    public void contentLoadFailed(Exception exception)
    {
        EtermaxAdsCustomEventInterstitial.access$200(_fld0).onFailedToReceiveAd();
        a.c("admob ads", (new StringBuilder()).append("failed to load custom content: ").append(exception.getMessage()).toString());
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1

/* anonymous class */
    class EtermaxAdsCustomEventInterstitial._cls1
        implements c
    {

        final EtermaxAdsCustomEventInterstitial this$0;

        public void onAdInfoLoadedFailed(Exception exception)
        {
            EtermaxAdsCustomEventInterstitial.access$200(EtermaxAdsCustomEventInterstitial.this).onFailedToReceiveAd();
            a.a("admob ads", "Error loading interstitial info", exception);
        }

        public void onAdInfoLoadedOk(com.etermax.adsinterface.a.a a1)
        {
            EtermaxAdsCustomEventInterstitial.access$002(EtermaxAdsCustomEventInterstitial.this, a1);
            if (EtermaxAdsCustomEventInterstitial.access$000(EtermaxAdsCustomEventInterstitial.this).a(EtermaxAdsCustomEventInterstitial.access$100(EtermaxAdsCustomEventInterstitial.this))) goto _L2; else goto _L1
_L1:
            EtermaxAdsCustomEventInterstitial.access$200(EtermaxAdsCustomEventInterstitial.this).onFailedToReceiveAd();
_L4:
            return;
_L2:
            String s;
            try
            {
                EtermaxAdsCustomEventInterstitial.access$302(EtermaxAdsCustomEventInterstitial.this, new f((FragmentActivity)EtermaxAdsCustomEventInterstitial.access$100(EtermaxAdsCustomEventInterstitial.this), EtermaxAdsCustomEventInterstitial.access$000(EtermaxAdsCustomEventInterstitial.this)));
                EtermaxAdsCustomEventInterstitial.access$300(EtermaxAdsCustomEventInterstitial.this).a(new EtermaxAdsCustomEventInterstitial._cls1._cls1());
                s = EtermaxAdsCustomEventInterstitial.access$000(EtermaxAdsCustomEventInterstitial.this).a();
            }
            catch (Exception exception)
            {
                EtermaxAdsCustomEventInterstitial.access$200(EtermaxAdsCustomEventInterstitial.this).onFailedToReceiveAd();
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
                this$0 = EtermaxAdsCustomEventInterstitial.this;
                super();
            }
    }

}
