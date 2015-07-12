// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


final class b extends Enum
{

    public static final b AD_WARMING_UP;
    public static final b CLEAR_AD_TYPE;
    public static final b FETCH_CANCELLED;
    public static final b INVALID_SERVER_RESPONSE_BACKOFF;
    public static final b INVALID_SERVER_RESPONSE_NOBACKOFF;
    public static final b NOT_SET;
    private static final b a[];

    private b(String s, int i)
    {
        super(s, i);
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/mopub/mobileads/b, s);
    }

    public static b[] values()
    {
        return (b[])a.clone();
    }

    static 
    {
        NOT_SET = new b("NOT_SET", 0);
        FETCH_CANCELLED = new b("FETCH_CANCELLED", 1);
        INVALID_SERVER_RESPONSE_BACKOFF = new b("INVALID_SERVER_RESPONSE_BACKOFF", 2);
        INVALID_SERVER_RESPONSE_NOBACKOFF = new b("INVALID_SERVER_RESPONSE_NOBACKOFF", 3);
        CLEAR_AD_TYPE = new b("CLEAR_AD_TYPE", 4);
        AD_WARMING_UP = new b("AD_WARMING_UP", 5);
        b ab[] = new b[6];
        ab[0] = NOT_SET;
        ab[1] = FETCH_CANCELLED;
        ab[2] = INVALID_SERVER_RESPONSE_BACKOFF;
        ab[3] = INVALID_SERVER_RESPONSE_NOBACKOFF;
        ab[4] = CLEAR_AD_TYPE;
        ab[5] = AD_WARMING_UP;
        a = ab;
    }
}
