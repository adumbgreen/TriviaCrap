// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES HTML;
    public static final .VALUES JSON;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        JSON = new <init>("JSON", 0);
        HTML = new <init>("HTML", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = JSON;
        aclone[1] = HTML;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
