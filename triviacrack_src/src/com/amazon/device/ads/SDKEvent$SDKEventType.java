// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BRIDGE_ADDED;
    public static final .VALUES CLOSED;
    public static final .VALUES DESTROYED;
    public static final .VALUES HIDDEN;
    public static final .VALUES READY;
    public static final .VALUES RENDERED;
    public static final .VALUES RESIZED;
    public static final .VALUES VISIBLE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/device/ads/SDKEvent$SDKEventType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        RENDERED = new <init>("RENDERED", 0);
        VISIBLE = new <init>("VISIBLE", 1);
        HIDDEN = new <init>("HIDDEN", 2);
        DESTROYED = new <init>("DESTROYED", 3);
        CLOSED = new <init>("CLOSED", 4);
        READY = new <init>("READY", 5);
        RESIZED = new <init>("RESIZED", 6);
        BRIDGE_ADDED = new <init>("BRIDGE_ADDED", 7);
        e_3B_.clone aclone[] = new <init>[8];
        aclone[0] = RENDERED;
        aclone[1] = VISIBLE;
        aclone[2] = HIDDEN;
        aclone[3] = DESTROYED;
        aclone[4] = CLOSED;
        aclone[5] = READY;
        aclone[6] = RESIZED;
        aclone[7] = BRIDGE_ADDED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
