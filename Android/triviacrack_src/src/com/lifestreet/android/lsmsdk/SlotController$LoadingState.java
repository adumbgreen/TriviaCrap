// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES LOADED;
    public static final .VALUES LOADING;
    public static final .VALUES NOT_LOADED;
    public static final .VALUES SHOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/lifestreet/android/lsmsdk/SlotController$LoadingState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NOT_LOADED = new <init>("NOT_LOADED", 0);
        LOADING = new <init>("LOADING", 1);
        LOADED = new <init>("LOADED", 2);
        SHOWN = new <init>("SHOWN", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = NOT_LOADED;
        aclone[1] = LOADING;
        aclone[2] = LOADED;
        aclone[3] = SHOWN;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
