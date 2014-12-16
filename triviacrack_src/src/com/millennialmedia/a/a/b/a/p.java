// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.i;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.h;
import com.millennialmedia.a.a.j;
import com.millennialmedia.a.a.k;
import com.millennialmedia.a.a.l;
import com.millennialmedia.a.a.m;
import com.millennialmedia.a.a.o;
import com.millennialmedia.a.a.q;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.UUID;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            q

public final class p
{

    public static final s A;
    public static final t B;
    public static final s C;
    public static final t D;
    public static final s E;
    public static final t F;
    public static final s G;
    public static final t H;
    public static final s I;
    public static final t J;
    public static final t K = new t() {

        public s a(e e1, com.millennialmedia.a.a.c.a a1)
        {
            if (a1.a() != java/sql/Timestamp)
            {
                return null;
            } else
            {
                return new s(this, e1.a(java/util/Date)) {

                    final s a;
                    final _cls15 b;

                    public Timestamp a(a a1)
                    {
                        Date date = (Date)a.b(a1);
                        if (date != null)
                        {
                            return new Timestamp(date.getTime());
                        } else
                        {
                            return null;
                        }
                    }

                    public volatile void a(c c1, Object obj)
                    {
                        a(c1, (Timestamp)obj);
                    }

                    public void a(c c1, Timestamp timestamp)
                    {
                        a.a(c1, timestamp);
                    }

                    public Object b(a a1)
                    {
                        return a(a1);
                    }

            
            {
                b = _pcls15;
                a = s1;
                super();
            }
                };
            }
        }

    };
    public static final s L;
    public static final t M;
    public static final s N;
    public static final t O;
    public static final s P;
    public static final t Q;
    public static final t R = a();
    public static final s a;
    public static final t b;
    public static final s c;
    public static final t d;
    public static final s e;
    public static final s f = new s() {

        public Boolean a(a a1)
        {
            if (a1.f() == b.i)
            {
                a1.j();
                return null;
            } else
            {
                return Boolean.valueOf(a1.h());
            }
        }

        public void a(c c1, Boolean boolean1)
        {
            String s1;
            if (boolean1 == null)
            {
                s1 = "null";
            } else
            {
                s1 = boolean1.toString();
            }
            c1.b(s1);
        }

        public volatile void a(c c1, Object obj)
        {
            a(c1, (Boolean)obj);
        }

        public Object b(a a1)
        {
            return a(a1);
        }

    };
    public static final t g;
    public static final s h;
    public static final t i;
    public static final s j;
    public static final t k;
    public static final s l;
    public static final t m;
    public static final s n = new s() {

        public Number a(a a1)
        {
            if (a1.f() == b.i)
            {
                a1.j();
                return null;
            }
            Long long1;
            try
            {
                long1 = Long.valueOf(a1.l());
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new q(numberformatexception);
            }
            return long1;
        }

        public void a(c c1, Number number)
        {
            c1.a(number);
        }

        public volatile void a(c c1, Object obj)
        {
            a(c1, (Number)obj);
        }

        public Object b(a a1)
        {
            return a(a1);
        }

    };
    public static final s o = new s() {

        public Number a(a a1)
        {
            if (a1.f() == b.i)
            {
                a1.j();
                return null;
            } else
            {
                return Float.valueOf((float)a1.k());
            }
        }

        public void a(c c1, Number number)
        {
            c1.a(number);
        }

        public volatile void a(c c1, Object obj)
        {
            a(c1, (Number)obj);
        }

        public Object b(a a1)
        {
            return a(a1);
        }

    };
    public static final s p = new s() {

        public Number a(a a1)
        {
            if (a1.f() == b.i)
            {
                a1.j();
                return null;
            } else
            {
                return Double.valueOf(a1.k());
            }
        }

        public void a(c c1, Number number)
        {
            c1.a(number);
        }

        public volatile void a(c c1, Object obj)
        {
            a(c1, (Number)obj);
        }

        public Object b(a a1)
        {
            return a(a1);
        }

    };
    public static final s q;
    public static final t r;
    public static final s s;
    public static final t t;
    public static final s u;
    public static final s v = new s() {

        public BigDecimal a(a a1)
        {
            if (a1.f() == b.i)
            {
                a1.j();
                return null;
            }
            BigDecimal bigdecimal;
            try
            {
                bigdecimal = new BigDecimal(a1.h());
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new q(numberformatexception);
            }
            return bigdecimal;
        }

        public volatile void a(c c1, Object obj)
        {
            a(c1, (BigDecimal)obj);
        }

        public void a(c c1, BigDecimal bigdecimal)
        {
            c1.a(bigdecimal);
        }

        public Object b(a a1)
        {
            return a(a1);
        }

    };
    public static final s w = new s() {

        public BigInteger a(a a1)
        {
            if (a1.f() == b.i)
            {
                a1.j();
                return null;
            }
            BigInteger biginteger;
            try
            {
                biginteger = new BigInteger(a1.h());
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new q(numberformatexception);
            }
            return biginteger;
        }

        public volatile void a(c c1, Object obj)
        {
            a(c1, (BigInteger)obj);
        }

        public void a(c c1, BigInteger biginteger)
        {
            c1.a(biginteger);
        }

        public Object b(a a1)
        {
            return a(a1);
        }

    };
    public static final t x;
    public static final s y;
    public static final t z;

