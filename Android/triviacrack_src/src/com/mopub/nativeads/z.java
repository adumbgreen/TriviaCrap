// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import java.util.HashSet;
import java.util.Set;

final class z extends Enum
{

    public static final z CALL_TO_ACTION;
    public static final z CLICK_DESTINATION;
    public static final z CLICK_TRACKER;
    public static final z FALLBACK;
    public static final z ICON_IMAGE;
    public static final z IMPRESSION_TRACKER;
    public static final z MAIN_IMAGE;
    public static final z STAR_RATING;
    public static final z TEXT;
    public static final z TITLE;
    static final Set c;
    private static final z d[];
    final String a;
    final boolean b;

    private z(String s, int i, String s1, boolean flag)
    {
        super(s, i);
        a = s1;
        b = flag;
    }

    static z a(String s)
    {
        z az[] = values();
        int i = az.length;
        for (int j = 0; j < i; j++)
        {
            z z1 = az[j];
            if (z1.a.equals(s))
            {
                return z1;
            }
        }

        return null;
    }

    public static z valueOf(String s)
    {
        return (z)Enum.valueOf(com/mopub/nativeads/z, s);
    }

    public static z[] values()
    {
        return (z[])d.clone();
    }

    static 
    {
        int i = 0;
        IMPRESSION_TRACKER = new z("IMPRESSION_TRACKER", 0, "imptracker", true);
        CLICK_TRACKER = new z("CLICK_TRACKER", 1, "clktracker", true);
        TITLE = new z("TITLE", 2, "title", false);
        TEXT = new z("TEXT", 3, "text", false);
        MAIN_IMAGE = new z("MAIN_IMAGE", 4, "mainimage", false);
        ICON_IMAGE = new z("ICON_IMAGE", 5, "iconimage", false);
        CLICK_DESTINATION = new z("CLICK_DESTINATION", 6, "clk", false);
        FALLBACK = new z("FALLBACK", 7, "fallback", false);
        CALL_TO_ACTION = new z("CALL_TO_ACTION", 8, "ctatext", false);
        STAR_RATING = new z("STAR_RATING", 9, "starrating", false);
        z az[] = new z[10];
        az[0] = IMPRESSION_TRACKER;
        az[1] = CLICK_TRACKER;
        az[2] = TITLE;
        az[3] = TEXT;
        az[4] = MAIN_IMAGE;
        az[5] = ICON_IMAGE;
        az[6] = CLICK_DESTINATION;
        az[7] = FALLBACK;
        az[8] = CALL_TO_ACTION;
        az[9] = STAR_RATING;
        d = az;
        c = new HashSet();
        z az1[] = values();
        for (int j = az1.length; i < j; i++)
        {
            z z1 = az1[i];
            if (z1.b)
            {
                c.add(z1.a);
            }
        }

    }
}
