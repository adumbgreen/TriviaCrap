// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;

import java.security.MessageDigest;
import java.util.concurrent.atomic.AtomicLong;

public class Utils
{

    private static final AtomicLong a = new AtomicLong(1L);

    public Utils()
    {
    }

    public static boolean bitMaskContainsFlag(int i, int j)
    {
        return (i & j) != 0;
    }

    public static long generateUniqueId()
    {
        long l;
        long l1;
        do
        {
            l = a.get();
            l1 = l + 1L;
            if (l1 > 0x7ffffffffffffffeL)
            {
                l1 = 1L;
            }
        } while (!a.compareAndSet(l, l1));
        return l;
    }

    public static String sha1(String s)
    {
        int i = 0;
        StringBuilder stringbuilder = new StringBuilder();
        byte abyte1[];
        int j;
        byte byte0;
        Object aobj[];
        String s1;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
            byte abyte0[] = s.getBytes("UTF-8");
            messagedigest.update(abyte0, 0, abyte0.length);
            abyte1 = messagedigest.digest();
            j = abyte1.length;
        }
        catch (Exception exception)
        {
            return "";
        }
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        byte0 = abyte1[i];
        aobj = new Object[1];
        aobj[0] = Byte.valueOf(byte0);
        stringbuilder.append(String.format("%02X", aobj));
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_48;
_L1:
        s1 = stringbuilder.toString().toLowerCase();
        return s1;
    }

}
