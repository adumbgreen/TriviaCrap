// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.h;
import com.millennialmedia.a.a.l;
import com.millennialmedia.a.a.m;
import com.millennialmedia.a.a.o;
import java.io.Reader;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class e extends a
{

    private static final Reader a = new Reader() {

        public void close()
        {
            throw new AssertionError();
        }

        public int read(char ac[], int i1, int j1)
        {
            throw new AssertionError();
        }

    };
    private static final Object b = new Object();
    private final List c;

    private void a(b b1)
    {
        if (f() != b1)
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected ").append(b1).append(" but was ").append(f()).toString());
        } else
        {
            return;
        }
    }

    private Object q()
    {
        return c.get(-1 + c.size());
    }

    private Object r()
    {
        return c.remove(-1 + c.size());
    }

    public void a()
    {
        a(b.a);
        h h1 = (h)q();
        c.add(h1.iterator());
    }

    public void b()
    {
        a(b.b);
        r();
        r();
    }

    public void c()
    {
        a(b.c);
        m m1 = (m)q();
        c.add(m1.o().iterator());
    }

    public void close()
    {
        c.clear();
        c.add(b);
    }

    public void d()
    {
        a(b.d);
        r();
        r();
    }

    public boolean e()
    {
        b b1 = f();
        return b1 != b.d && b1 != b.b;
    }

    public b f()
    {
        if (c.isEmpty())
        {
            return b.j;
        }
        Object obj = q();
        if (obj instanceof Iterator)
        {
            boolean flag = c.get(-2 + c.size()) instanceof m;
            Iterator iterator = (Iterator)obj;
            if (iterator.hasNext())
            {
                if (flag)
                {
                    return b.e;
                } else
                {
                    c.add(iterator.next());
                    return f();
                }
            }
            if (flag)
            {
                return b.d;
            } else
            {
                return b.b;
            }
        }
        if (obj instanceof m)
        {
            return b.c;
        }
        if (obj instanceof h)
        {
            return b.a;
        }
        if (obj instanceof o)
        {
            o o1 = (o)obj;
            if (o1.q())
            {
                return b.f;
            }
            if (o1.o())
            {
                return b.h;
            }
            if (o1.p())
            {
                return b.g;
            } else
            {
                throw new AssertionError();
            }
        }
        if (obj instanceof l)
        {
            return b.i;
        }
        if (obj == b)
        {
            throw new IllegalStateException("JsonReader is closed");
        } else
        {
            throw new AssertionError();
        }
    }

    public String g()
    {
        a(b.e);
        java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator)q()).next();
        c.add(entry.getValue());
        return (String)entry.getKey();
    }

    public String h()
    {
        b b1 = f();
        if (b1 != b.f && b1 != b.g)
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected ").append(b.f).append(" but was ").append(b1).toString());
        } else
        {
            return ((o)r()).b();
        }
    }

    public boolean i()
    {
        a(b.h);
        return ((o)r()).f();
    }

    public void j()
    {
        a(b.i);
        r();
    }

    public double k()
    {
        b b1 = f();
        if (b1 != b.g && b1 != b.f)
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected ").append(b.g).append(" but was ").append(b1).toString());
        }
        double d1 = ((o)q()).c();
        if (!p() && (Double.isNaN(d1) || Double.isInfinite(d1)))
        {
            throw new NumberFormatException((new StringBuilder()).append("JSON forbids NaN and infinities: ").append(d1).toString());
        } else
        {
            r();
            return d1;
        }
    }

    public long l()
    {
        b b1 = f();
        if (b1 != b.g && b1 != b.f)
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected ").append(b.g).append(" but was ").append(b1).toString());
        } else
        {
            long l1 = ((o)q()).d();
            r();
            return l1;
        }
    }

    public int m()
    {
        b b1 = f();
        if (b1 != b.g && b1 != b.f)
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected ").append(b.g).append(" but was ").append(b1).toString());
        } else
        {
            int i1 = ((o)q()).e();
            r();
            return i1;
        }
    }

    public void n()
    {
        if (f() == b.e)
        {
            g();
            return;
        } else
        {
            r();
            return;
        }
    }

    public void o()
    {
        a(b.e);
        java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator)q()).next();
        c.add(entry.getValue());
        c.add(new o((String)entry.getKey()));
    }

    public String toString()
    {
        return getClass().getSimpleName();
    }

}
