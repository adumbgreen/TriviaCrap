// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class StringUtils
{

    private static final byte sEncodingTable[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };

    public StringUtils()
    {
    }

    public static String base64(String s)
    {
        String s1 = null;
        if (s != null)
        {
            s1 = (new String(encode64(s.getBytes()))).trim();
        }
        return s1;
    }

    public static boolean containsIgnoreCase(String s, String s1)
    {
        if (s != null && s1 != null)
        {
            int i = s1.length();
            int j = s.length() - i;
            int k = 0;
            while (k <= j) 
            {
                if (s.regionMatches(true, k, s1, 0, i))
                {
                    return true;
                }
                k++;
            }
        }
        return false;
    }

    private static String data2Hex(byte abyte0[])
    {
        String s = null;
        if (abyte0 != null)
        {
            int i = abyte0.length;
            StringBuilder stringbuilder = new StringBuilder(i << 1);
            for (int j = 0; j < i; j++)
            {
                stringbuilder.append(Character.forDigit((0xf0 & abyte0[j]) >> 4, 16));
                stringbuilder.append(Character.forDigit(0xf & abyte0[j], 16));
            }

            s = stringbuilder.toString();
        }
        return s;
    }

    private static byte[] encode64(byte abyte0[])
    {
        int i = abyte0.length;
        byte abyte1[] = new byte[4 * ((i + 2) / 3)];
        int j = 0;
        while (j < i) 
        {
            int k = j;
            int l;
            int l1;
            for (l = 0; k < j + 3; l = l1)
            {
                l1 = l << 8;
                if (k < i)
                {
                    l1 |= 0xff & abyte0[k];
                }
                k++;
            }

            int i1 = 4 * (j / 3);
            abyte1[i1] = sEncodingTable[0x3f & l >> 18];
            abyte1[i1 + 1] = sEncodingTable[0x3f & l >> 12];
            int j1 = i1 + 2;
            byte byte0;
            int k1;
            byte byte1;
            if (j + 1 < i)
            {
                byte0 = sEncodingTable[0x3f & l >> 6];
            } else
            {
                byte0 = 61;
            }
            abyte1[j1] = byte0;
            k1 = i1 + 3;
            if (j + 2 < i)
            {
                byte1 = sEncodingTable[l & 0x3f];
            } else
            {
                byte1 = 61;
            }
            abyte1[k1] = byte1;
            j += 3;
        }
        return abyte1;
    }

    private static String hashEncode(String s, String s1)
    {
        String s2 = null;
        if (s != null)
        {
            String s3;
            try
            {
                MessageDigest messagedigest = MessageDigest.getInstance(s1);
                messagedigest.reset();
                messagedigest.update(s.getBytes());
                s3 = data2Hex(messagedigest.digest());
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                return null;
            }
            s2 = s3;
        }
        return s2;
    }

    public static String md5(String s)
    {
        return hashEncode(s, "MD5");
    }

    public static String sha1(String s)
    {
        return hashEncode(s, "SHA-1");
    }

}
