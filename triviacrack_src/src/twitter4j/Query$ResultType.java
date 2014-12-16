// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES mixed;
    public static final .VALUES popular;
    public static final .VALUES recent;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(twitter4j/Query$ResultType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        popular = new <init>("popular", 0);
        mixed = new <init>("mixed", 1);
        recent = new <init>("recent", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = popular;
        aclone[1] = mixed;
        aclone[2] = recent;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
