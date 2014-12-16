// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


public final class BASE64Encoder
{

    private static final char encodeTable[] = {
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
        'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
        'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 
        'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
        'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 
        'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', 
        '8', '9', '+', '/'
    };
    private static final char last2byte = (char)Integer.parseInt("00000011", 2);
    private static final char last4byte = (char)Integer.parseInt("00001111", 2);
    private static final char last6byte = (char)Integer.parseInt("00111111", 2);
    private static final char lead2byte = (char)Integer.parseInt("11000000", 2);
    private static final char lead4byte = (char)Integer.parseInt("11110000", 2);
    private static final char lead6byte = (char)Integer.parseInt("11111100", 2);

    private BASE64Encoder()
    {
    }

    public static String encode(byte abyte0[])
    {
        int i;
        StringBuilder stringbuilder;
        char c;
        int j;
        i = 0;
        stringbuilder = new StringBuilder(3 + (int)(1.3400000000000001D * (double)abyte0.length));
        c = '\0';
        j = 0;
_L10:
        if (i >= abyte0.length)
        {
            break; /* Loop/switch isn't completed */
        }
        j %= 8;
_L7:
        if (j >= 8)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        j;
        JVM INSTR tableswitch 0 6: default 88
    //                   0 104
    //                   1 88
    //                   2 119
    //                   3 88
    //                   4 131
    //                   5 88
    //                   6 170;
           goto _L1 _L2 _L1 _L3 _L1 _L4 _L1 _L5
_L5:
        break MISSING_BLOCK_LABEL_170;
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break; /* Loop/switch isn't completed */
_L8:
        stringbuilder.append(encodeTable[c]);
        j += 6;
        if (true) goto _L7; else goto _L6
_L6:
        c = (char)((char)(abyte0[i] & lead6byte) >>> 2);
          goto _L8
_L3:
        c = (char)(abyte0[i] & last6byte);
          goto _L8
_L4:
        c = (char)((char)(abyte0[i] & last4byte) << 2);
        if (i + 1 < abyte0.length)
        {
            c |= (abyte0[i + 1] & lead2byte) >>> 6;
        }
          goto _L8
        c = (char)((char)(abyte0[i] & last2byte) << 4);
        if (i + 1 < abyte0.length)
        {
            c |= (abyte0[i + 1] & lead4byte) >>> 4;
        }
          goto _L8
        i++;
        if (true) goto _L10; else goto _L9
_L9:
        if (stringbuilder.length() % 4 != 0)
        {
            for (int k = 4 - stringbuilder.length() % 4; k > 0; k--)
            {
                stringbuilder.append("=");
            }

        }
        return stringbuilder.toString();
    }

}
