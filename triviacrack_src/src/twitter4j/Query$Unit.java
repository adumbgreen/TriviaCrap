// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES km;
    public static final .VALUES mi;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(twitter4j/Query$Unit, s);
    }

    public static f[] values()
    {
        return (f[])$VALUES.clone();
    }

    static 
    {
        mi = new <init>("mi", 0);
        km = new <init>("km", 1);
        t_3B_.clone aclone[] = new <init>[2];
        aclone[0] = mi;
        aclone[1] = km;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
