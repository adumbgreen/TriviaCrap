// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;

// Referenced classes of package com.google.android.gms.internal:
//            fx, fw, bm, bu

public final class bt
    implements MediationBannerListener, MediationInterstitialListener
{

    private final bm a;

    public bt(bm bm1)
    {
        a = bm1;
    }

    static bm a(bt bt1)
    {
        return bt1.a;
    }

    public void onClick(MediationBannerAdapter mediationbanneradapter)
    {
        fx.a("Adapter called onClick.");
        if (!fw.b())
        {
            fx.e("onClick must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).a();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdClicked.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.a();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdClicked.", remoteexception);
        }
    }

    public void onDismissScreen(MediationBannerAdapter mediationbanneradapter)
    {
        fx.a("Adapter called onDismissScreen.");
        if (!fw.b())
        {
            fx.e("onDismissScreen must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).b();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdClosed.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.b();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdClosed.", remoteexception);
        }
    }

    public void onDismissScreen(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        fx.a("Adapter called onDismissScreen.");
        if (!fw.b())
        {
            fx.e("onDismissScreen must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).b();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdClosed.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.b();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdClosed.", remoteexception);
        }
    }

    public void onFailedToReceiveAd(MediationBannerAdapter mediationbanneradapter, com.google.ads.AdRequest.ErrorCode errorcode)
    {
        fx.a((new StringBuilder()).append("Adapter called onFailedToReceiveAd with error. ").append(errorcode).toString());
        if (!fw.b())
        {
            fx.e("onFailedToReceiveAd must be called on the main UI thread.");
            fw.a.post(new Runnable(errorcode) {

                final com.google.ads.AdRequest.ErrorCode a;
                final bt b;

                public void run()
                {
                    try
                    {
                        bt.a(b).a(bu.a(a));
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdFailedToLoad.", remoteexception1);
                    }
                }

            
            {
                b = bt.this;
                a = errorcode;
                super();
            }
            });
            return;
        }
        try
        {
            a.a(bu.a(errorcode));
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onFailedToReceiveAd(MediationInterstitialAdapter mediationinterstitialadapter, com.google.ads.AdRequest.ErrorCode errorcode)
    {
        fx.a((new StringBuilder()).append("Adapter called onFailedToReceiveAd with error ").append(errorcode).append(".").toString());
        if (!fw.b())
        {
            fx.e("onFailedToReceiveAd must be called on the main UI thread.");
            fw.a.post(new Runnable(errorcode) {

                final com.google.ads.AdRequest.ErrorCode a;
                final bt b;

                public void run()
                {
                    try
                    {
                        bt.a(b).a(bu.a(a));
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdFailedToLoad.", remoteexception1);
                    }
                }

            
            {
                b = bt.this;
                a = errorcode;
                super();
            }
            });
            return;
        }
        try
        {
            a.a(bu.a(errorcode));
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onLeaveApplication(MediationBannerAdapter mediationbanneradapter)
    {
        fx.a("Adapter called onLeaveApplication.");
        if (!fw.b())
        {
            fx.e("onLeaveApplication must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).c();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdLeftApplication.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.c();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdLeftApplication.", remoteexception);
        }
    }

    public void onLeaveApplication(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        fx.a("Adapter called onLeaveApplication.");
        if (!fw.b())
        {
            fx.e("onLeaveApplication must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).c();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdLeftApplication.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.c();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdLeftApplication.", remoteexception);
        }
    }

    public void onPresentScreen(MediationBannerAdapter mediationbanneradapter)
    {
        fx.a("Adapter called onPresentScreen.");
        if (!fw.b())
        {
            fx.e("onPresentScreen must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).d();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdOpened.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.d();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdOpened.", remoteexception);
        }
    }

    public void onPresentScreen(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        fx.a("Adapter called onPresentScreen.");
        if (!fw.b())
        {
            fx.e("onPresentScreen must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).d();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdOpened.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.d();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdOpened.", remoteexception);
        }
    }

    public void onReceivedAd(MediationBannerAdapter mediationbanneradapter)
    {
        fx.a("Adapter called onReceivedAd.");
        if (!fw.b())
        {
            fx.e("onReceivedAd must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).e();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdLoaded.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.e();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdLoaded.", remoteexception);
        }
    }

    public void onReceivedAd(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        fx.a("Adapter called onReceivedAd.");
        if (!fw.b())
        {
            fx.e("onReceivedAd must be called on the main UI thread.");
            fw.a.post(new Runnable() {

                final bt a;

                public void run()
                {
                    try
                    {
                        bt.a(a).e();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        fx.c("Could not call onAdLoaded.", remoteexception1);
                    }
                }

            
            {
                a = bt.this;
                super();
            }
            });
            return;
        }
        try
        {
            a.e();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdLoaded.", remoteexception);
        }
    }
}
