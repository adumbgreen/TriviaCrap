// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES item_response;
    public static final .VALUES purchase_response;
    public static final .VALUES updates_response;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        purchase_response = new <init>("purchase_response", 0);
        item_response = new <init>("item_response", 1);
        updates_response = new <init>("updates_response", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = purchase_response;
        aclone[1] = item_response;
        aclone[2] = updates_response;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
