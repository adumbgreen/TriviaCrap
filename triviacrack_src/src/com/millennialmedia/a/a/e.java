// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.a.a;
import com.millennialmedia.a.a.b.a.b;
import com.millennialmedia.a.a.b.a.d;
import com.millennialmedia.a.a.b.a.i;
import com.millennialmedia.a.a.b.a.j;
import com.millennialmedia.a.a.b.a.m;
import com.millennialmedia.a.a.b.a.n;
import com.millennialmedia.a.a.b.a.p;
import com.millennialmedia.a.a.b.f;
import com.millennialmedia.a.a.b.g;
import com.millennialmedia.a.a.b.r;
import com.millennialmedia.a.a.b.s;
import com.millennialmedia.a.a.d.c;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.millennialmedia.a.a:
//            c, r, k, q, 
//            s, f, t, l, 
//            i, p, d, j

public final class e
{

    final com.millennialmedia.a.a.i a;
    final com.millennialmedia.a.a.p b;
    private final ThreadLocal c;
    private final Map d;
    private final List e;
    private final f f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;

    public e()
    {
        this(g.a, ((com.millennialmedia.a.a.d) (com.millennialmedia.a.a.c.a)), Collections.emptyMap(), false, false, false, true, false, false, com.millennialmedia.a.a.r.a, Collections.emptyList());
    }

    e(g g1, com.millennialmedia.a.a.d d1, Map map, boolean flag, boolean flag1, boolean flag2, boolean flag3, 
            boolean flag4, boolean flag5, com.millennialmedia.a.a.r r1, List list)
    {
        c = new ThreadLocal();
        d = Collections.synchronizedMap(new HashMap());
        a = new com.millennialmedia.a.a.i() {

            final e a;

            
            {
                a = e.this;
                super();
            }
        };
        b = new com.millennialmedia.a.a.p() {

            final e a;

            
            {
                a = e.this;
                super();
            }
        };
        f = new f(map);
        g = flag;
        i = flag2;
        h = flag3;
        j = flag4;
        ArrayList arraylist = new ArrayList();
        arraylist.add(p.Q);
        arraylist.add(i.a);
        arraylist.add(g1);
        arraylist.addAll(list);
        arraylist.add(p.x);
        arraylist.add(p.m);
        arraylist.add(p.g);
        arraylist.add(p.i);
        arraylist.add(p.k);
        arraylist.add(p.a(Long.TYPE, java/lang/Long, a(r1)));
        arraylist.add(p.a(Double.TYPE, java/lang/Double, a(flag5)));
        arraylist.add(p.a(Float.TYPE, java/lang/Float, b(flag5)));
        arraylist.add(p.r);
        arraylist.add(p.t);
        arraylist.add(p.z);
        arraylist.add(p.B);
        arraylist.add(p.a(java/math/BigDecimal, p.v));
        arraylist.add(p.a(java/math/BigInteger, p.w));
        arraylist.add(p.D);
        arraylist.add(p.F);
        arraylist.add(p.J);
        arraylist.add(p.O);
        arraylist.add(p.H);
        arraylist.add(p.d);
        arraylist.add(d.a);
        arraylist.add(p.M);
        arraylist.add(n.a);
        arraylist.add(m.a);
        arraylist.add(p.K);
        arraylist.add(a.a);
        arraylist.add(p.R);
        arraylist.add(p.b);
        arraylist.add(new b(f));
        arraylist.add(new com.millennialmedia.a.a.b.a.g(f, flag1));
        arraylist.add(new j(f, d1, g1));
        e = Collections.unmodifiableList(arraylist);
    }

    private c a(Writer writer)
    {
        if (i)
        {
            writer.write(")]}'\n");
        }
        c c1 = new c(writer);
        if (j)
        {
            c1.c("  ");
        }
        c1.d(g);
        return c1;
    }

    private com.millennialmedia.a.a.s a(com.millennialmedia.a.a.r r1)
    {
        if (r1 == com.millennialmedia.a.a.r.a)
        {
            return p.n;
        } else
        {
            return new com.millennialmedia.a.a.s() {

                final e a;

                public Number a(com.millennialmedia.a.a.d.a a1)
                {
                    if (a1.f() == com.millennialmedia.a.a.d.b.i)
                    {
                        a1.j();
                        return null;
                    } else
                    {
                        return Long.valueOf(a1.l());
                    }
                }

                public void a(c c1, Number number)
                {
                    if (number == null)
                    {
                        c1.f();
                        return;
                    } else
                    {
                        c1.b(number.toString());
                        return;
                    }
                }

                public volatile void a(c c1, Object obj)
                {
                    a(c1, (Number)obj);
                }

                public Object b(com.millennialmedia.a.a.d.a a1)
                {
                    return a(a1);
                }

            
            {
                a = e.this;
                super();
            }
            };
        }
    }

