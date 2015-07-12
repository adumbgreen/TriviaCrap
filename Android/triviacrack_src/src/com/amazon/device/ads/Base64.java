// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            StringUtils

class Base64
{

    private static final String ENCODE_CHARSET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    Base64()
    {
    }

    public static byte[] decode(String s)
    {
        int i;
        int j;
        byte abyte0[];
        int k;
        i = 0;
        if (StringUtils.isNullOrWhiteSpace(s))
        {
            throw new IllegalArgumentException("Encoded String must not be null or white space");
        }
        j = getDecodedLength(s);
        if (j <= 0)
        {
            throw new IllegalArgumentException("Encoded String decodes to zero bytes");
        }
        abyte0 = new byte[j];
        k = 0;
        break MISSING_BLOCK_LABEL_45;
_L2:
        return abyte0;
_L10:
        if (i >= s.length() || k >= j || i % 4 == 0 && s.length() < i + 4) goto _L2; else goto _L1
_L1:
        int l = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(s.charAt(i));
        if (l == -1) goto _L2; else goto _L3
_L3:
        i % 4;
        JVM INSTR tableswitch 0 3: default 128
    //                   0 134
    //                   1 146
    //                   2 191
    //                   3 238;
           goto _L4 _L5 _L6 _L7 _L8
_L4:
        break; /* Loop/switch isn't completed */
_L5:
        break; /* Loop/switch isn't completed */
_L11:
        i++;
        if (true) goto _L10; else goto _L9
_L9:
        abyte0[k] = (byte)(l << 2);
          goto _L11
_L6:
        int i1;
        i1 = k + 1;
        abyte0[k] = (byte)(abyte0[k] | (byte)(3 & l >> 4));
        if (i1 >= j)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        abyte0[i1] = (byte)(l << 4);
        k = i1;
          goto _L11
_L7:
        i1 = k + 1;
        abyte0[k] = (byte)(abyte0[k] | (byte)(0xf & l >> 2));
        if (i1 >= j)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        abyte0[i1] = (byte)(l << 6);
        k = i1;
          goto _L11
_L8:
        i1 = k + 1;
        abyte0[k] = (byte)(abyte0[k] | (byte)(l & 0x3f));
        k = i1;
          goto _L11
    }

    private static int getDecodedLength(String s)
    {
        int i = s.indexOf("=");
        int j = 0;
        if (i > -1)
        {
            j = s.length() - i;
        }
        return 3 * ((3 + s.length()) / 4) - j;
    }
}