    public static t a()
    {
        return new t() {

            public s a(e e1, com.millennialmedia.a.a.c.a a1)
            {
                Class class1 = a1.a();
                if (!java/lang/Enum.isAssignableFrom(class1) || class1 == java/lang/Enum)
                {
                    return null;
                }
                if (!class1.isEnum())
                {
                    class1 = class1.getSuperclass();
                }
                return new com.millennialmedia.a.a.b.a.q(class1);
            }

        };
    }

    public static t a(Class class1, s s1)
    {
        return new t(class1, s1) {

            final Class a;
            final s b;

            public s a(e e1, com.millennialmedia.a.a.c.a a1)
            {
                if (a1.a() == a)
                {
                    return b;
                } else
                {
                    return null;
                }
            }

            public String toString()
            {
                return (new StringBuilder()).append("Factory[type=").append(a.getName()).append(",adapter=").append(b).append("]").toString();
            }

            
            {
                a = class1;
                b = s1;
                super();
            }
        };
    }

    public static t a(Class class1, Class class2, s s1)
    {
        return new t(class1, class2, s1) {

            final Class a;
            final Class b;
            final s c;

            public s a(e e1, com.millennialmedia.a.a.c.a a1)
            {
                Class class3 = a1.a();
                if (class3 == a || class3 == b)
                {
                    return c;
                } else
                {
                    return null;
                }
            }

            public String toString()
            {
                return (new StringBuilder()).append("Factory[type=").append(b.getName()).append("+").append(a.getName()).append(",adapter=").append(c).append("]").toString();
            }

            
            {
                a = class1;
                b = class2;
                c = s1;
                super();
            }
        };
    }

    public static t b(Class class1, s s1)
    {
        return new t(class1, s1) {

            final Class a;
            final s b;

            public s a(e e1, com.millennialmedia.a.a.c.a a1)
            {
                if (a.isAssignableFrom(a1.a()))
                {
                    return b;
                } else
                {
                    return null;
                }
            }

            public String toString()
            {
                return (new StringBuilder()).append("Factory[typeHierarchy=").append(a.getName()).append(",adapter=").append(b).append("]").toString();
            }

            
            {
                a = class1;
                b = s1;
                super();
            }
        };
    }

