// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.thirdparty;

import java.io.UnsupportedEncodingException;

public class Base64
{

    public static final int CRLF = 4;
    public static final int DEFAULT = 0;
    public static final int NO_CLOSE = 16;
    public static final int NO_PADDING = 1;
    public static final int NO_WRAP = 2;
    public static final int URL_SAFE = 8;
    static final boolean a;

    protected Base64()
    {
    }

    public static byte[] decode(String s, int i)
    {
        return decode(s.getBytes(), i);
    }

    public static byte[] decode(byte abyte0[], int i)
    {
        return decode(abyte0, 0, abyte0.length, i);
    }

    public static byte[] decode(byte abyte0[], int i, int j, int k)
    {
        a a1 = new a(k, new byte[(j * 3) / 4]);
        if (!a1.a(abyte0, i, j, true))
        {
            throw new IllegalArgumentException("bad base-64");
        }
        if (a1.b == a1.a.length)
        {
            return a1.a;
        } else
        {
            byte abyte1[] = new byte[a1.b];
            System.arraycopy(a1.a, 0, abyte1, 0, a1.b);
            return abyte1;
        }
    }

    public static byte[] encode(byte abyte0[], int i)
    {
        return encode(abyte0, 0, abyte0.length, i);
    }

    public static byte[] encode(byte abyte0[], int i, int j, int k)
    {
        c c1;
        int l;
        c1 = new c(k, null);
        l = 4 * (j / 3);
        if (!c1.d) goto _L2; else goto _L1
_L1:
        if (j % 3 > 0)
        {
            l += 4;
        }
_L4:
        if (c1.e && j > 0)
        {
            int i1 = 1 + (j - 1) / 57;
            byte byte0;
            if (c1.f)
            {
                byte0 = 2;
            } else
            {
                byte0 = 1;
            }
            l += byte0 * i1;
        }
        c1.a = new byte[l];
        c1.a(abyte0, i, j, true);
        if (!a && c1.b != l)
        {
            throw new AssertionError();
        } else
        {
            return c1.a;
        }
_L2:
        switch (j % 3)
        {
        case 1: // '\001'
            l += 2;
            break;

        case 2: // '\002'
            l += 3;
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String encodeToString(byte abyte0[], int i)
    {
        String s;
        try
        {
            s = new String(encode(abyte0, i), "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
        return s;
    }

    public static String encodeToString(byte abyte0[], int i, int j, int k)
    {
        String s;
        try
        {
            s = new String(encode(abyte0, i, j, k), "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
        return s;
    }

    static 
    {
        boolean flag;
        if (!com/inmobi/commons/thirdparty/Base64.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }

    private class a extends b
    {
        private class b
        {

            public byte a[];
            public int b;

            b()
            {
            }
        }


        private static final int c[] = {
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 
            54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
            -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 
            5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
            15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
            25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 
            29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
            39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
            49, 50, 51, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1
        };
        private static final int d[] = {
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 
            54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
            -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 
            5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
            15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
            25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 
            29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
            39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
            49, 50, 51, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1
        };
        private int e;
        private int f;
        private final int g[];

        public boolean a(byte abyte0[], int i, int j, boolean flag)
        {
            int k;
            int l;
            int i1;
            int j1;
            byte abyte1[];
            int ai[];
            int k1;
            if (e == 6)
            {
                return false;
            }
            k = j + i;
            l = e;
            i1 = f;
            j1 = 0;
            abyte1 = a;
            ai = g;
            k1 = i;
_L14:
            if (k1 >= k) goto _L2; else goto _L1
_L1:
            if (l != 0) goto _L4; else goto _L3
_L3:
            do
            {
                if (k1 + 4 > k)
                {
                    break;
                }
                i1 = ai[0xff & abyte0[k1]] << 18 | ai[0xff & abyte0[k1 + 1]] << 12 | ai[0xff & abyte0[k1 + 2]] << 6 | ai[0xff & abyte0[k1 + 3]];
                if (i1 < 0)
                {
                    break;
                }
                abyte1[j1 + 2] = (byte)i1;
                abyte1[j1 + 1] = (byte)(i1 >> 8);
                abyte1[j1] = (byte)(i1 >> 16);
                j1 += 3;
                k1 += 4;
            } while (true);
            if (k1 < k) goto _L4; else goto _L5
_L5:
            int l1 = i1;
_L27:
            if (!flag)
            {
                e = l;
                f = l1;
                b = j1;
                return true;
            }
              goto _L6
_L4:
            int k2;
            int l2;
            k2 = k1 + 1;
            l2 = ai[0xff & abyte0[k1]];
            l;
            JVM INSTR tableswitch 0 5: default 276
        //                       0 291
        //                       1 323
        //                       2 361
        //                       3 432
        //                       4 543
        //                       5 573;
               goto _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L7:
            int i3 = l;
_L15:
            l = i3;
            k1 = k2;
              goto _L14
_L8:
            if (l2 < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            i3 = l + 1;
            i1 = l2;
              goto _L15
            if (l2 == -1) goto _L7; else goto _L16
_L16:
            e = 6;
            return false;
_L9:
            if (l2 < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            i1 = l2 | i1 << 6;
            i3 = l + 1;
              goto _L15
            if (l2 == -1) goto _L7; else goto _L17
_L17:
            e = 6;
            return false;
_L10:
            if (l2 >= 0)
            {
                i1 = l2 | i1 << 6;
                i3 = l + 1;
            } else
            {
                if (l2 != -2)
                {
                    continue; /* Loop/switch isn't completed */
                }
                int j3 = j1 + 1;
                abyte1[j1] = (byte)(i1 >> 4);
                i3 = 4;
                j1 = j3;
            }
              goto _L15
            if (l2 == -1) goto _L7; else goto _L18
_L18:
            e = 6;
            return false;
_L11:
            if (l2 >= 0)
            {
                i1 = l2 | i1 << 6;
                abyte1[j1 + 2] = (byte)i1;
                abyte1[j1 + 1] = (byte)(i1 >> 8);
                abyte1[j1] = (byte)(i1 >> 16);
                j1 += 3;
                i3 = 0;
            } else
            {
                if (l2 != -2)
                {
                    continue; /* Loop/switch isn't completed */
                }
                abyte1[j1 + 1] = (byte)(i1 >> 2);
                abyte1[j1] = (byte)(i1 >> 10);
                j1 += 2;
                i3 = 5;
            }
              goto _L15
            if (l2 == -1) goto _L7; else goto _L19
_L19:
            e = 6;
            return false;
_L12:
            if (l2 != -2)
            {
                continue; /* Loop/switch isn't completed */
            }
            i3 = l + 1;
              goto _L15
            if (l2 == -1) goto _L7; else goto _L20
_L20:
            e = 6;
            return false;
_L13:
            if (l2 == -1) goto _L7; else goto _L21
_L21:
            e = 6;
            return false;
_L6:
            l;
            JVM INSTR tableswitch 0 4: default 624
        //                       0 624
        //                       1 638
        //                       2 646
        //                       3 669
        //                       4 705;
               goto _L22 _L22 _L23 _L24 _L25 _L26
_L22:
            e = l;
            b = j1;
            return true;
_L23:
            e = 6;
            return false;
_L24:
            int j2 = j1 + 1;
            abyte1[j1] = (byte)(l1 >> 4);
            j1 = j2;
            continue; /* Loop/switch isn't completed */
_L25:
            int i2 = j1 + 1;
            abyte1[j1] = (byte)(l1 >> 10);
            j1 = i2 + 1;
            abyte1[i2] = (byte)(l1 >> 2);
            if (true) goto _L22; else goto _L26
_L26:
            e = 6;
            return false;
_L2:
            l1 = i1;
              goto _L27
        }


        public a(int i, byte abyte0[])
        {
            a = abyte0;
            int ai[];
            if ((i & 8) == 0)
            {
                ai = c;
            } else
            {
                ai = d;
            }
            g = ai;
            e = 0;
            f = 0;
        }
    }


    private class c extends b
    {

        static final boolean g;
        private static final byte h[] = {
            65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
            75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
            85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
            101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
            111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
            121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
            56, 57, 43, 47
        };
        private static final byte i[] = {
            65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
            75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
            85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
            101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
            111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
            121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
            56, 57, 45, 95
        };
        int c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        private final byte j[] = new byte[2];
        private int k;
        private final byte l[];

        public boolean a(byte abyte0[], int i1, int j1, boolean flag)
        {
            byte abyte1[];
            byte abyte2[];
            int k1;
            int l1;
            int i2;
            abyte1 = l;
            abyte2 = a;
            k1 = k;
            l1 = j1 + i1;
            i2 = -1;
            c;
            JVM INSTR tableswitch 0 2: default 56
        //                       0 352
        //                       1 358
        //                       2 432;
               goto _L1 _L2 _L3 _L4
_L1:
            int k2 = i1;
_L10:
            int l2 = 0;
            if (i2 == -1) goto _L6; else goto _L5
_L5:
            abyte2[0] = abyte1[0x3f & i2 >> 18];
            abyte2[1] = abyte1[0x3f & i2 >> 12];
            abyte2[2] = abyte1[0x3f & i2 >> 6];
            l2 = 4;
            abyte2[3] = abyte1[i2 & 0x3f];
            if (--k1 != 0) goto _L6; else goto _L7
_L7:
            int j2;
            int i3;
            int j3;
            byte abyte3[];
            int k3;
            byte abyte4[];
            int l3;
            byte abyte5[];
            int i4;
            int j4;
            int k4;
            byte byte0;
            int l4;
            int i5;
            int j5;
            byte byte1;
            int k5;
            int l5;
            int i6;
            int j6;
            int k6;
            int l6;
            int i7;
            byte abyte6[];
            int j7;
            byte abyte7[];
            int k7;
            byte byte2;
            int l7;
            int i8;
            int j8;
            int k8;
            int l8;
            int i9;
            int j9;
            int k9;
            byte abyte8[];
            int l9;
            int i10;
            int j10;
            int k10;
            int l10;
            int i11;
            int j11;
            int k11;
            int l11;
            if (f)
            {
                k10 = 5;
                abyte2[l2] = 13;
            } else
            {
                k10 = l2;
            }
            l10 = k10 + 1;
            abyte2[k10] = 10;
            i3 = 19;
            j3 = l10;
            if (k2 + 3 > l1) goto _L9; else goto _L8
_L8:
            l9 = (0xff & abyte0[k2]) << 16 | (0xff & abyte0[k2 + 1]) << 8 | 0xff & abyte0[k2 + 2];
            abyte2[j3] = abyte1[0x3f & l9 >> 18];
            abyte2[j3 + 1] = abyte1[0x3f & l9 >> 12];
            abyte2[j3 + 2] = abyte1[0x3f & l9 >> 6];
            abyte2[j3 + 3] = abyte1[l9 & 0x3f];
            k2 += 3;
            l2 = j3 + 4;
            k1 = i3 - 1;
            if (k1 == 0)
            {
                if (f)
                {
                    i10 = l2 + 1;
                    abyte2[l2] = 13;
                } else
                {
                    i10 = l2;
                }
                j10 = i10 + 1;
                abyte2[i10] = 10;
                i3 = 19;
                j3 = j10;
                break MISSING_BLOCK_LABEL_174;
            }
              goto _L6
_L2:
            k2 = i1;
              goto _L10
_L3:
            if (i1 + 2 > l1) goto _L1; else goto _L11
_L11:
            i11 = (0xff & j[0]) << 16;
            j11 = i1 + 1;
            k11 = i11 | (0xff & abyte0[i1]) << 8;
            l11 = j11 + 1;
            i2 = k11 | 0xff & abyte0[j11];
            c = 0;
            k2 = l11;
              goto _L10
_L4:
            if (i1 + 1 > l1) goto _L1; else goto _L12
_L12:
            j2 = (0xff & j[0]) << 16 | (0xff & j[1]) << 8;
            k2 = i1 + 1;
            i2 = j2 | 0xff & abyte0[i1];
            c = 0;
              goto _L10
_L9:
            if (!flag) goto _L14; else goto _L13
_L13:
            if (k2 - c != l1 - 1) goto _L16; else goto _L15
_L15:
            if (c > 0)
            {
                abyte8 = j;
                i8 = 1;
                byte2 = abyte8[0];
                l7 = k2;
            } else
            {
                k7 = k2 + 1;
                byte2 = abyte0[k2];
                l7 = k7;
                i8 = 0;
            }
            j8 = (byte2 & 0xff) << 4;
            c = c - i8;
            k8 = j3 + 1;
            abyte2[j3] = abyte1[0x3f & j8 >> 6];
            l8 = k8 + 1;
            abyte2[k8] = abyte1[j8 & 0x3f];
            if (d)
            {
                k9 = l8 + 1;
                abyte2[l8] = 61;
                l8 = k9 + 1;
                abyte2[k9] = 61;
            }
            if (e)
            {
                if (f)
                {
                    j9 = l8 + 1;
                    abyte2[l8] = 13;
                    l8 = j9;
                }
                i9 = l8 + 1;
                abyte2[l8] = 10;
                l8 = i9;
            }
            k2 = l7;
            j3 = l8;
_L18:
            if (!g && c != 0)
            {
                throw new AssertionError();
            }
              goto _L17
_L16:
            if (k2 - c == l1 - 2)
            {
                if (c > 1)
                {
                    abyte7 = j;
                    l4 = 1;
                    byte0 = abyte7[0];
                } else
                {
                    k4 = k2 + 1;
                    byte0 = abyte0[k2];
                    k2 = k4;
                    l4 = 0;
                }
                i5 = (byte0 & 0xff) << 10;
                if (c > 0)
                {
                    abyte6 = j;
                    j7 = l4 + 1;
                    byte1 = abyte6[l4];
                    l4 = j7;
                } else
                {
                    j5 = k2 + 1;
                    byte1 = abyte0[k2];
                    k2 = j5;
                }
                k5 = i5 | (byte1 & 0xff) << 2;
                c = c - l4;
                l5 = j3 + 1;
                abyte2[j3] = abyte1[0x3f & k5 >> 12];
                i6 = l5 + 1;
                abyte2[l5] = abyte1[0x3f & k5 >> 6];
                j6 = i6 + 1;
                abyte2[i6] = abyte1[k5 & 0x3f];
                if (d)
                {
                    k6 = j6 + 1;
                    abyte2[j6] = 61;
                } else
                {
                    k6 = j6;
                }
                if (e)
                {
                    if (f)
                    {
                        i7 = k6 + 1;
                        abyte2[k6] = 13;
                        k6 = i7;
                    }
                    l6 = k6 + 1;
                    abyte2[k6] = 10;
                    k6 = l6;
                }
                j3 = k6;
            } else
            if (e && j3 > 0 && i3 != 19)
            {
                if (f)
                {
                    j4 = j3 + 1;
                    abyte2[j3] = 13;
                } else
                {
                    j4 = j3;
                }
                j3 = j4 + 1;
                abyte2[j4] = 10;
            }
            if (true) goto _L18; else goto _L17
_L17:
            if (!g && k2 != l1)
            {
                throw new AssertionError();
            }
              goto _L19
_L14:
            if (k2 != l1 - 1) goto _L21; else goto _L20
_L20:
            abyte5 = j;
            i4 = c;
            c = i4 + 1;
            abyte5[i4] = abyte0[k2];
_L19:
            b = j3;
            k = i3;
            return true;
_L21:
            if (k2 == l1 - 2)
            {
                abyte3 = j;
                k3 = c;
                c = k3 + 1;
                abyte3[k3] = abyte0[k2];
                abyte4 = j;
                l3 = c;
                c = l3 + 1;
                abyte4[l3] = abyte0[k2 + 1];
            }
            if (true) goto _L19; else goto _L6
_L6:
            i3 = k1;
            j3 = l2;
            break MISSING_BLOCK_LABEL_174;
        }

        static 
        {
            boolean flag;
            if (!com/inmobi/commons/thirdparty/Base64.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            g = flag;
        }

        public c(int i1, byte abyte0[])
        {
            boolean flag = true;
            super();
            a = abyte0;
            boolean flag1;
            boolean flag2;
            byte abyte1[];
            int j1;
            if ((i1 & 1) == 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            d = flag1;
            if ((i1 & 2) == 0)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            e = flag2;
            if ((i1 & 4) == 0)
            {
                flag = false;
            }
            f = flag;
            if ((i1 & 8) == 0)
            {
                abyte1 = h;
            } else
            {
                abyte1 = i;
            }
            l = abyte1;
            c = 0;
            if (e)
            {
                j1 = 19;
            } else
            {
                j1 = -1;
            }
            k = j1;
        }
    }

}
