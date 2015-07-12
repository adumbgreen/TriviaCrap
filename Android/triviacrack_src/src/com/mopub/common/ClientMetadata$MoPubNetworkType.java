// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;


public final class a extends Enum
{

    public static final b ETHERNET;
    public static final b MOBILE;
    public static final b UNKNOWN;
    public static final b WIFI;
    private static final b b[];
    private final int a;

    static a a(int i)
    {
        return b(i);
    }

    private static b b(int i)
    {
        switch (i)
        {
        case 6: // '\006'
        case 7: // '\007'
        case 8: // '\b'
        default:
            return UNKNOWN;

        case 9: // '\t'
            return ETHERNET;

        case 1: // '\001'
            return WIFI;

        case 0: // '\0'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            return MOBILE;
        }
    }

    public static MOBILE valueOf(String s)
    {
        return (MOBILE)Enum.valueOf(com/mopub/common/ClientMetadata$MoPubNetworkType, s);
    }

    public static MOBILE[] values()
    {
        return (MOBILE[])b.clone();
    }

    public String toString()
    {
        return Integer.toString(a);
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0, 0);
        ETHERNET = new <init>("ETHERNET", 1, 1);
        WIFI = new <init>("WIFI", 2, 2);
        MOBILE = new <init>("MOBILE", 3, 3);
        a aa[] = new <init>[4];
        aa[0] = UNKNOWN;
        aa[1] = ETHERNET;
        aa[2] = WIFI;
        aa[3] = MOBILE;
        b = aa;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        a = j;
    }
}
