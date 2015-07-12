// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;


final class f extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    private static final f d[];

    private f(String s, int i)
    {
        super(s, i);
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(eu/janmuller/android/simplecropimage/f, s);
    }

    public static f[] values()
    {
        return (f[])d.clone();
    }

    static 
    {
        a = new f("None", 0);
        b = new f("Move", 1);
        c = new f("Grow", 2);
        f af[] = new f[3];
        af[0] = a;
        af[1] = b;
        af[2] = c;
        d = af;
    }
}
