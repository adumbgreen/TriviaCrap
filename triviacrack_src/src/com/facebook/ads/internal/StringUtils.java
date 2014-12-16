// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import java.security.MessageDigest;

public class StringUtils
{

    public StringUtils()
    {
    }

    public static boolean isNullOrEmpty(String s)
    {
        return s == null || s.length() <= 0;
    }

    public static String md5(String s)
    {
        byte abyte0[];
        StringBuilder stringbuilder;
        int i;
        String s1;
        try
        {
            abyte0 = MessageDigest.getInstance("MD5").digest(s.getBytes("utf-8"));
            stringbuilder = new StringBuilder();
        }
        catch (Exception exception)
        {
            return null;
        }
        i = 0;
        if (i >= abyte0.length)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append(Integer.toString(256 + (0xff & abyte0[i]), 16).substring(1));
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_26;
_L1:
        s1 = stringbuilder.toString();
        return s1;
    }
}
