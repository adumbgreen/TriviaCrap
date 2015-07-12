// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelAnalyticsAdapter

class c
{

    private static Map a = null;

    static AdMarvelAnalyticsAdapter a(String s, Context context)
    {
        if (a == null)
        {
            a = a(context);
        }
        return (AdMarvelAnalyticsAdapter)a.get(s);
    }

    static Map a(Context context)
    {
        HashMap hashmap = new HashMap();
        try
        {
            hashmap.put("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", AdMarvelAnalyticsAdapter.createInstance("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context));
        }
        catch (Exception exception)
        {
            return hashmap;
        }
        return hashmap;
    }

}
