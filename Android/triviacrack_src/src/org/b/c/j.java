// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;


// Referenced classes of package org.b.c:
//            i

public final class j extends Enum
{

    public static final j a;
    public static final j b;
    public static final j c;
    public static final j d;
    public static final j e;
    private static final j g[];
    private final int f;

    private j(String s, int k, int l)
    {
        super(s, k);
        f = l;
    }

    static j a(i k)
    {
        return b(k);
    }

    private static j b(i k)
    {
        int l = k.a() / 100;
        j aj[] = values();
        int i1 = aj.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            j j2 = aj[j1];
            if (j2.f == l)
            {
                return j2;
            }
        }

        throw new IllegalArgumentException((new StringBuilder()).append("No matching constant for [").append(k).append("]").toString());
    }

    public static j valueOf(String s)
    {
        return (j)Enum.valueOf(org/b/c/j, s);
    }

    public static j[] values()
    {
        return (j[])g.clone();
    }

    static 
    {
        a = new j("INFORMATIONAL", 0, 1);
        b = new j("SUCCESSFUL", 1, 2);
        c = new j("REDIRECTION", 2, 3);
        d = new j("CLIENT_ERROR", 3, 4);
        e = new j("SERVER_ERROR", 4, 5);
        j aj[] = new j[5];
        aj[0] = a;
        aj[1] = b;
        aj[2] = c;
        aj[3] = d;
        aj[4] = e;
        g = aj;
    }
}
