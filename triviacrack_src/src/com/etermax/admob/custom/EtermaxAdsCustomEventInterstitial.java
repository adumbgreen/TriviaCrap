// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.webkit.WebView;
import com.etermax.a.a;
import com.etermax.adsinterface.a.c;
import com.etermax.adsinterface.a.d;
import com.etermax.adsinterface.a.e;
import com.etermax.adsinterface.a.f;
import com.etermax.adsinterface.a.h;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.custom:
//            BaseCustomEventInterstitial

public class EtermaxAdsCustomEventInterstitial extends BaseCustomEventInterstitial
    implements e
{

    private com.etermax.adsinterface.a.a adParameters;
    private d cac;
    private f customAdsLoader;
    private Bitmap imageAd;
    private Activity mActivity;
    private Handler mHandler;
    private CustomEventInterstitialListener mListener;
    private WebView webAd;

    public EtermaxAdsCustomEventInterstitial()
    {
    }

    public void destroy()
    {
        if (customAdsLoader != null)
        {
            customAdsLoader.a();
            customAdsLoader = null;
        }
        super.destroy();
    }

    public void notifyFailure()
    {
        mHandler.post(new Runnable() {

            final EtermaxAdsCustomEventInterstitial this$0;

            public void run()
            {
                com.etermax.adsinterface.f.b();
            }

            
            {
                this$0 = EtermaxAdsCustomEventInterstitial.this;
                super();
            }
        });
    }

    public void notifySuccess()
    {
        mHandler.post(new Runnable() {

            final EtermaxAdsCustomEventInterstitial this$0;

            public void run()
            {
                com.etermax.adsinterface.f.a();
            }

            
            {
                this$0 = EtermaxAdsCustomEventInterstitial.this;
                super();
            }
        });
    }

    public void onAdCanceled()
    {
        a.c("admob ads", "CustomAdsEventInterstitial - onAdCanceled");
        if (mListener != null)
        {
            mListener.onDismissScreen();
        }
    }

    public void onAdClicked()
    {
        a.c("admob ads", "CustomAdsEventInterstitial - onAdClicked");
        if (mListener != null)
        {
            cac.dismiss();
            mListener.onLeaveApplication();
        }
    }

    protected void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj)
    {
        a.c("admob ads", "Requesting Custom Ad");
        mActivity = activity;
        mListener = customeventinterstitiallistener;
        mHandler = new Handler();
        if (!(mActivity instanceof FragmentActivity))
        {
            mListener.onFailedToReceiveAd();
            a.b("admob ads", "Custom ads can only be called from a FragmentActivity!");
            return;
        } else
        {
            com.etermax.adsinterface.a.a.a(activity, jsonobject, new c() {

                final EtermaxAdsCustomEventInterstitial this$0;

                public void onAdInfoLoadedFailed(Exception exception)
                {
                    mListener.onFailedToReceiveAd();
                    a.a("admob ads", "Error loading interstitial info", exception);
                }

                public void onAdInfoLoadedOk(com.etermax.adsinterface.a.a a1)
                {
                    adParameters = a1;
                    if (adParameters.a(mActivity)) goto _L2; else goto _L1
_L1:
                    mListener.onFailedToReceiveAd();
_L4:
                    return;
_L2:
                    String s1;
                    try
                    {
                        customAdsLoader = new f((FragmentActivity)mActivity, adParameters);
                        customAdsLoader.a(new h() {

                            final _cls1 this$1;

                            public void contentLoadCompleted(Bitmap bitmap)
                            {
                                mListener.onReceivedAd();
                                a.c("admob ads", "finished loading custom image");
                                imageAd = bitmap;
                                webAd = null;
                            }

                            public void contentLoadCompleted(WebView webview)
                            {
                                mListener.onReceivedAd();
                                a.c("admob ads", "finished loading custom web content");
                                webAd = webview;
                                imageAd = null;
                            }

                            public void contentLoadFailed(Exception exception)
                            {
                                mListener.onFailedToReceiveAd();
                                a.c("admob ads", (new StringBuilder()).append("failed to load custom content: ").append(exception.getMessage()).toString());
                            }

            
            {
                this$1 = _cls1.this;
                super();
            }
                        });
                        s1 = adParameters.a();
                    }
                    catch (Exception exception)
                    {
                        mListener.onFailedToReceiveAd();
                        return;
                    }
                    if (s1 == null)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    if (!s1.equals("")) goto _L4; else goto _L3
_L3:
                }

            
            {
                this$0 = EtermaxAdsCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
    }

    public void showInterstitial()
    {
        if (mListener != null)
        {
            mListener.onPresentScreen();
        }
        if (cac != null) goto _L2; else goto _L1
_L1:
        cac = new d(mActivity, this);
        cac.show();
_L3:
        if (imageAd == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        cac.a(adParameters, imageAd);
_L4:
        adParameters.a(System.currentTimeMillis());
        notifySuccess();
        return;
_L2:
        try
        {
            cac.show();
        }
        catch (Exception exception)
        {
            notifyFailure();
            return;
        }
          goto _L3
        cac.a(adParameters, webAd);
          goto _L4
    }



/*
    static com.etermax.adsinterface.a.a access$002(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial, com.etermax.adsinterface.a.a a1)
    {
        etermaxadscustomeventinterstitial.adParameters = a1;
        return a1;
    }

*/





/*
    static f access$302(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial, f f1)
    {
        etermaxadscustomeventinterstitial.customAdsLoader = f1;
        return f1;
    }

*/


/*
    static Bitmap access$402(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial, Bitmap bitmap)
    {
        etermaxadscustomeventinterstitial.imageAd = bitmap;
        return bitmap;
    }

*/


/*
    static WebView access$502(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial, WebView webview)
    {
        etermaxadscustomeventinterstitial.webAd = webview;
        return webview;
    }

*/
}
