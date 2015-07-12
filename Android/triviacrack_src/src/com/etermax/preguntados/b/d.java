// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.b;

import com.etermax.gamescommon.resources.b;

// Referenced classes of package com.etermax.preguntados.b:
//            c

public final class d extends Enum
    implements c
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    public static final d e;
    public static final d f;
    private static final d i[];
    private String g;
    private long h;

    private d(String s, int j, String s1, long l)
    {
        super(s, j);
        g = s1;
        h = l;
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/etermax/preguntados/b/d, s);
    }

    public static d[] values()
    {
        return (d[])i.clone();
    }

    public String a()
    {
        return g;
    }

    public b b()
    {
        return b.e;
    }

    static 
    {
        a = new d("SCIENCE", 0, "ciencia", 4L);
        b = new d("ART", 1, "arte", 5L);
        c = new d("SPORTS", 2, "deportes", 6L);
        d = new d("ENTERTAINMENT", 3, "entretenimiento", 7L);
        e = new d("HISTORY", 4, "historia", 8L);
        f = new d("GEOGRAPHY", 5, "geografia", 9L);
        d ad[] = new d[6];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        ad[3] = d;
        ad[4] = e;
        ad[5] = f;
        i = ad;
    }
}
