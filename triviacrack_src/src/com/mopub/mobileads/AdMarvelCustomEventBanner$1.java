// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            AdMarvelCustomEventBanner

class on
{

    static final int a[];

    static 
    {
        a = new int[com.admarvel.android.ads.lues().length];
        try
        {
            a[com.admarvel.android.ads._REQUEST_SDK_TYPE_UNSUPPORTED.dinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[com.admarvel.android.ads._NETWORK_CONNECTIVITY.dinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[com.admarvel.android.ads.TWORK_CONNECTIVITY_DISRUPTED.dinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[com.admarvel.android.ads._BANNER_FOUND.dinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[com.admarvel.android.ads._AD_FOUND.dinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[com.admarvel.android.ads._UNIT_NOT_ABLE_TO_RENDER.dinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[com.admarvel.android.ads.TE_ID_OR_PARTNER_ID_NOT_PRESENT.dinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            a[com.admarvel.android.ads.TE_ID_AND_PARTNER_ID_DO_NOT_MATCH.dinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            a[com.admarvel.android.ads.TE_ID_NOT_PRESENT.dinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            a[com.admarvel.android.ads.RTNER_ID_NOT_PRESENT.dinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror9)
        {
            return;
        }
    }
}
