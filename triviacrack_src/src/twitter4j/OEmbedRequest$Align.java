// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CENTER;
    public static final .VALUES LEFT;
    public static final .VALUES NONE;
    public static final .VALUES RIGHT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(twitter4j/OEmbedRequest$Align, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        LEFT = new <init>("LEFT", 0);
        CENTER = new <init>("CENTER", 1);
        RIGHT = new <init>("RIGHT", 2);
        NONE = new <init>("NONE", 3);
        n_3B_.clone aclone[] = new <init>[4];
        aclone[0] = LEFT;
        aclone[1] = CENTER;
        aclone[2] = RIGHT;
        aclone[3] = NONE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
