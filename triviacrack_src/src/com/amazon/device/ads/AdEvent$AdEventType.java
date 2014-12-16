// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CLICKED;
    public static final .VALUES CLOSED;
    public static final .VALUES EXPANDED;
    public static final .VALUES OTHER;
    public static final .VALUES RESIZED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/device/ads/AdEvent$AdEventType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        EXPANDED = new <init>("EXPANDED", 0);
        CLOSED = new <init>("CLOSED", 1);
        CLICKED = new <init>("CLICKED", 2);
        RESIZED = new <init>("RESIZED", 3);
        OTHER = new <init>("OTHER", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = EXPANDED;
        aclone[1] = CLOSED;
        aclone[2] = CLICKED;
        aclone[3] = RESIZED;
        aclone[4] = OTHER;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
