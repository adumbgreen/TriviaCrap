// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util;


// Referenced classes of package com.mopub.mobileads.util:
//            a, Base64

class c extends a
{

    public static final int LINE_GROUPS = 19;
    static final boolean b;
    private static final byte c[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte d[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    int a;
    public final boolean do_cr;
    public final boolean do_newline;
    public final boolean do_padding;
    private final byte e[] = new byte[2];
    private int f;
    private final byte g[];

    public c(int i, byte abyte0[])
    {
        boolean flag = true;
        super();
        output = abyte0;
        boolean flag1;
        boolean flag2;
        byte abyte1[];
        int j;
        if ((i & 1) == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        do_padding = flag1;
        if ((i & 2) == 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        do_newline = flag2;
        if ((i & 4) == 0)
        {
            flag = false;
        }
        do_cr = flag;
        if ((i & 8) == 0)
        {
            abyte1 = c;
        } else
        {
            abyte1 = d;
        }
        g = abyte1;
        a = 0;
        if (do_newline)
        {
            j = 19;
        } else
        {
            j = -1;
        }
        f = j;
    }

    public int maxOutputSize(int i)
    {
        return 10 + (i * 8) / 5;
    }

    public boolean process(byte abyte0[], int i, int j, boolean flag)
    {
        byte abyte1[];
        byte abyte2[];
        int k;
        int l;
        int i1;
        abyte1 = g;
        abyte2 = output;
        k = f;
        l = j + i;
        i1 = -1;
        a;
        JVM INSTR tableswitch 0 2: default 56
    //                   0 352
    //                   1 358
    //                   2 432;
           goto _L1 _L2 _L3 _L4
_L1:
        int k1 = i;
_L10:
        int l1 = 0;
        if (i1 == -1) goto _L6; else goto _L5
_L5:
        abyte2[0] = abyte1[0x3f & i1 >> 18];
        abyte2[1] = abyte1[0x3f & i1 >> 12];
        abyte2[2] = abyte1[0x3f & i1 >> 6];
        l1 = 4;
        abyte2[3] = abyte1[i1 & 0x3f];
        if (--k != 0) goto _L6; else goto _L7
_L7:
        int j1;
        int i2;
        int j2;
        byte abyte3[];
        int k2;
        byte abyte4[];
        int l2;
        byte abyte5[];
        int i3;
        int j3;
        int k3;
        byte byte0;
        int l3;
        int i4;
        int j4;
        byte byte1;
        int k4;
        int l4;
        int i5;
        int j5;
        int k5;
        int l5;
        int i6;
        byte abyte6[];
        int j6;
        byte abyte7[];
        int k6;
        byte byte2;
        int l6;
        int i7;
        int j7;
        int k7;
        int l7;
        int i8;
        int j8;
        int k8;
        byte abyte8[];
        int l8;
        int i9;
        int j9;
        int k9;
        int l9;
        int i10;
        int j10;
        int k10;
        int l10;
        if (do_cr)
        {
            k9 = 5;
            abyte2[l1] = 13;
        } else
        {
            k9 = l1;
        }
        l9 = k9 + 1;
        abyte2[k9] = 10;
        i2 = 19;
        j2 = l9;
        if (k1 + 3 > l) goto _L9; else goto _L8
_L8:
        l8 = (0xff & abyte0[k1]) << 16 | (0xff & abyte0[k1 + 1]) << 8 | 0xff & abyte0[k1 + 2];
        abyte2[j2] = abyte1[0x3f & l8 >> 18];
        abyte2[j2 + 1] = abyte1[0x3f & l8 >> 12];
        abyte2[j2 + 2] = abyte1[0x3f & l8 >> 6];
        abyte2[j2 + 3] = abyte1[l8 & 0x3f];
        k1 += 3;
        l1 = j2 + 4;
        k = i2 - 1;
        if (k == 0)
        {
            if (do_cr)
            {
                i9 = l1 + 1;
                abyte2[l1] = 13;
            } else
            {
                i9 = l1;
            }
            j9 = i9 + 1;
            abyte2[i9] = 10;
            i2 = 19;
            j2 = j9;
            break MISSING_BLOCK_LABEL_174;
        }
          goto _L6
_L2:
        k1 = i;
          goto _L10
_L3:
        if (i + 2 > l) goto _L1; else goto _L11
_L11:
        i10 = (0xff & e[0]) << 16;
        j10 = i + 1;
        k10 = i10 | (0xff & abyte0[i]) << 8;
        l10 = j10 + 1;
        i1 = k10 | 0xff & abyte0[j10];
        a = 0;
        k1 = l10;
          goto _L10
_L4:
        if (i + 1 > l) goto _L1; else goto _L12
_L12:
        j1 = (0xff & e[0]) << 16 | (0xff & e[1]) << 8;
        k1 = i + 1;
        i1 = j1 | 0xff & abyte0[i];
        a = 0;
          goto _L10
_L9:
        if (!flag) goto _L14; else goto _L13
_L13:
        if (k1 - a != l - 1) goto _L16; else goto _L15
_L15:
        if (a > 0)
        {
            abyte8 = e;
            i7 = 1;
            byte2 = abyte8[0];
            l6 = k1;
        } else
        {
            k6 = k1 + 1;
            byte2 = abyte0[k1];
            l6 = k6;
            i7 = 0;
        }
        j7 = (byte2 & 0xff) << 4;
        a = a - i7;
        k7 = j2 + 1;
        abyte2[j2] = abyte1[0x3f & j7 >> 6];
        l7 = k7 + 1;
        abyte2[k7] = abyte1[j7 & 0x3f];
        if (do_padding)
        {
            k8 = l7 + 1;
            abyte2[l7] = 61;
            l7 = k8 + 1;
            abyte2[k8] = 61;
        }
        if (do_newline)
        {
            if (do_cr)
            {
                j8 = l7 + 1;
                abyte2[l7] = 13;
                l7 = j8;
            }
            i8 = l7 + 1;
            abyte2[l7] = 10;
            l7 = i8;
        }
        k1 = l6;
        j2 = l7;
_L18:
        if (!b && a != 0)
        {
            throw new AssertionError();
        }
          goto _L17
_L16:
        if (k1 - a == l - 2)
        {
            if (a > 1)
            {
                abyte7 = e;
                l3 = 1;
                byte0 = abyte7[0];
            } else
            {
                k3 = k1 + 1;
                byte0 = abyte0[k1];
                k1 = k3;
                l3 = 0;
            }
            i4 = (byte0 & 0xff) << 10;
            if (a > 0)
            {
                abyte6 = e;
                j6 = l3 + 1;
                byte1 = abyte6[l3];
                l3 = j6;
            } else
            {
                j4 = k1 + 1;
                byte1 = abyte0[k1];
                k1 = j4;
            }
            k4 = i4 | (byte1 & 0xff) << 2;
            a = a - l3;
            l4 = j2 + 1;
            abyte2[j2] = abyte1[0x3f & k4 >> 12];
            i5 = l4 + 1;
            abyte2[l4] = abyte1[0x3f & k4 >> 6];
            j5 = i5 + 1;
            abyte2[i5] = abyte1[k4 & 0x3f];
            if (do_padding)
            {
                k5 = j5 + 1;
                abyte2[j5] = 61;
            } else
            {
                k5 = j5;
            }
            if (do_newline)
            {
                if (do_cr)
                {
                    i6 = k5 + 1;
                    abyte2[k5] = 13;
                    k5 = i6;
                }
                l5 = k5 + 1;
                abyte2[k5] = 10;
                k5 = l5;
            }
            j2 = k5;
        } else
        if (do_newline && j2 > 0 && i2 != 19)
        {
            if (do_cr)
            {
                j3 = j2 + 1;
                abyte2[j2] = 13;
            } else
            {
                j3 = j2;
            }
            j2 = j3 + 1;
            abyte2[j3] = 10;
        }
        if (true) goto _L18; else goto _L17
_L17:
        if (!b && k1 != l)
        {
            throw new AssertionError();
        }
          goto _L19
_L14:
        if (k1 != l - 1) goto _L21; else goto _L20
_L20:
        abyte5 = e;
        i3 = a;
        a = i3 + 1;
        abyte5[i3] = abyte0[k1];
_L19:
        op = j2;
        f = i2;
        return true;
_L21:
        if (k1 == l - 2)
        {
            abyte3 = e;
            k2 = a;
            a = k2 + 1;
            abyte3[k2] = abyte0[k1];
            abyte4 = e;
            l2 = a;
            a = l2 + 1;
            abyte4[l2] = abyte0[k1 + 1];
        }
        if (true) goto _L19; else goto _L6
_L6:
        i2 = k;
        j2 = l1;
        break MISSING_BLOCK_LABEL_174;
    }

    static 
    {
        boolean flag;
        if (!com/mopub/mobileads/util/Base64.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
