// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.a.d;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            bk, fx, aj, bp, 
//            br, am, bm

public final class bq extends bk
{

    private final MediationAdapter a;

    public bq(MediationAdapter mediationadapter)
    {
        a = mediationadapter;
    }

    private Bundle a(String s, int i, String s1)
    {
        Bundle bundle;
        Bundle bundle1;
        fx.e((new StringBuilder()).append("Server parameters: ").append(s).toString());
        JSONObject jsonobject;
        Iterator iterator;
        String s2;
        try
        {
            bundle = new Bundle();
        }
        catch (Throwable throwable)
        {
            fx.c("Could not get Server Parameters Bundle.", throwable);
            throw new RemoteException();
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        jsonobject = new JSONObject(s);
        bundle1 = new Bundle();
        for (iterator = jsonobject.keys(); iterator.hasNext(); bundle1.putString(s2, jsonobject.getString(s2)))
        {
            s2 = (String)iterator.next();
        }

        bundle = bundle1;
        if (a instanceof AdMobAdapter)
        {
            bundle.putString("adJson", s1);
            bundle.putInt("tagForChildDirectedTreatment", i);
        }
        return bundle;
    }

    public com.google.android.gms.a.a a()
    {
        if (!(a instanceof MediationBannerAdapter))
        {
            fx.e((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(a.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        com.google.android.gms.a.a a1;
        try
        {
            a1 = com.google.android.gms.a.d.a(((MediationBannerAdapter)a).getBannerView());
        }
        catch (Throwable throwable)
        {
            fx.c("Could not get banner view from adapter.", throwable);
            throw new RemoteException();
        }
        return a1;
    }

    public void a(com.google.android.gms.a.a a1, aj aj1, String s, bm bm)
    {
        a(a1, aj1, s, null, bm);
    }

    public void a(com.google.android.gms.a.a a1, aj aj1, String s, String s1, bm bm)
    {
        if (!(a instanceof MediationInterstitialAdapter))
        {
            fx.e((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(a.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        com.google.android.gms.internal.fx.a("Requesting interstitial ad from adapter.");
        MediationInterstitialAdapter mediationinterstitialadapter;
        HashSet hashset;
        mediationinterstitialadapter = (MediationInterstitialAdapter)a;
        if (aj1.e == null)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        hashset = new HashSet(aj1.e);
_L1:
        bp bp1;
        Bundle bundle;
        bp1 = new bp(new Date(aj1.b), aj1.d, hashset, aj1.f, aj1.g);
        bundle = aj1.m;
        Bundle bundle1;
        bundle1 = null;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        bundle1 = aj1.m.getBundle(mediationinterstitialadapter.getClass().getName());
        mediationinterstitialadapter.requestInterstitialAd((Context)com.google.android.gms.a.d.a(a1), new br(bm), a(s, aj1.g, s1), bp1, bundle1);
        return;
        hashset = null;
          goto _L1
        Throwable throwable;
        throwable;
        fx.c("Could not request interstitial ad from adapter.", throwable);
        throw new RemoteException();
    }

    public void a(com.google.android.gms.a.a a1, am am1, aj aj1, String s, bm bm)
    {
        a(a1, am1, aj1, s, null, bm);
    }

    public void a(com.google.android.gms.a.a a1, am am1, aj aj1, String s, String s1, bm bm)
    {
        if (!(a instanceof MediationBannerAdapter))
        {
            fx.e((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(a.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        com.google.android.gms.internal.fx.a("Requesting banner ad from adapter.");
        MediationBannerAdapter mediationbanneradapter;
        HashSet hashset;
        mediationbanneradapter = (MediationBannerAdapter)a;
        if (aj1.e == null)
        {
            break MISSING_BLOCK_LABEL_203;
        }
        hashset = new HashSet(aj1.e);
_L1:
        bp bp1;
        Bundle bundle;
        bp1 = new bp(new Date(aj1.b), aj1.d, hashset, aj1.f, aj1.g);
        bundle = aj1.m;
        Bundle bundle1;
        bundle1 = null;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        bundle1 = aj1.m.getBundle(mediationbanneradapter.getClass().getName());
        mediationbanneradapter.requestBannerAd((Context)com.google.android.gms.a.d.a(a1), new br(bm), a(s, aj1.g, s1), com.google.android.gms.ads.a.a(am1.f, am1.c, am1.b), bp1, bundle1);
        return;
        hashset = null;
          goto _L1
        Throwable throwable;
        throwable;
        fx.c("Could not request banner ad from adapter.", throwable);
        throw new RemoteException();
    }

    public void b()
    {
        if (!(a instanceof MediationInterstitialAdapter))
        {
            fx.e((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(a.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        com.google.android.gms.internal.fx.a("Showing interstitial from adapter.");
        try
        {
            ((MediationInterstitialAdapter)a).showInterstitial();
            return;
        }
        catch (Throwable throwable)
        {
            fx.c("Could not show interstitial from adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void c()
    {
        try
        {
            a.onDestroy();
            return;
        }
        catch (Throwable throwable)
        {
            fx.c("Could not destroy adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void d()
    {
        try
        {
            a.onPause();
            return;
        }
        catch (Throwable throwable)
        {
            fx.c("Could not pause adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void e()
    {
        try
        {
            a.onResume();
            return;
        }
        catch (Throwable throwable)
        {
            fx.c("Could not resume adapter.", throwable);
        }
        throw new RemoteException();
    }
}
