// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;

import org.apache.http.conn.util.InetAddressUtils;

public final class Utils extends Enum
{

    public static final a IPv4;
    public static final a IPv6;
    private static final a a[];

    static boolean a(Utils utils, String s)
    {
        return utils.a(s);
    }

    private boolean a(String s)
    {
        switch ([ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            return InetAddressUtils.isIPv4Address(s);

        case 2: // '\002'
            return InetAddressUtils.isIPv6Address(s);
        }
    }

    static String b(Utils.isIPv6Address isipv6address, String s)
    {
        return isipv6address.b(s);
    }

    private String b(String s)
    {
        switch ([ordinal()])
        {
        default:
            s = null;
            // fall through

        case 1: // '\001'
            return s;

        case 2: // '\002'
            return s.split("%")[0];
        }
    }

    public static ordinal valueOf(String s)
    {
        return (ordinal)Enum.valueOf(com/mopub/common/util/DeviceUtils$IP, s);
    }

    public static ordinal[] values()
    {
        return (ordinal[])a.clone();
    }

    static 
    {
        IPv4 = new <init>("IPv4", 0);
        IPv6 = new <init>("IPv6", 1);
        P_3B_.clone aclone[] = new <init>[2];
        aclone[0] = IPv4;
        aclone[1] = IPv6;
        a = aclone;
    }

    private Utils(String s, int i)
    {
        super(s, i);
    }
}
