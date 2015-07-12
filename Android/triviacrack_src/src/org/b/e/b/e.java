// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;


abstract class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    public static final e e;
    public static final e f;
    public static final e g;
    public static final e h;
    public static final e i;
    public static final e j;
    private static final e k[];

    private e(String s, int l)
    {
        super(s, l);
    }

    e(String s, int l, a._cls1 _pcls1)
    {
        this(s, l);
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(org/b/e/b/e, s);
    }

    public static e[] values()
    {
        return (e[])k.clone();
    }

    public abstract boolean a(int l);

    protected boolean b(int l)
    {
        return l >= 97 && l <= 122 || l >= 65 && l <= 90;
    }

    protected boolean c(int l)
    {
        return l >= 48 && l <= 57;
    }

    protected boolean d(int l)
    {
        return 33 == l || 36 == l || 38 == l || 39 == l || 40 == l || 41 == l || 42 == l || 43 == l || 44 == l || 59 == l || 61 == l;
    }

    protected boolean e(int l)
    {
        return b(l) || c(l) || 45 == l || 46 == l || 95 == l || 126 == l;
    }

    protected boolean f(int l)
    {
        return e(l) || d(l) || 58 == l || 64 == l;
    }

    static 
    {
        a = new e("SCHEME", 0) {

            public boolean a(int l)
            {
                return b(l) || c(l) || 43 == l || 45 == l || 46 == l;
            }

        };
        b = new e("AUTHORITY", 1) {

            public boolean a(int l)
            {
                return e(l) || d(l) || 58 == l || 64 == l;
            }

        };
        c = new e("USER_INFO", 2) {

            public boolean a(int l)
            {
                return e(l) || d(l) || 58 == l;
            }

        };
        d = new e("HOST", 3) {

            public boolean a(int l)
            {
                return e(l) || d(l);
            }

        };
        e = new e("PORT", 4) {

            public boolean a(int l)
            {
                return c(l);
            }

        };
        f = new e("PATH", 5) {

            public boolean a(int l)
            {
                return f(l) || 47 == l;
            }

        };
        g = new e("PATH_SEGMENT", 6) {

            public boolean a(int l)
            {
                return f(l);
            }

        };
        h = new e("QUERY", 7) {

            public boolean a(int l)
            {
                return f(l) || 47 == l || 63 == l;
            }

        };
        i = new e("QUERY_PARAM", 8) {

            public boolean a(int l)
            {
                while (61 == l || 43 == l || 38 == l || !f(l) && 47 != l && 63 != l) 
                {
                    return false;
                }
                return true;
            }

        };
        j = new e("FRAGMENT", 9) {

            public boolean a(int l)
            {
                return f(l) || 47 == l || 63 == l;
            }

        };
        e ae[] = new e[10];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        ae[4] = e;
        ae[5] = f;
        ae[6] = g;
        ae[7] = h;
        ae[8] = i;
        ae[9] = j;
        k = ae;
    }
}