    public static t b(Class class1, Class class2, s s1)
    {
        return new t(class1, class2, s1) {

            final Class a;
            final Class b;
            final s c;

            public s a(e e1, com.millennialmedia.a.a.c.a a1)
            {
                Class class3 = a1.a();
                if (class3 == a || class3 == b)
                {
                    return c;
                } else
                {
                    return null;
                }
            }

            public String toString()
            {
                return (new StringBuilder()).append("Factory[type=").append(a.getName()).append("+").append(b.getName()).append(",adapter=").append(c).append("]").toString();
            }

            
            {
                a = class1;
                b = class2;
                c = s1;
                super();
            }
        };
    }

    static 
    {
        a = new s() {

            public Class a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                } else
                {
                    throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
                }
            }

            public void a(c c1, Class class1)
            {
                if (class1 == null)
                {
                    c1.f();
                    return;
                } else
                {
                    throw new UnsupportedOperationException((new StringBuilder()).append("Attempted to serialize java.lang.Class: ").append(class1.getName()).append(". Forgot to register a type adapter?").toString());
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Class)obj);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        b = a(java/lang/Class, a);
        c = new s() {

            public BitSet a(a a1)
            {
                BitSet bitset;
                b b1;
                int i1;
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                }
                bitset = new BitSet();
                a1.a();
                b1 = a1.f();
                i1 = 0;
_L2:
                boolean flag;
                if (b1 == b.b)
                {
                    break MISSING_BLOCK_LABEL_210;
                }
                class _cls25
                {

                    static final int a[];

                    static 
                    {
                        a = new int[com.millennialmedia.a.a.d.b.values().length];
                        try
                        {
                            a[b.g.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            a[b.h.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            a[b.f.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            a[b.i.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror3) { }
                        try
                        {
                            a[b.a.ordinal()] = 5;
                        }
                        catch (NoSuchFieldError nosuchfielderror4) { }
                        try
                        {
                            a[b.c.ordinal()] = 6;
                        }
                        catch (NoSuchFieldError nosuchfielderror5) { }
                        try
                        {
                            a[b.j.ordinal()] = 7;
                        }
                        catch (NoSuchFieldError nosuchfielderror6) { }
                        try
                        {
                            a[b.e.ordinal()] = 8;
                        }
                        catch (NoSuchFieldError nosuchfielderror7) { }
                        try
                        {
                            a[b.d.ordinal()] = 9;
                        }
                        catch (NoSuchFieldError nosuchfielderror8) { }
                        try
                        {
                            a[b.b.ordinal()] = 10;
                        }
                        catch (NoSuchFieldError nosuchfielderror9)
                        {
                            return;
                        }
                    }
                }

                switch (com.millennialmedia.a.a.b.a._cls25.a[b1.ordinal()])
                {
                default:
                    throw new q((new StringBuilder()).append("Invalid bitset value type: ").append(b1).toString());

                case 2: // '\002'
                    break; /* Loop/switch isn't completed */

                case 3: // '\003'
                    break MISSING_BLOCK_LABEL_150;

                case 1: // '\001'
                    if (a1.m() != 0)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    break;
                }
_L3:
                if (flag)
                {
                    bitset.set(i1);
                }
                i1++;
                b1 = a1.f();
                if (true) goto _L2; else goto _L1
_L1:
                flag = a1.i();
                  goto _L3
                String s1 = a1.h();
                int j1;
                try
                {
                    j1 = Integer.parseInt(s1);
                }
                catch (NumberFormatException numberformatexception)
                {
                    throw new q((new StringBuilder()).append("Error: Expecting: bitset number value (1, 0), Found: ").append(s1).toString());
                }
                if (j1 != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                  goto _L3
                a1.b();
                return bitset;
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (BitSet)obj);
            }

            public void a(c c1, BitSet bitset)
            {
                if (bitset == null)
                {
                    c1.f();
                    return;
                }
                c1.b();
                int i1 = 0;
                while (i1 < bitset.length()) 
                {
                    int j1;
                    if (bitset.get(i1))
                    {
                        j1 = 1;
                    } else
                    {
                        j1 = 0;
                    }
                    c1.a(j1);
                    i1++;
                }
                c1.c();
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        d = a(java/util/BitSet, c);
        e = new s() {

            public Boolean a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                }
                if (a1.f() == b.f)
                {
                    return Boolean.valueOf(Boolean.parseBoolean(a1.h()));
                } else
                {
                    return Boolean.valueOf(a1.i());
                }
            }

            public void a(c c1, Boolean boolean1)
            {
                if (boolean1 == null)
                {
                    c1.f();
                    return;
                } else
                {
                    c1.a(boolean1.booleanValue());
                    return;
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Boolean)obj);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        g = a(Boolean.TYPE, java/lang/Boolean, e);
        h = new s() {

            public Number a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                }
                Byte byte1;
                try
                {
                    byte1 = Byte.valueOf((byte)a1.m());
                }
                catch (NumberFormatException numberformatexception)
                {
                    throw new q(numberformatexception);
                }
                return byte1;
            }

            public void a(c c1, Number number)
            {
                c1.a(number);
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Number)obj);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        i = a(Byte.TYPE, java/lang/Byte, h);
        j = new s() {

            public Number a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                }
                Short short1;
                try
                {
                    short1 = Short.valueOf((short)a1.m());
                }
                catch (NumberFormatException numberformatexception)
                {
                    throw new q(numberformatexception);
                }
                return short1;
            }

            public void a(c c1, Number number)
            {
                c1.a(number);
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Number)obj);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        k = a(Short.TYPE, java/lang/Short, j);
        l = new s() {

            public Number a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                }
                Integer integer;
                try
                {
                    integer = Integer.valueOf(a1.m());
                }
                catch (NumberFormatException numberformatexception)
                {
                    throw new q(numberformatexception);
                }
                return integer;
            }

            public void a(c c1, Number number)
            {
                c1.a(number);
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Number)obj);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        m = a(Integer.TYPE, java/lang/Integer, l);
        q = new s() {

            public Number a(a a1)
            {
                b b1 = a1.f();
                switch (com.millennialmedia.a.a.b.a._cls25.a[b1.ordinal()])
                {
                case 2: // '\002'
                case 3: // '\003'
                default:
                    throw new q((new StringBuilder()).append("Expecting number, got: ").append(b1).toString());

                case 4: // '\004'
                    a1.j();
                    return null;

                case 1: // '\001'
                    return new i(a1.h());
                }
            }

            public void a(c c1, Number number)
            {
                c1.a(number);
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Number)obj);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        r = a(java/lang/Number, q);
        s = new s() {

            public Character a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                }
                String s1 = a1.h();
                if (s1.length() != 1)
                {
                    throw new q((new StringBuilder()).append("Expecting character, got: ").append(s1).toString());
                } else
                {
                    return Character.valueOf(s1.charAt(0));
                }
            }

            public void a(c c1, Character character)
            {
                String s1;
                if (character == null)
                {
                    s1 = null;
                } else
                {
                    s1 = String.valueOf(character);
                }
                c1.b(s1);
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Character)obj);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        t = a(Character.TYPE, java/lang/Character, s);
        u = new s() {

            public String a(a a1)
            {
                b b1 = a1.f();
                if (b1 == b.i)
                {
                    a1.j();
                    return null;
                }
                if (b1 == b.h)
                {
                    return Boolean.toString(a1.i());
                } else
                {
                    return a1.h();
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (String)obj);
            }

            public void a(c c1, String s1)
            {
                c1.b(s1);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        x = a(java/lang/String, u);
        y = new s() {

            public StringBuilder a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                } else
                {
                    return new StringBuilder(a1.h());
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (StringBuilder)obj);
            }

            public void a(c c1, StringBuilder stringbuilder)
            {
                String s1;
                if (stringbuilder == null)
                {
                    s1 = null;
                } else
                {
                    s1 = stringbuilder.toString();
                }
                c1.b(s1);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        z = a(java/lang/StringBuilder, y);
        A = new s() {

            public StringBuffer a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                } else
                {
                    return new StringBuffer(a1.h());
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (StringBuffer)obj);
            }

            public void a(c c1, StringBuffer stringbuffer)
            {
                String s1;
                if (stringbuffer == null)
                {
                    s1 = null;
                } else
                {
                    s1 = stringbuffer.toString();
                }
                c1.b(s1);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        B = a(java/lang/StringBuffer, A);
        C = new s() {

            public URL a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                } else
                {
                    String s1 = a1.h();
                    if (!"null".equals(s1))
                    {
                        return new URL(s1);
                    }
                }
                return null;
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (URL)obj);
            }

            public void a(c c1, URL url)
            {
                String s1;
                if (url == null)
                {
                    s1 = null;
                } else
                {
                    s1 = url.toExternalForm();
                }
                c1.b(s1);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        D = a(java/net/URL, C);
        E = new s() {

            public URI a(a a1)
            {
                if (a1.f() != b.i) goto _L2; else goto _L1
_L1:
                a1.j();
_L4:
                return null;
_L2:
                String s1 = a1.h();
                if ("null".equals(s1)) goto _L4; else goto _L3
_L3:
                URI uri = new URI(s1);
                return uri;
                URISyntaxException urisyntaxexception;
                urisyntaxexception;
                throw new k(urisyntaxexception);
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (URI)obj);
            }

            public void a(c c1, URI uri)
            {
                String s1;
                if (uri == null)
                {
                    s1 = null;
                } else
                {
                    s1 = uri.toASCIIString();
                }
                c1.b(s1);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        F = a(java/net/URI, E);
        G = new s() {

            public InetAddress a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                } else
                {
                    return InetAddress.getByName(a1.h());
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (InetAddress)obj);
            }

            public void a(c c1, InetAddress inetaddress)
            {
                String s1;
                if (inetaddress == null)
                {
                    s1 = null;
                } else
                {
                    s1 = inetaddress.getHostAddress();
                }
                c1.b(s1);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        H = b(java/net/InetAddress, G);
        I = new s() {

            public UUID a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                } else
                {
                    return UUID.fromString(a1.h());
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (UUID)obj);
            }

            public void a(c c1, UUID uuid)
            {
                String s1;
                if (uuid == null)
                {
                    s1 = null;
                } else
                {
                    s1 = uuid.toString();
                }
                c1.b(s1);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        J = a(java/util/UUID, I);
        L = new s() {

            public Calendar a(a a1)
            {
                int i1 = 0;
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                }
                a1.c();
                int j1 = 0;
                int k1 = 0;
                int l1 = 0;
                int i2 = 0;
                int j2 = 0;
                do
                {
                    if (a1.f() == b.d)
                    {
                        break;
                    }
                    String s1 = a1.g();
                    int k2 = a1.m();
                    if ("year".equals(s1))
                    {
                        j2 = k2;
                    } else
                    if ("month".equals(s1))
                    {
                        i2 = k2;
                    } else
                    if ("dayOfMonth".equals(s1))
                    {
                        l1 = k2;
                    } else
                    if ("hourOfDay".equals(s1))
                    {
                        k1 = k2;
                    } else
                    if ("minute".equals(s1))
                    {
                        j1 = k2;
                    } else
                    if ("second".equals(s1))
                    {
                        i1 = k2;
                    }
                } while (true);
                a1.d();
                return new GregorianCalendar(j2, i2, l1, k1, j1, i1);
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Calendar)obj);
            }

            public void a(c c1, Calendar calendar)
            {
                if (calendar == null)
                {
                    c1.f();
                    return;
                } else
                {
                    c1.d();
                    c1.a("year");
                    c1.a(calendar.get(1));
                    c1.a("month");
                    c1.a(calendar.get(2));
                    c1.a("dayOfMonth");
                    c1.a(calendar.get(5));
                    c1.a("hourOfDay");
                    c1.a(calendar.get(11));
                    c1.a("minute");
                    c1.a(calendar.get(12));
                    c1.a("second");
                    c1.a(calendar.get(13));
                    c1.e();
                    return;
                }
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        M = b(java/util/Calendar, java/util/GregorianCalendar, L);
        N = new s() {

            public Locale a(a a1)
            {
                if (a1.f() == b.i)
                {
                    a1.j();
                    return null;
                }
                StringTokenizer stringtokenizer = new StringTokenizer(a1.h(), "_");
                String s1;
                String s2;
                String s3;
                if (stringtokenizer.hasMoreElements())
                {
                    s1 = stringtokenizer.nextToken();
                } else
                {
                    s1 = null;
                }
                if (stringtokenizer.hasMoreElements())
                {
                    s2 = stringtokenizer.nextToken();
                } else
                {
                    s2 = null;
                }
                if (stringtokenizer.hasMoreElements())
                {
                    s3 = stringtokenizer.nextToken();
                } else
                {
                    s3 = null;
                }
                if (s2 == null && s3 == null)
                {
                    return new Locale(s1);
                }
                if (s3 == null)
                {
                    return new Locale(s1, s2);
                } else
                {
                    return new Locale(s1, s2, s3);
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (Locale)obj);
            }

            public void a(c c1, Locale locale)
            {
                String s1;
                if (locale == null)
                {
                    s1 = null;
                } else
                {
                    s1 = locale.toString();
                }
                c1.b(s1);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        O = a(java/util/Locale, N);
        P = new s() {

            public j a(a a1)
            {
                m m1;
                switch (com.millennialmedia.a.a.b.a._cls25.a[a1.f().ordinal()])
                {
                default:
                    throw new IllegalArgumentException();

                case 3: // '\003'
                    return new o(a1.h());

                case 1: // '\001'
                    return new o(new i(a1.h()));

                case 2: // '\002'
                    return new o(Boolean.valueOf(a1.i()));

                case 4: // '\004'
                    a1.j();
                    return l.a;

                case 5: // '\005'
                    h h1 = new h();
                    a1.a();
                    for (; a1.e(); h1.a(a(a1))) { }
                    a1.b();
                    return h1;

                case 6: // '\006'
                    m1 = new m();
                    a1.c();
                    break;
                }
                for (; a1.e(); m1.a(a1.g(), a(a1))) { }
                a1.d();
                return m1;
            }

            public void a(c c1, j j1)
            {
                if (j1 == null || j1.j())
                {
                    c1.f();
                    return;
                }
                if (j1.i())
                {
                    o o1 = j1.m();
                    if (o1.p())
                    {
                        c1.a(o1.a());
                        return;
                    }
                    if (o1.o())
                    {
                        c1.a(o1.f());
                        return;
                    } else
                    {
                        c1.b(o1.b());
                        return;
                    }
                }
                if (j1.g())
                {
                    c1.b();
                    for (Iterator iterator1 = j1.l().iterator(); iterator1.hasNext(); a(c1, (j)iterator1.next())) { }
                    c1.c();
                    return;
                }
                if (j1.h())
                {
                    c1.d();
                    java.util.Map.Entry entry;
                    for (Iterator iterator = j1.k().o().iterator(); iterator.hasNext(); a(c1, (j)entry.getValue()))
                    {
                        entry = (java.util.Map.Entry)iterator.next();
                        c1.a((String)entry.getKey());
                    }

                    c1.e();
                    return;
                } else
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Couldn't write ").append(j1.getClass()).toString());
                }
            }

            public volatile void a(c c1, Object obj)
            {
                a(c1, (j)obj);
            }

            public Object b(a a1)
            {
                return a(a1);
            }

        };
        Q = b(com/millennialmedia/a/a/j, P);
    }
}
