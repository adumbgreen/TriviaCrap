// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;


final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES COMPLETED;
    public static final .VALUES INITIALIZED;
    public static final .VALUES PAUSED;
    public static final .VALUES PLAYING;
    public static final .VALUES UNINITIALIZED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/ads/VideoAdActivity$PlayerState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNINITIALIZED = new <init>("UNINITIALIZED", 0);
        INITIALIZED = new <init>("INITIALIZED", 1);
        PLAYING = new <init>("PLAYING", 2);
        PAUSED = new <init>("PAUSED", 3);
        COMPLETED = new <init>("COMPLETED", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = UNINITIALIZED;
        aclone[1] = INITIALIZED;
        aclone[2] = PLAYING;
        aclone[3] = PAUSED;
        aclone[4] = COMPLETED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
