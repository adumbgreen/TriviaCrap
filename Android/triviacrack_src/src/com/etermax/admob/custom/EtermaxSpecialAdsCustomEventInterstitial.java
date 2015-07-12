// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.TextView;
import com.etermax.adsinterface.a.a;
import com.etermax.adsinterface.a.c;
import com.etermax.adsinterface.a.d;
import com.etermax.adsinterface.a.e;
import com.etermax.adsinterface.a.f;
import com.etermax.adsinterface.a.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.custom:
//            BaseCustomEventInterstitial

public class EtermaxSpecialAdsCustomEventInterstitial extends BaseCustomEventInterstitial
    implements e
{

    private a adParameters;
    private d cac;
    private f customAdsLoader;
    private View loadingView;
    private Activity mActivity;
    private Handler mHandler;
    private CustomEventInterstitialListener mListener;

    public EtermaxSpecialAdsCustomEventInterstitial()
    {
    }

    private void hideLoadingDialog()
    {
        if (loadingView != null)
        {
            android.view.ViewParent viewparent = loadingView.getParent();
            if (viewparent != null && (viewparent instanceof ViewGroup))
            {
                ((ViewGroup)viewparent).removeView(loadingView);
            }
        }
    }

    private void showInterstitialAfterLoad(Object obj)
    {
        if (mListener != null)
        {
            mListener.onPresentScreen();
        }
        if (cac != null) goto _L2; else goto _L1
_L1:
        cac = new d(mActivity, this);
        cac.show();
_L5:
        if (!(obj instanceof Bitmap)) goto _L4; else goto _L3
_L3:
        cac.a(adParameters, (Bitmap)obj);
_L7:
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
          goto _L5
_L4:
        if (!(obj instanceof WebView)) goto _L7; else goto _L6
_L6:
        cac.a(adParameters, (WebView)obj);
          goto _L7
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

            final EtermaxSpecialAdsCustomEventInterstitial this$0;

            public void run()
            {
                com.etermax.adsinterface.f.b();
            }

            
            {
                this$0 = EtermaxSpecialAdsCustomEventInterstitial.this;
                super();
            }
        });
    }

    public void notifySuccess()
    {
        mHandler.post(new Runnable() {

            final EtermaxSpecialAdsCustomEventInterstitial this$0;

            public void run()
            {
                com.etermax.adsinterface.f.a();
            }

            
            {
                this$0 = EtermaxSpecialAdsCustomEventInterstitial.this;
                super();
            }
        });
    }

    public void onAdCanceled()
    {
        com.etermax.a.a.c("admob ads", "CustomAdsEventInterstitial - onAdCanceled");
        if (mListener != null)
        {
            mListener.onDismissScreen();
        }
    }

    public void onAdClicked()
    {
        com.etermax.a.a.c("admob ads", "CustomAdsEventInterstitial - onAdClicked");
        if (mListener != null)
        {
            cac.dismiss();
            mListener.onLeaveApplication();
        }
    }

    protected void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj)
    {
        com.etermax.a.a.c("admob ads", "Requesting Custom Ad");
        mActivity = activity;
        mListener = customeventinterstitiallistener;
        mHandler = new Handler();
        if (!(mActivity instanceof FragmentActivity))
        {
            mListener.onFailedToReceiveAd();
            com.etermax.a.a.b("admob ads", "Custom ads can only be called from a FragmentActivity!");
            return;
        }
        if (loadingView == null)
        {
            loadingView = activity.getLayoutInflater().inflate(k.interstitial_loading, null);
            ((TextView)loadingView.findViewById(i.interstitial_loading_text)).setText(activity.getResources().getString(o.loading));
        }
        a.a(activity, jsonobject, new c() {

            final EtermaxSpecialAdsCustomEventInterstitial this$0;

            public void onAdInfoLoadedFailed(Exception exception)
            {
                mListener.onFailedToReceiveAd();
                com.etermax.a.a.a("admob ads", "Error loading interstitial info", exception);
                hideLoadingDialog();
            }

            public void onAdInfoLoadedOk(a a1)
            {
                adParameters = a1;
                if (adParameters.a(mActivity)) goto _L2; else goto _L1
_L1:
                mListener.onFailedToReceiveAd();
_L4:
                return;
_L2:
                mListener.onReceivedAd();
                String s1;
                try
                {
                    customAdsLoader = new f((FragmentActivity)mActivity, adParameters);
                    customAdsLoader.a(new h() {

                        final _cls1 this$1;

                        public void contentLoadCompleted(Bitmap bitmap)
                        {
                            com.etermax.a.a.c("admob ads", "finished loading custom image");
                            hideLoadingDialog();
                            showInterstitialAfterLoad(bitmap);
                        }

                        public void contentLoadCompleted(WebView webview)
                        {
                            com.etermax.a.a.c("admob ads", "finished loading custom web content");
                            hideLoadingDialog();
                            showInterstitialAfterLoad(webview);
                        }

                        public void contentLoadFailed(Exception exception)
                        {
                            com.etermax.a.a.c("admob ads", (new StringBuilder()).append("failed to load custom content: ").append(exception.getMessage()).toString());
                            hideLoadingDialog();
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
                this$0 = EtermaxSpecialAdsCustomEventInterstitial.this;
                super();
            }
        });
    }

    public void showInterstitial()
    {
        if (loadingView != null && loadingView.getParent() == null)
        {
            android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-1, -1);
            ((FragmentActivity)mActivity).getWindow().addContentView(loadingView, layoutparams);
        }
    }



/*
    static a access$002(EtermaxSpecialAdsCustomEventInterstitial etermaxspecialadscustomeventinterstitial, a a1)
    {
        etermaxspecialadscustomeventinterstitial.adParameters = a1;
        return a1;
    }

*/





/*
    static f access$302(EtermaxSpecialAdsCustomEventInterstitial etermaxspecialadscustomeventinterstitial, f f1)
    {
        etermaxspecialadscustomeventinterstitial.customAdsLoader = f1;
        return f1;
    }

*/


}
