// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.a.a;
import com.google.android.gms.a.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            bk, fx, bt, aj, 
//            bu, bm, am

public final class bs extends bk
{

    private final MediationAdapter a;
    private final NetworkExtras b;

    public bs(MediationAdapter mediationadapter, NetworkExtras networkextras)
    {
        a = mediationadapter;
        b = networkextras;
    }

    private MediationServerParameters a(String s, int i, String s1)
    {
        HashMap hashmap;
        if (s != null)
        {
            try
            {
                JSONObject jsonobject = new JSONObject(s);
                hashmap = new HashMap(jsonobject.length());
                String s2;
                for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashmap.put(s2, jsonobject.getString(s2)))
                {
                    s2 = (String)iterator.next();
                }

            }
            catch (Throwable throwable)
            {
                fx.c("Could not get MediationServerParameters.", throwable);
                throw new RemoteException();
            }
            break MISSING_BLOCK_LABEL_104;
        }
        hashmap = new HashMap(0);
        Class class1 = a.getServerParametersType();
        MediationServerParameters mediationserverparameters;
        mediationserverparameters = null;
        if (class1 == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        mediationserverparameters = (MediationServerParameters)class1.newInstance();
        mediationserverparameters.load(hashmap);
        return mediationserverparameters;
    }

    public a a()
    {
        if (!(a instanceof MediationBannerAdapter))
        {
            fx.e((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(a.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        a a1;
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

    public void a(a a1, aj aj1, String s, bm bm)
    {
        a(a1, aj1, s, null, bm);
    }

    public void a(a a1, aj aj1, String s, String s1, bm bm)
    {
        if (!(a instanceof MediationInterstitialAdapter))
        {
            fx.e((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(a.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        com.google.android.gms.internal.fx.a("Requesting interstitial ad from adapter.");
        try
        {
            ((MediationInterstitialAdapter)a).requestInterstitialAd(new bt(bm), (Activity)com.google.android.gms.a.d.a(a1), a(s, aj1.g, s1), com.google.android.gms.internal.bu.a(aj1), b);
            return;
        }
        catch (Throwable throwable)
        {
            fx.c("Could not request interstitial ad from adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void a(a a1, am am, aj aj1, String s, bm bm)
    {
        a(a1, am, aj1, s, null, bm);
    }

    public void a(a a1, am am, aj aj1, String s, String s1, bm bm)
    {
        if (!(a instanceof MediationBannerAdapter))
        {
            fx.e((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(a.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        com.google.android.gms.internal.fx.a("Requesting banner ad from adapter.");
        try
        {
            ((MediationBannerAdapter)a).requestBannerAd(new bt(bm), (Activity)com.google.android.gms.a.d.a(a1), a(s, aj1.g, s1), com.google.android.gms.internal.bu.a(am), com.google.android.gms.internal.bu.a(aj1), b);
            return;
        }
        catch (Throwable throwable)
        {
            fx.c("Could not request banner ad from adapter.", throwable);
        }
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
            a.destroy();
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
        throw new RemoteException();
    }

    public void e()
    {
        throw new RemoteException();
    }
}
