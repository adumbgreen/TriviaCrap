// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            MraidView

abstract class af
{

    protected Map a;
    protected MraidView b;

    af(Map map, MraidView mraidview)
    {
        a = map;
        b = mraidview;
    }

    protected int a(String s)
    {
        String s1 = (String)a.get(s);
        if (s1 == null)
        {
            return -1;
        }
        int i;
        try
        {
            i = Integer.parseInt(s1, 10);
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1;
        }
        return i;
    }

    abstract void a();

    protected boolean a(MraidView.PlacementType placementtype)
    {
        return false;
    }

    protected String b(String s)
    {
        return (String)a.get(s);
    }

    protected boolean c(String s)
    {
        return "true".equals(a.get(s));
    }
}
