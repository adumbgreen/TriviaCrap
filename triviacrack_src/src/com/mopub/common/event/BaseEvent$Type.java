// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.event;


public final class mName extends Enum
{

    public static final a DATA_ERROR;
    public static final a NETWORK_REQUEST;
    private static final a a[];
    public final String mName;

    public static mName valueOf(String s)
    {
        return (mName)Enum.valueOf(com/mopub/common/event/BaseEvent$Type, s);
    }

    public static mName[] values()
    {
        return (mName[])a.clone();
    }

    static 
    {
        NETWORK_REQUEST = new <init>("NETWORK_REQUEST", 0, "request");
        DATA_ERROR = new <init>("DATA_ERROR", 1, "invalid_data");
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = NETWORK_REQUEST;
        aclone[1] = DATA_ERROR;
        a = aclone;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mName = s1;
    }
}
