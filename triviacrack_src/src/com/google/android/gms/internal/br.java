// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

// Referenced classes of package com.google.android.gms.internal:
//            ib, fx, bm

public final class br
    implements MediationBannerListener, MediationInterstitialListener
{

    private final bm a;

    public br(bm bm1)
    {
        a = bm1;
    }

    public void onAdClicked(MediationBannerAdapter mediationbanneradapter)
    {
        ib.a("onAdClicked must be called on the main UI thread.");
        fx.a("Adapter called onAdClicked.");
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

    public void onAdClicked(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ib.a("onAdClicked must be called on the main UI thread.");
        fx.a("Adapter called onAdClicked.");
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

    public void onAdClosed(MediationBannerAdapter mediationbanneradapter)
    {
        ib.a("onAdClosed must be called on the main UI thread.");
        fx.a("Adapter called onAdClosed.");
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

    public void onAdClosed(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ib.a("onAdClosed must be called on the main UI thread.");
        fx.a("Adapter called onAdClosed.");
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

    public void onAdFailedToLoad(MediationBannerAdapter mediationbanneradapter, int i)
    {
        ib.a("onAdFailedToLoad must be called on the main UI thread.");
        fx.a((new StringBuilder()).append("Adapter called onAdFailedToLoad with error. ").append(i).toString());
        try
        {
            a.a(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onAdFailedToLoad(MediationInterstitialAdapter mediationinterstitialadapter, int i)
    {
        ib.a("onAdFailedToLoad must be called on the main UI thread.");
        fx.a((new StringBuilder()).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try
        {
            a.a(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onAdLeftApplication(MediationBannerAdapter mediationbanneradapter)
    {
        ib.a("onAdLeftApplication must be called on the main UI thread.");
        fx.a("Adapter called onAdLeftApplication.");
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

    public void onAdLeftApplication(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ib.a("onAdLeftApplication must be called on the main UI thread.");
        fx.a("Adapter called onAdLeftApplication.");
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

    public void onAdLoaded(MediationBannerAdapter mediationbanneradapter)
    {
        ib.a("onAdLoaded must be called on the main UI thread.");
        fx.a("Adapter called onAdLoaded.");
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

    public void onAdLoaded(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ib.a("onAdLoaded must be called on the main UI thread.");
        fx.a("Adapter called onAdLoaded.");
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

    public void onAdOpened(MediationBannerAdapter mediationbanneradapter)
    {
        ib.a("onAdOpened must be called on the main UI thread.");
        fx.a("Adapter called onAdOpened.");
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

    public void onAdOpened(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ib.a("onAdOpened must be called on the main UI thread.");
        fx.a("Adapter called onAdOpened.");
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
}
