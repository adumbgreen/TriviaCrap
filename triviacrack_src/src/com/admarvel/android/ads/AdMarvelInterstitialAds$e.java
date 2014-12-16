// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.Handler;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInterstitialAdapterListener, AdMarvelAd, AdMarvelInterstitialAds, i, 
//            ac

class a
    implements AdMarvelInterstitialAdapterListener
{

    private final WeakReference a;
    private WeakReference b;
    private AdMarvelAd c;

    public void a(AdMarvelAd admarvelad)
    {
        c = admarvelad;
        b = new WeakReference(admarvelad);
    }

    public void onClickInterstitialAd(String s)
    {
        AdMarvelAd admarvelad = (AdMarvelAd)b.get();
        AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)a.get();
        if (admarvelinterstitialads != null && admarvelinterstitialads.contextReference != null && admarvelinterstitialads.contextReference.get() != null && admarvelad != null)
        {
            Context context = (Context)admarvelinterstitialads.contextReference.get();
            if (context != null && AdMarvelInterstitialAds.access$200() != null)
            {
                AdMarvelInterstitialAds.access$200().a(context, s, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            }
        }
    }

    public void onCloseInterstitialAd()
    {
        if (AdMarvelInterstitialAds.access$200() != null)
        {
            AdMarvelInterstitialAds.access$200().b();
        }
    }

    public void onFailedToReceiveInterstitialAd( , String s, int j,  1, AdMarvelAd admarvelad)
    {
        AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)a.get();
        if (admarvelinterstitialads != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag1;
        int i1;
        String s2;
        boolean flag = admarvelad.getRetry().equals(Boolean.valueOf(true));
        flag1 = false;
        if (flag)
        {
            int k = admarvelad.getRetrynum();
            int l = admarvelad.getMaxretries();
            flag1 = false;
            if (k <= l)
            {
                i1 = 1 + admarvelad.getRetrynum();
                String s1 = admarvelad.getExcluded();
                Context context;
                if (admarvelad.getExcluded() == null)
                {
                    s2 = admarvelad.getBannerid();
                } else
                if (admarvelad.getExcluded().length() > 0)
                {
                    s2 = (new StringBuilder()).append(s1).append(",").append(admarvelad.getBannerid()).toString();
                } else
                {
                    s2 = admarvelad.getBannerid();
                }
                if (admarvelinterstitialads.contextReference == null || (Context)admarvelinterstitialads.contextReference.get() == null)
                {
                    break MISSING_BLOCK_LABEL_389;
                }
                if (ac.a() < 11)
                {
                    break; /* Loop/switch isn't completed */
                }
                AdMarvelInterstitialAds.access$100(admarvelinterstitialads).post(new <init>(admarvelad.getTargetParams(), admarvelad.getPartnerId(), admarvelad.getSiteId(), admarvelad.getAndroidId(), admarvelad.getOrientation(), admarvelad.getDeviceConnectivity(), admarvelinterstitialads, i1, s2, (Context)admarvelinterstitialads.contextReference.get(), AdMarvelInterstitialAds.access$100(admarvelinterstitialads)));
                flag1 = true;
            }
        }
_L4:
        if (!flag1 && admarvelinterstitialads.contextReference != null)
        {
            context = (Context)admarvelinterstitialads.contextReference.get();
            if (context != null && AdMarvelInterstitialAds.access$200() != null)
            {
                AdMarvelInterstitialAds.access$200().a(context, , s, j, 1, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        AdMarvelInterstitialAds.access$100(admarvelinterstitialads).post(new <init>(admarvelad.getTargetParams(), admarvelad.getPartnerId(), admarvelad.getSiteId(), admarvelad.getAndroidId(), admarvelad.getOrientation(), admarvelad.getDeviceConnectivity(), admarvelinterstitialads, i1, s2, (Context)admarvelinterstitialads.contextReference.get(), AdMarvelInterstitialAds.access$100(admarvelinterstitialads)));
        flag1 = true;
          goto _L4
    }

    public void onReceiveInterstitialAd( , String s, AdMarvelAd admarvelad)
    {
        AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)a.get();
        if (admarvelinterstitialads != null && admarvelinterstitialads.contextReference != null && admarvelinterstitialads.contextReference.get() != null)
        {
            Context context = (Context)admarvelinterstitialads.contextReference.get();
            if (context != null && AdMarvelInterstitialAds.access$200() != null)
            {
                AdMarvelInterstitialAds.access$200().a(context, , s, admarvelad, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            }
        }
    }

    public void onRequestInterstitialAd()
    {
        if (AdMarvelInterstitialAds.access$200() != null)
        {
            AdMarvelInterstitialAds.access$200().a();
        }
    }

    public (AdMarvelInterstitialAds admarvelinterstitialads)
    {
        a = new WeakReference(admarvelinterstitialads);
    }
}
