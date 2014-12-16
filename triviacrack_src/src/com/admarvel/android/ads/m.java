// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.util.HashMap;
import java.util.Map;

class m
{

    private static final Map a = a();

    static Map a()
    {
        HashMap hashmap = new HashMap();
        try
        {
            hashmap.put("com.google.android.gms.ads.AdView", Boolean.valueOf(b("com.google.android.gms.ads.AdView")));
        }
        catch (Exception exception) { }
        try
        {
            hashmap.put("com.rhythmnewmedia.sdk.display.RhythmDisplayAdView", Boolean.valueOf(b("com.rhythmnewmedia.sdk.display.RhythmDisplayAdView")));
        }
        catch (Exception exception1) { }
        try
        {
            hashmap.put("com.greystripe.sdk.GSMobileBannerAdView", Boolean.valueOf(b("com.greystripe.sdk.GSMobileBannerAdView")));
        }
        catch (Exception exception2) { }
        try
        {
            hashmap.put("com.millennialmedia.android.MMAdView", Boolean.valueOf(b("com.millennialmedia.android.MMAdView")));
        }
        catch (Exception exception3) { }
        try
        {
            hashmap.put("com.amazon.device.ads.AdLayout", Boolean.valueOf(b("com.amazon.device.ads.AdLayout")));
        }
        catch (Exception exception4) { }
        try
        {
            hashmap.put("com.jirbo.adcolony.AdColony", Boolean.valueOf(b("com.jirbo.adcolony.AdColony")));
        }
        catch (Exception exception5) { }
        try
        {
            hashmap.put("com.amobee.pulse3d.Pulse3DView", Boolean.valueOf(b("com.amobee.pulse3d.Pulse3DView")));
        }
        catch (Exception exception6) { }
        try
        {
            hashmap.put("com.facebook.ads.AdView", Boolean.valueOf(b("com.facebook.ads.AdView")));
        }
        catch (Exception exception7) { }
        try
        {
            hashmap.put("com.inmobi.monetization.IMBanner", Boolean.valueOf(b("com.inmobi.monetization.IMBanner")));
        }
        catch (Exception exception8) { }
        try
        {
            hashmap.put("com.heyzap.sdk.ads.VideoAd", Boolean.valueOf(b("com.heyzap.sdk.ads.VideoAd")));
        }
        catch (Exception exception9)
        {
            return hashmap;
        }
        return hashmap;
    }

    static boolean a(String s)
    {
        return ((Boolean)a.get(s)).booleanValue();
    }

    public static boolean b(String s)
    {
        try
        {
            Class.forName(s);
        }
        catch (Exception exception)
        {
            return false;
        }
        return true;
    }

}