    private com.millennialmedia.a.a.s a(boolean flag)
    {
        if (flag)
        {
            return p.p;
        } else
        {
            return new com.millennialmedia.a.a.s() {

                final e a;

                public Double a(com.millennialmedia.a.a.d.a a1)
                {
                    if (a1.f() == com.millennialmedia.a.a.d.b.i)
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
                    if (number == null)
                    {
                        c1.f();
                        return;
                    } else
                    {
                        double d1 = number.doubleValue();
                        com.millennialmedia.a.a.e.a(a, d1);
                        c1.a(number);
                        return;
                    }
                }

                public volatile void a(c c1, Object obj)
                {
                    a(c1, (Number)obj);
                }

                public Object b(com.millennialmedia.a.a.d.a a1)
                {
                    return a(a1);
                }

            
            {
                a = e.this;
                super();
            }
            };
        }
    }

    private void a(double d1)
    {
        if (Double.isNaN(d1) || Double.isInfinite(d1))
        {
            throw new IllegalArgumentException((new StringBuilder()).append(d1).append(" is not a valid double value as per JSON specification. To override this").append(" behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.").toString());
        } else
        {
            return;
        }
    }

    static void a(e e1, double d1)
    {
        e1.a(d1);
    }

    private static void a(Object obj, com.millennialmedia.a.a.d.a a1)
    {
        if (obj != null)
        {
            try
            {
                if (a1.f() != com.millennialmedia.a.a.d.b.j)
                {
                    throw new k("JSON document was not fully consumed.");
                }
            }
            catch (com.millennialmedia.a.a.d.d d1)
            {
                throw new q(d1);
            }
            catch (IOException ioexception)
            {
                throw new k(ioexception);
            }
        }
    }

    private com.millennialmedia.a.a.s b(boolean flag)
    {
        if (flag)
        {
            return p.o;
        } else
        {
            return new com.millennialmedia.a.a.s() {

                final e a;

                public Float a(com.millennialmedia.a.a.d.a a1)
                {
                    if (a1.f() == com.millennialmedia.a.a.d.b.i)
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
                    if (number == null)
                    {
                        c1.f();
                        return;
                    } else
                    {
                        float f1 = number.floatValue();
                        com.millennialmedia.a.a.e.a(a, f1);
                        c1.a(number);
                        return;
                    }
                }

                public volatile void a(c c1, Object obj)
                {
                    a(c1, (Number)obj);
                }

                public Object b(com.millennialmedia.a.a.d.a a1)
                {
                    return a(a1);
                }

            
            {
                a = e.this;
                super();
            }
            };
        }
    }

    public com.millennialmedia.a.a.s a(com.millennialmedia.a.a.c.a a1)
    {
        Object obj = (com.millennialmedia.a.a.s)d.get(a1);
        if (obj == null) goto _L2; else goto _L1
_L1:
        return ((com.millennialmedia.a.a.s) (obj));
_L2:
        Map map = (Map)c.get();
        Object obj1;
        boolean flag;
        com.millennialmedia.a.a.f f1;
        Exception exception;
        Iterator iterator;
        if (map == null)
        {
            HashMap hashmap = new HashMap();
            c.set(hashmap);
            obj1 = hashmap;
            flag = true;
        } else
        {
            obj1 = map;
            flag = false;
        }
        obj = (com.millennialmedia.a.a.f)((Map) (obj1)).get(a1);
        if (obj != null) goto _L1; else goto _L3
_L3:
        f1 = new com.millennialmedia.a.a.f();
        ((Map) (obj1)).put(a1, f1);
        iterator = e.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_180;
            }
            obj = ((t)iterator.next()).a(this, a1);
        } while (obj == null);
        f1.a(((com.millennialmedia.a.a.s) (obj)));
        d.put(a1, obj);
        ((Map) (obj1)).remove(a1);
        if (!flag) goto _L1; else goto _L4
