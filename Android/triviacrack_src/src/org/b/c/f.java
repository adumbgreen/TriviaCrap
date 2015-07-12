// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;


public final class f extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    public static final f f;
    public static final f g;
    private static final f h[];

    private f(String s, int i)
    {
        super(s, i);
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(org/b/c/f, s);
    }

    public static f[] values()
    {
        return (f[])h.clone();
    }

    static 
    {
        a = new f("GET", 0);
        b = new f("POST", 1);
        c = new f("HEAD", 2);
        d = new f("OPTIONS", 3);
        e = new f("PUT", 4);
        f = new f("DELETE", 5);
        g = new f("TRACE", 6);
        f af[] = new f[7];
        af[0] = a;
        af[1] = b;
        af[2] = c;
        af[3] = d;
        af[4] = e;
        af[5] = f;
        af[6] = g;
        h = af;
    }
}
