// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.d;

import com.millennialmedia.a.a.b.a.e;
import com.millennialmedia.a.a.b.h;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

// Referenced classes of package com.millennialmedia.a.a.d:
//            d, b

public class a
    implements Closeable
{

    private static final char a[] = ")]}'\n".toCharArray();
    private final Reader b;
    private boolean c;
    private final char d[] = new char[1024];
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private long j;
    private int k;
    private String l;
    private int m[];
    private int n;

    public a(Reader reader)
    {
        c = false;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        m = new int[32];
        n = 0;
        int ai[] = m;
        int i1 = n;
        n = i1 + 1;
        ai[i1] = 6;
        if (reader == null)
        {
            throw new NullPointerException("in == null");
        } else
        {
            b = reader;
            return;
        }
    }

    static int a(a a1)
    {
        return a1.i;
    }

    static int a(a a1, int i1)
    {
        a1.i = i1;
        return i1;
    }

    private void a(int i1)
    {
        if (n == m.length)
        {
            int ai1[] = new int[2 * n];
            System.arraycopy(m, 0, ai1, 0, n);
            m = ai1;
        }
        int ai[] = m;
        int j1 = n;
        n = j1 + 1;
        ai[j1] = i1;
    }

    private boolean a(char c1)
    {
        switch (c1)
        {
        default:
            return true;

        case 35: // '#'
        case 47: // '/'
        case 59: // ';'
        case 61: // '='
        case 92: // '\\'
            w();
            // fall through

        case 9: // '\t'
        case 10: // '\n'
        case 12: // '\f'
        case 13: // '\r'
        case 32: // ' '
        case 44: // ','
        case 58: // ':'
        case 91: // '['
        case 93: // ']'
        case 123: // '{'
        case 125: // '}'
            return false;
        }
    }

    private boolean a(String s1)
    {
_L2:
        boolean flag;
        if (e + s1.length() > f)
        {
            boolean flag1 = b(s1.length());
            flag = false;
            if (!flag1)
            {
                break MISSING_BLOCK_LABEL_117;
            }
        }
        if (d[e] != '\n')
        {
            break; /* Loop/switch isn't completed */
        }
        g = 1 + g;
        h = 1 + e;
_L4:
        e = 1 + e;
        if (true) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L5:
        if (i1 >= s1.length())
        {
            break MISSING_BLOCK_LABEL_115;
        }
        if (d[i1 + e] != s1.charAt(i1)) goto _L4; else goto _L3
_L3:
        i1++;
          goto _L5
          goto _L4
        flag = true;
        return flag;
    }

    static int b(a a1)
    {
        return a1.o();
    }

    private int b(boolean flag)
    {
        char ac[];
        int i1;
        int j1;
        ac = d;
        i1 = e;
        j1 = f;
_L2:
        int k1;
        do
        {
            if (i1 == j1)
            {
                e = i1;
                char c1;
                boolean flag1;
                if (!b(1))
                {
                    if (flag)
                    {
                        throw new EOFException((new StringBuilder()).append("End of input at line ").append(u()).append(" column ").append(v()).toString());
                    } else
                    {
                        return -1;
                    }
                }
                i1 = e;
                j1 = f;
            }
            k1 = i1 + 1;
            c1 = ac[i1];
            if (c1 == '\n')
            {
                g = 1 + g;
                h = k1;
                i1 = k1;
            } else
            {
label0:
                {
                    if (c1 == ' ' || c1 == '\r')
                    {
                        break label0;
                    }
                    if (c1 == '\t')
                    {
                        i1 = k1;
                    } else
                    {
                        if (c1 == '/')
                        {
                            e = k1;
                            if (k1 == j1)
                            {
                                e = -1 + e;
                                flag1 = b(2);
                                e = 1 + e;
                                if (!flag1)
                                {
                                    return c1;
                                }
                            }
                            w();
                            switch (ac[e])
                            {
                            default:
                                return c1;

                            case 42: // '*'
                                e = 1 + e;
                                if (!a("*/"))
                                {
                                    throw b("Unterminated comment");
                                }
                                i1 = 2 + e;
                                j1 = f;
                                break;

                            case 47: // '/'
                                e = 1 + e;
                                x();
                                i1 = e;
                                j1 = f;
                                break;
                            }
                        } else
                        if (c1 == '#')
                        {
                            e = k1;
                            w();
                            x();
                            i1 = e;
                            j1 = f;
                        } else
                        {
                            e = k1;
                            return c1;
                        }
                        continue; /* Loop/switch isn't completed */
                    }
                }
            }
        } while (true);
        i1 = k1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private IOException b(String s1)
    {
        throw new d((new StringBuilder()).append(s1).append(" at line ").append(u()).append(" column ").append(v()).toString());
    }

    private String b(char c1)
    {
        char ac[] = d;
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            int i1 = e;
            int j1 = f;
            int k1 = i1;
            while (k1 < j1) 
            {
                int l1 = k1 + 1;
                char c2 = ac[k1];
                if (c2 == c1)
                {
                    e = l1;
                    stringbuilder.append(ac, i1, -1 + (l1 - i1));
                    return stringbuilder.toString();
                }
                if (c2 == '\\')
                {
                    e = l1;
                    stringbuilder.append(ac, i1, -1 + (l1 - i1));
                    stringbuilder.append(y());
                    i1 = e;
                    j1 = f;
                    l1 = i1;
                } else
                if (c2 == '\n')
                {
                    g = 1 + g;
                    h = l1;
                }
                k1 = l1;
            }
            stringbuilder.append(ac, i1, k1 - i1);
            e = k1;
        } while (b(1));
        throw b("Unterminated string");
    }

    private boolean b(int i1)
    {
        char ac[] = d;
        h = h - e;
        boolean flag;
        if (f != e)
        {
            f = f - e;
            System.arraycopy(ac, e, ac, 0, f);
        } else
        {
            f = 0;
        }
        e = 0;
        do
        {
            int j1 = b.read(ac, f, ac.length - f);
            flag = false;
            if (j1 == -1)
            {
                break;
            }
            f = j1 + f;
            if (g == 0 && h == 0 && f > 0 && ac[0] == '\uFEFF')
            {
                e = 1 + e;
                h = 1 + h;
                i1++;
            }
            if (f < i1)
            {
                continue;
            }
            flag = true;
            break;
        } while (true);
        return flag;
    }

    static int c(a a1)
    {
        return a1.u();
    }

    private void c(char c1)
    {
        char ac[] = d;
        do
        {
            int i1 = e;
            int j1 = f;
            int k1 = i1;
            while (k1 < j1) 
            {
                int l1 = k1 + 1;
                char c2 = ac[k1];
                if (c2 == c1)
                {
                    e = l1;
                    return;
                }
                if (c2 == '\\')
                {
                    e = l1;
                    y();
                    l1 = e;
                    j1 = f;
                } else
                if (c2 == '\n')
                {
                    g = 1 + g;
                    h = l1;
                }
                k1 = l1;
            }
            e = k1;
        } while (b(1));
        throw b("Unterminated string");
    }

    static int d(a a1)
    {
        return a1.v();
    }

    private int o()
    {
        int i1 = m[-1 + n];
        if (i1 != 1) goto _L2; else goto _L1
_L1:
        m[-1 + n] = 2;
_L14:
        b(true);
        JVM INSTR lookupswitch 7: default 100
    //                   34: 668
    //                   39: 655
    //                   44: 615
    //                   59: 615
    //                   91: 689
    //                   93: 603
    //                   123: 696;
           goto _L3 _L4 _L5 _L6 _L6 _L7 _L8 _L9
_L3:
        int k1;
        e = -1 + e;
        if (n == 1)
        {
            w();
        }
        k1 = q();
        if (k1 == 0) goto _L11; else goto _L10
_L10:
        return k1;
_L2:
        if (i1 == 2)
        {
            switch (b(true))
            {
            default:
                throw b("Unterminated array");

            case 93: // ']'
                i = 4;
                return 4;

            case 59: // ';'
                w();
                break;

            case 44: // ','
                break;
            }
        } else
        {
            if (i1 == 3 || i1 == 5)
            {
                m[-1 + n] = 4;
                if (i1 == 5)
                {
                    switch (b(true))
                    {
                    default:
                        throw b("Unterminated object");

                    case 125: // '}'
                        i = 2;
                        return 2;

                    case 59: // ';'
                        w();
                        break;

                    case 44: // ','
                        break;
                    }
                }
                int j1 = b(true);
                switch (j1)
                {
                default:
                    w();
                    e = -1 + e;
                    if (a((char)j1))
                    {
                        i = 14;
                        return 14;
                    } else
                    {
                        throw b("Expected name");
                    }

                case 34: // '"'
                    i = 13;
                    return 13;

                case 39: // '\''
                    w();
                    i = 12;
                    return 12;

                case 125: // '}'
                    break;
                }
                if (i1 != 5)
                {
                    i = 2;
                    return 2;
                } else
                {
                    throw b("Expected name");
                }
            }
            if (i1 == 4)
            {
                m[-1 + n] = 5;
                switch (b(true))
                {
                case 59: // ';'
                case 60: // '<'
                default:
                    throw b("Expected ':'");

                case 61: // '='
                    w();
                    if ((e < f || b(1)) && d[e] == '>')
                    {
                        e = 1 + e;
                    }
                    break;

                case 58: // ':'
                    break;
                }
            } else
            if (i1 == 6)
            {
                if (c)
                {
                    z();
                }
                m[-1 + n] = 7;
            } else
            if (i1 == 7)
            {
                if (b(false) == -1)
                {
                    i = 17;
                    return 17;
                }
                w();
                e = -1 + e;
            } else
            if (i1 == 8)
            {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (i1 == 1)
        {
            i = 4;
            return 4;
        }
_L6:
        if (i1 == 1 || i1 == 2)
        {
            w();
            e = -1 + e;
            i = 7;
            return 7;
        } else
        {
            throw b("Unexpected value");
        }
_L5:
        w();
        i = 8;
        return 8;
_L4:
        if (n == 1)
        {
            w();
        }
        i = 9;
        return 9;
_L7:
        i = 3;
        return 3;
_L9:
        i = 1;
        return 1;
_L11:
        if ((k1 = r()) != 0) goto _L10; else goto _L12
_L12:
        if (!a(d[e]))
        {
            throw b("Expected value");
        } else
        {
            w();
            i = 10;
            return 10;
        }
        if (true) goto _L14; else goto _L13
_L13:
    }

    private int q()
    {
        char c1 = d[e];
        String s1;
        String s2;
        int i1;
        if (c1 == 't' || c1 == 'T')
        {
            s1 = "true";
            s2 = "TRUE";
            i1 = 5;
        } else
        if (c1 == 'f' || c1 == 'F')
        {
            s1 = "false";
            s2 = "FALSE";
            i1 = 6;
        } else
        if (c1 == 'n' || c1 == 'N')
        {
            s1 = "null";
            s2 = "NULL";
            i1 = 7;
        } else
        {
            return 0;
        }
        do
        {
            int j1 = s1.length();
            for (int k1 = 1; k1 < j1; k1++)
            {
                if (k1 + e >= f && !b(k1 + 1))
                {
                    return 0;
                }
                char c2 = d[k1 + e];
                if (c2 != s1.charAt(k1) && c2 != s2.charAt(k1))
                {
                    return 0;
                }
            }

            if ((j1 + e < f || b(j1 + 1)) && a(d[j1 + e]))
            {
                return 0;
            }
            e = j1 + e;
            i = i1;
            return i1;
        } while (true);
    }

    private int r()
    {
        char ac[];
        long l1;
        boolean flag;
        boolean flag1;
        int k1;
        int i2;
        int j2;
        int k2;
        ac = d;
        int i1 = e;
        int j1 = f;
        l1 = 0L;
        flag = false;
        flag1 = true;
        k1 = 0;
        i2 = 0;
        j2 = j1;
        k2 = i1;
_L12:
        if (k2 + i2 != j2) goto _L2; else goto _L1
_L1:
        if (i2 == ac.length)
        {
            return 0;
        }
        if (b(i2 + 1)) goto _L4; else goto _L3
_L4:
        k2 = e;
        j2 = f;
_L2:
        c1 = ac[k2 + i2];
        c1;
        JVM INSTR lookupswitch 5: default 196
    //                   43: 301
    //                   45: 221
    //                   46: 360
    //                   69: 328
    //                   101: 328;
           goto _L5 _L6 _L7 _L8 _L9 _L9
_L6:
        break; /* Loop/switch isn't completed */
_L5:
        if (c1 >= '0' && c1 <= '9')
        {
            break MISSING_BLOCK_LABEL_386;
        }
        if (a(c1))
        {
            return 0;
        }
        break; /* Loop/switch isn't completed */
_L7:
        int l2;
        boolean flag2;
        boolean flag3;
        long l3;
        boolean flag4;
        boolean flag5;
        if (k1 == 0)
        {
            l2 = 1;
            boolean flag6 = flag1;
            flag3 = true;
            flag2 = flag6;
            l3 = l1;
        } else
        if (k1 == 5)
        {
            l2 = 6;
            flag2 = flag1;
            flag3 = flag;
            l3 = l1;
        } else
        {
            return 0;
        }
        break MISSING_BLOCK_LABEL_244;
        if (true) goto _L3; else goto _L10
_L10:
        i2++;
        flag4 = flag2;
        k1 = l2;
        flag5 = flag3;
        flag1 = flag4;
        l1 = l3;
        flag = flag5;
        if (true) goto _L12; else goto _L11
_L11:
        if (k1 == 5)
        {
            l2 = 6;
            flag2 = flag1;
            flag3 = flag;
            l3 = l1;
        } else
        {
            return 0;
        }
          goto _L10
_L9:
        if (k1 == 2 || k1 == 4)
        {
            l2 = 5;
            flag2 = flag1;
            flag3 = flag;
            l3 = l1;
        } else
        {
            return 0;
        }
          goto _L10
_L8:
        if (k1 == 2)
        {
            l2 = 3;
            flag2 = flag1;
            flag3 = flag;
            l3 = l1;
        } else
        {
            return 0;
        }
          goto _L10
        if (k1 == 1 || k1 == 0)
        {
            long l4 = -(c1 - 48);
            l2 = 2;
            flag2 = flag1;
            flag3 = flag;
            l3 = l4;
        } else
        if (k1 == 2)
        {
            if (l1 == 0L)
            {
                return 0;
            }
            long l5 = 10L * l1 - (long)(c1 - 48);
            boolean flag7;
            boolean flag8;
            int i3;
            if (l1 > 0xf333333333333334L || l1 == 0xf333333333333334L && l5 < l1)
            {
                flag7 = true;
            } else
            {
                flag7 = false;
            }
            flag8 = flag7 & flag1;
            flag3 = flag;
            l3 = l5;
            i3 = k1;
            flag2 = flag8;
            l2 = i3;
        } else
        if (k1 == 3)
        {
            l2 = 4;
            flag2 = flag1;
            flag3 = flag;
            l3 = l1;
        } else
        if (k1 == 5 || k1 == 6)
        {
            l2 = 7;
            flag2 = flag1;
            flag3 = flag;
            l3 = l1;
        } else
        {
            l2 = k1;
            flag2 = flag1;
            flag3 = flag;
            l3 = l1;
        }
          goto _L10
_L3:
        if (k1 == 2 && flag1 && (l1 != 0x8000000000000000L || flag))
        {
            char c1;
            if (!flag)
            {
                l1 = -l1;
            }
            j = l1;
            e = i2 + e;
            i = 15;
            return 15;
        }
        if (k1 == 2 || k1 == 4 || k1 == 7)
        {
            k = i2;
            i = 16;
            return 16;
        } else
        {
            return 0;
        }
    }

    private String s()
    {
        StringBuilder stringbuilder;
        int i1;
        stringbuilder = null;
        i1 = 0;
_L2:
        String s1;
        if (i1 + e < f)
        {
            switch (d[i1 + e])
            {
            default:
                i1++;
                continue; /* Loop/switch isn't completed */

            case 35: // '#'
            case 47: // '/'
            case 59: // ';'
            case 61: // '='
            case 92: // '\\'
                w();
                break;

            case 9: // '\t'
            case 10: // '\n'
            case 12: // '\f'
            case 13: // '\r'
            case 32: // ' '
            case 44: // ','
            case 58: // ':'
            case 91: // '['
            case 93: // ']'
            case 123: // '{'
            case 125: // '}'
                break;
            }
        } else
        if (i1 < d.length)
        {
            if (b(i1 + 1))
            {
                continue; /* Loop/switch isn't completed */
            }
        } else
        {
label0:
            {
                if (stringbuilder == null)
                {
                    stringbuilder = new StringBuilder();
                }
                stringbuilder.append(d, e, i1);
                e = i1 + e;
                if (b(1))
                {
                    break label0;
                }
                i1 = 0;
            }
        }
        if (stringbuilder == null)
        {
            s1 = new String(d, e, i1);
        } else
        {
            stringbuilder.append(d, e, i1);
            s1 = stringbuilder.toString();
        }
        e = i1 + e;
        return s1;
        i1 = 0;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void t()
    {
_L2:
        int i1;
label0:
        {
            i1 = 0;
            do
            {
                if (i1 + e >= f)
                {
                    break label0;
                }
                switch (d[i1 + e])
                {
                default:
                    i1++;
                    break;

                case 35: // '#'
                case 47: // '/'
                case 59: // ';'
                case 61: // '='
                case 92: // '\\'
                    w();
                    // fall through

                case 9: // '\t'
                case 10: // '\n'
                case 12: // '\f'
                case 13: // '\r'
                case 32: // ' '
                case 44: // ','
                case 58: // ':'
                case 91: // '['
                case 93: // ']'
                case 123: // '{'
                case 125: // '}'
label1:
                    {
                        e = i1 + e;
                        break label1;
                    }
                    break;
                }
            } while (true);
            break label0;
        }
        return;
        e = i1 + e;
        if (!b(1))
        {
            return;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private int u()
    {
        return 1 + g;
    }

    private int v()
    {
        return 1 + (e - h);
    }

    private void w()
    {
        if (!c)
        {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        } else
        {
            return;
        }
    }

    private void x()
    {
        char c1;
        do
        {
            if (e < f || b(1))
            {
                char ac[] = d;
                int i1 = e;
                e = i1 + 1;
                c1 = ac[i1];
                if (c1 != '\n')
                {
                    continue;
                }
                g = 1 + g;
                h = e;
            }
            return;
        } while (c1 != '\r');
    }

    private char y()
    {
        if (e == f && !b(1))
        {
            throw b("Unterminated escape sequence");
        }
        char ac[] = d;
        int i1 = e;
        e = i1 + 1;
        char c1 = ac[i1];
        switch (c1)
        {
        default:
            return c1;

        case 117: // 'u'
            if (4 + e > f && !b(4))
            {
                throw b("Unterminated escape sequence");
            }
            int j1 = e;
            int k1 = j1 + 4;
            char c2 = '\0';
            int l1 = j1;
            while (l1 < k1) 
            {
                char c3 = d[l1];
                char c4 = (char)(c2 << 4);
                if (c3 >= '0' && c3 <= '9')
                {
                    c2 = (char)(c4 + (c3 - 48));
                } else
                if (c3 >= 'a' && c3 <= 'f')
                {
                    c2 = (char)(c4 + (10 + (c3 - 97)));
                } else
                if (c3 >= 'A' && c3 <= 'F')
                {
                    c2 = (char)(c4 + (10 + (c3 - 65)));
                } else
                {
                    throw new NumberFormatException((new StringBuilder()).append("\\u").append(new String(d, e, 4)).toString());
                }
                l1++;
            }
            e = 4 + e;
            return c2;

        case 116: // 't'
            return '\t';

        case 98: // 'b'
            return '\b';

        case 110: // 'n'
            return '\n';

        case 114: // 'r'
            return '\r';

        case 102: // 'f'
            return '\f';

        case 10: // '\n'
            g = 1 + g;
            h = e;
            return c1;
        }
    }

    private void z()
    {
        b(true);
        e = -1 + e;
        if (e + a.length <= f || b(a.length)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i1 = 0;
label0:
        do
        {
label1:
            {
                if (i1 >= a.length)
                {
                    break label1;
                }
                if (d[i1 + e] != a[i1])
                {
                    break label0;
                }
                i1++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        e = e + a.length;
        return;
    }

    public void a()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 3)
        {
            a(1);
            i = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected BEGIN_ARRAY but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
        }
    }

    public final void a(boolean flag)
    {
        c = flag;
    }

    public void b()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 4)
        {
            n = -1 + n;
            i = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected END_ARRAY but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
        }
    }

    public void c()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 1)
        {
            a(3);
            i = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected BEGIN_OBJECT but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
        }
    }

    public void close()
    {
        i = 0;
        m[0] = 8;
        n = 1;
        b.close();
    }

    public void d()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 2)
        {
            n = -1 + n;
            i = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected END_OBJECT but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
        }
    }

    public boolean e()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        return i1 != 2 && i1 != 4;
    }

    public b f()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        switch (i1)
        {
        default:
            throw new AssertionError();

        case 1: // '\001'
            return b.c;

        case 2: // '\002'
            return b.d;

        case 3: // '\003'
            return b.a;

        case 4: // '\004'
            return b.b;

        case 12: // '\f'
        case 13: // '\r'
        case 14: // '\016'
            return com.millennialmedia.a.a.d.b.e;

        case 5: // '\005'
        case 6: // '\006'
            return com.millennialmedia.a.a.d.b.h;

        case 7: // '\007'
            return b.i;

        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 11: // '\013'
            return b.f;

        case 15: // '\017'
        case 16: // '\020'
            return b.g;

        case 17: // '\021'
            return b.j;
        }
    }

    public String g()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        String s1;
        if (i1 == 14)
        {
            s1 = s();
        } else
        if (i1 == 12)
        {
            s1 = b('\'');
        } else
        if (i1 == 13)
        {
            s1 = b('"');
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a name but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
        }
        i = 0;
        return s1;
    }

    public String h()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        String s1;
        if (i1 == 10)
        {
            s1 = s();
        } else
        if (i1 == 8)
        {
            s1 = b('\'');
        } else
        if (i1 == 9)
        {
            s1 = b('"');
        } else
        if (i1 == 11)
        {
            s1 = l;
            l = null;
        } else
        if (i1 == 15)
        {
            s1 = Long.toString(j);
        } else
        if (i1 == 16)
        {
            s1 = new String(d, e, k);
            e = e + k;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a string but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
        }
        i = 0;
        return s1;
    }

    public boolean i()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 5)
        {
            i = 0;
            return true;
        }
        if (i1 == 6)
        {
            i = 0;
            return false;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a boolean but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
        }
    }

    public void j()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 7)
        {
            i = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected null but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
        }
    }

    public double k()
    {
        int i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 15)
        {
            i = 0;
            return (double)j;
        }
        if (i1 == 16)
        {
            l = new String(d, e, k);
            e = e + k;
        } else
        if (i1 == 8 || i1 == 9)
        {
            char c1;
            if (i1 == 8)
            {
                c1 = '\'';
            } else
            {
                c1 = '"';
            }
            l = b(c1);
        } else
        {
            if (i1 != 10)
            {
                continue;
            }
            l = s();
        }
        do
        {
            i = 11;
            double d1 = Double.parseDouble(l);
            if (!c && (Double.isNaN(d1) || Double.isInfinite(d1)))
            {
                throw new d((new StringBuilder()).append("JSON forbids NaN and infinities: ").append(d1).append(" at line ").append(u()).append(" column ").append(v()).toString());
            } else
            {
                l = null;
                i = 0;
                return d1;
            }
        } while (i1 == 11);
        throw new IllegalStateException((new StringBuilder()).append("Expected a double but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
    }

    public long l()
    {
        int i1;
        i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 15)
        {
            i = 0;
            return j;
        }
        if (i1 != 16) goto _L2; else goto _L1
_L1:
        l = new String(d, e, k);
        e = e + k;
_L3:
        i = 11;
        double d1 = Double.parseDouble(l);
        long l1 = (long)d1;
        char c1;
        NumberFormatException numberformatexception;
        long l2;
        if ((double)l1 != d1)
        {
            throw new NumberFormatException((new StringBuilder()).append("Expected a long but was ").append(l).append(" at line ").append(u()).append(" column ").append(v()).toString());
        } else
        {
            l = null;
            i = 0;
            return l1;
        }
_L2:
        if (i1 != 8 && i1 != 9)
        {
            break MISSING_BLOCK_LABEL_213;
        }
        if (i1 == 8)
        {
            c1 = '\'';
        } else
        {
            c1 = '"';
        }
        l = b(c1);
        l2 = Long.parseLong(l);
        i = 0;
        return l2;
        numberformatexception;
          goto _L3
        throw new IllegalStateException((new StringBuilder()).append("Expected a long but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
    }

    public int m()
    {
        int i1;
        i1 = i;
        if (i1 == 0)
        {
            i1 = o();
        }
        if (i1 == 15)
        {
            int l1 = (int)j;
            if (j != (long)l1)
            {
                throw new NumberFormatException((new StringBuilder()).append("Expected an int but was ").append(j).append(" at line ").append(u()).append(" column ").append(v()).toString());
            } else
            {
                i = 0;
                return l1;
            }
        }
        if (i1 != 16) goto _L2; else goto _L1
_L1:
        l = new String(d, e, k);
        e = e + k;
_L3:
        i = 11;
        double d1 = Double.parseDouble(l);
        int j1 = (int)d1;
        char c1;
        NumberFormatException numberformatexception;
        int k1;
        if ((double)j1 != d1)
        {
            throw new NumberFormatException((new StringBuilder()).append("Expected an int but was ").append(l).append(" at line ").append(u()).append(" column ").append(v()).toString());
        } else
        {
            l = null;
            i = 0;
            return j1;
        }
_L2:
        if (i1 != 8 && i1 != 9)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (i1 == 8)
        {
            c1 = '\'';
        } else
        {
            c1 = '"';
        }
        l = b(c1);
        k1 = Integer.parseInt(l);
        i = 0;
        return k1;
        numberformatexception;
          goto _L3
        throw new IllegalStateException((new StringBuilder()).append("Expected an int but was ").append(f()).append(" at line ").append(u()).append(" column ").append(v()).toString());
    }

    public void n()
    {
        int i1 = 0;
_L2:
        int j1;
        j1 = i;
        if (j1 == 0)
        {
            j1 = o();
        }
        if (j1 != 3)
        {
            break; /* Loop/switch isn't completed */
        }
        a(1);
        i1++;
_L3:
        i = 0;
        if (i1 == 0)
        {
            return;
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (j1 == 1)
        {
            a(3);
            i1++;
        } else
        if (j1 == 4)
        {
            n = -1 + n;
            i1--;
        } else
        if (j1 == 2)
        {
            n = -1 + n;
            i1--;
        } else
        if (j1 == 14 || j1 == 10)
        {
            t();
        } else
        if (j1 == 8 || j1 == 12)
        {
            c('\'');
        } else
        if (j1 == 9 || j1 == 13)
        {
            c('"');
        } else
        if (j1 == 16)
        {
            e = e + k;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public final boolean p()
    {
        return c;
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append(" at line ").append(u()).append(" column ").append(v()).toString();
    }

    static 
    {
        h.a = new h() {

            public void a(a a1)
            {
                if (a1 instanceof e)
                {
                    ((e)a1).o();
                    return;
                }
                int i1 = a.a(a1);
                if (i1 == 0)
                {
                    i1 = a.b(a1);
                }
                if (i1 == 13)
                {
                    a.a(a1, 9);
                    return;
                }
                if (i1 == 12)
                {
                    a.a(a1, 8);
                    return;
                }
                if (i1 == 14)
                {
                    a.a(a1, 10);
                    return;
                } else
                {
                    throw new IllegalStateException((new StringBuilder()).append("Expected a name but was ").append(a1.f()).append(" ").append(" at line ").append(a.c(a1)).append(" column ").append(a.d(a1)).toString());
                }
            }

        };
    }
}