_L4:
        c.remove();
        return ((com.millennialmedia.a.a.s) (obj));
        throw new IllegalArgumentException((new StringBuilder()).append("GSON cannot handle ").append(a1).toString());
        exception;
        ((Map) (obj1)).remove(a1);
        if (flag)
        {
            c.remove();
        }
        throw exception;
    }

    public com.millennialmedia.a.a.s a(t t1, com.millennialmedia.a.a.c.a a1)
    {
        Iterator iterator = e.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            t t2 = (t)iterator.next();
            if (!flag)
            {
                if (t2 == t1)
                {
                    flag = true;
                }
            } else
            {
                com.millennialmedia.a.a.s s1 = t2.a(this, a1);
                if (s1 != null)
                {
                    return s1;
                }
            }
        }
        throw new IllegalArgumentException((new StringBuilder()).append("GSON cannot serialize ").append(a1).toString());
    }

    public com.millennialmedia.a.a.s a(Class class1)
    {
        return a(com.millennialmedia.a.a.c.a.b(class1));
    }

    public Object a(com.millennialmedia.a.a.d.a a1, Type type)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = a1.p();
        a1.a(flag);
        a1.f();
        flag = false;
        Object obj1 = a(com.millennialmedia.a.a.c.a.a(type)).b(a1);
        Object obj = obj1;
_L2:
        a1.a(flag1);
        return obj;
        EOFException eofexception;
        eofexception;
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = null;
        if (true) goto _L2; else goto _L1
_L1:
        throw new q(eofexception);
        Exception exception;
        exception;
        a1.a(flag1);
        throw exception;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        throw new q(illegalstateexception);
        IOException ioexception;
        ioexception;
        throw new q(ioexception);
    }

    public Object a(Reader reader, Type type)
    {
        com.millennialmedia.a.a.d.a a1 = new com.millennialmedia.a.a.d.a(reader);
        Object obj = a(a1, type);
        a(obj, a1);
        return obj;
    }

    public Object a(String s1, Class class1)
    {
        Object obj = a(s1, ((Type) (class1)));
        return r.a(class1).cast(obj);
    }

    public Object a(String s1, Type type)
    {
        if (s1 == null)
        {
            return null;
        } else
        {
            return a(((Reader) (new StringReader(s1))), type);
        }
    }

    public String a(com.millennialmedia.a.a.j j1)
    {
        StringWriter stringwriter = new StringWriter();
        a(j1, ((Appendable) (stringwriter)));
        return stringwriter.toString();
    }

    public String a(Object obj)
    {
        if (obj == null)
        {
            return a(((com.millennialmedia.a.a.j) (com.millennialmedia.a.a.l.a)));
        } else
        {
            return a(obj, ((Type) (obj.getClass())));
        }
    }

    public String a(Object obj, Type type)
    {
        StringWriter stringwriter = new StringWriter();
        a(obj, type, ((Appendable) (stringwriter)));
        return stringwriter.toString();
    }

    public void a(com.millennialmedia.a.a.j j1, c c1)
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        flag = c1.g();
        c1.b(true);
        flag1 = c1.h();
        c1.c(h);
        flag2 = c1.i();
        c1.d(g);
        s.a(j1, c1);
        c1.b(flag);
        c1.c(flag1);
        c1.d(flag2);
        return;
        IOException ioexception;
        ioexception;
        throw new k(ioexception);
        Exception exception;
        exception;
        c1.b(flag);
        c1.c(flag1);
        c1.d(flag2);
        throw exception;
    }

    public void a(com.millennialmedia.a.a.j j1, Appendable appendable)
    {
        try
        {
            a(j1, a(s.a(appendable)));
            return;
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
    }

    public void a(Object obj, Type type, c c1)
    {
        com.millennialmedia.a.a.s s1;
        boolean flag;
        boolean flag1;
        boolean flag2;
        s1 = a(com.millennialmedia.a.a.c.a.a(type));
        flag = c1.g();
        c1.b(true);
        flag1 = c1.h();
        c1.c(h);
        flag2 = c1.i();
        c1.d(g);
        s1.a(c1, obj);
        c1.b(flag);
        c1.c(flag1);
        c1.d(flag2);
        return;
        IOException ioexception;
        ioexception;
        throw new k(ioexception);
        Exception exception;
        exception;
        c1.b(flag);
        c1.c(flag1);
        c1.d(flag2);
        throw exception;
    }

    public void a(Object obj, Type type, Appendable appendable)
    {
        try
        {
            a(obj, type, a(s.a(appendable)));
            return;
        }
        catch (IOException ioexception)
        {
            throw new k(ioexception);
        }
    }

    public String toString()
    {
        return (new StringBuilder("{serializeNulls:")).append(g).append("factories:").append(e).append(",instanceCreators:").append(f).append("}").toString();
    }
}
