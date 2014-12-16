// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelAdapter

class b
{

    private static final Map a;
    private static Map b;

    protected static AdMarvelAdapter a(String s, String s1)
    {
        Map map = (Map)b.get(s);
        if (map != null)
        {
            return (AdMarvelAdapter)map.get(s1);
        } else
        {
            return null;
        }
    }

    public static Map a()
    {
        return b;
    }

    protected static void a(String s)
    {
        com/admarvel/android/ads/b;
        JVM INSTR monitorenter ;
        b.put(s, b());
        com/admarvel/android/ads/b;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static Map b()
    {
        HashMap hashmap = new HashMap();
        try
        {
            hashmap.put("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"));
        }
        catch (Exception exception) { }
        try
        {
            hashmap.put("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"));
        }
        catch (Exception exception1) { }
        try
        {
            hashmap.put("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"));
        }
        catch (Exception exception2) { }
        try
        {
            hashmap.put("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"));
        }
        catch (Exception exception3) { }
        try
        {
            hashmap.put("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"));
        }
        catch (Exception exception4) { }
        try
        {
            hashmap.put("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"));
        }
        catch (Exception exception5) { }
        try
        {
            hashmap.put("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"));
        }
        catch (Exception exception6) { }
        try
        {
            hashmap.put("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"));
        }
        catch (Exception exception7) { }
        try
        {
            hashmap.put("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"));
        }
        catch (Exception exception8) { }
        try
        {
            hashmap.put("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter", AdMarvelAdapter.createInstance("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"));
        }
        catch (Exception exception9)
        {
            return hashmap;
        }
        return hashmap;
    }

    protected static void b(String s)
    {
        com/admarvel/android/ads/b;
        JVM INSTR monitorenter ;
        b.remove(s);
        com/admarvel/android/ads/b;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static AdMarvelAdapter c(String s)
    {
        return (AdMarvelAdapter)a.get(s);
    }

    static 
    {
        a = b();
        b = new ConcurrentHashMap();
        b.put("ADMARVELGUID", a);
    }
}
