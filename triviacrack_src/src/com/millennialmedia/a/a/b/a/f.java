// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.h;
import com.millennialmedia.a.a.j;
import com.millennialmedia.a.a.l;
import com.millennialmedia.a.a.m;
import com.millennialmedia.a.a.o;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class f extends c
{

    private static final Writer a = new Writer() {

        public void close()
        {
            throw new AssertionError();
        }

        public void flush()
        {
            throw new AssertionError();
        }

        public void write(char ac[], int i, int k)
        {
            throw new AssertionError();
        }

    };
    private static final o b = new o("closed");
    private final List c = new ArrayList();
    private String d;
    private j e;

    public f()
    {
        super(a);
        e = l.a;
    }

    private void a(j j1)
    {
        if (d != null)
        {
            if (!j1.j() || i())
            {
                ((m)j()).a(d, j1);
            }
            d = null;
            return;
        }
        if (c.isEmpty())
        {
            e = j1;
            return;
        }
        j j2 = j();
        if (j2 instanceof h)
        {
            ((h)j2).a(j1);
            return;
        } else
        {
            throw new IllegalStateException();
        }
    }

    private j j()
    {
        return (j)c.get(-1 + c.size());
    }

    public c a(long l1)
    {
        a(((j) (new o(Long.valueOf(l1)))));
        return this;
    }

    public c a(Number number)
    {
        if (number == null)
        {
            return f();
        }
        if (!g())
        {
            double d1 = number.doubleValue();
            if (Double.isNaN(d1) || Double.isInfinite(d1))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("JSON forbids NaN and infinities: ").append(number).toString());
            }
        }
        a(((j) (new o(number))));
        return this;
    }

    public c a(String s)
    {
        if (c.isEmpty() || d != null)
        {
            throw new IllegalStateException();
        }
        if (j() instanceof m)
        {
            d = s;
            return this;
        } else
        {
            throw new IllegalStateException();
        }
    }

    public c a(boolean flag)
    {
        a(((j) (new o(Boolean.valueOf(flag)))));
        return this;
    }

    public j a()
    {
        if (!c.isEmpty())
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected one JSON element but was ").append(c).toString());
        } else
        {
            return e;
        }
    }

    public c b()
    {
        h h1 = new h();
        a(h1);
        c.add(h1);
        return this;
    }

    public c b(String s)
    {
        if (s == null)
        {
            return f();
        } else
        {
            a(new o(s));
            return this;
        }
    }

    public c c()
    {
        if (c.isEmpty() || d != null)
        {
            throw new IllegalStateException();
        }
        if (j() instanceof h)
        {
            c.remove(-1 + c.size());
            return this;
        } else
        {
            throw new IllegalStateException();
        }
    }

    public void close()
    {
        if (!c.isEmpty())
        {
            throw new IOException("Incomplete document");
        } else
        {
            c.add(b);
            return;
        }
    }

    public c d()
    {
        m m1 = new m();
        a(m1);
        c.add(m1);
        return this;
    }

    public c e()
    {
        if (c.isEmpty() || d != null)
        {
            throw new IllegalStateException();
        }
        if (j() instanceof m)
        {
            c.remove(-1 + c.size());
            return this;
        } else
        {
            throw new IllegalStateException();
        }
    }

    public c f()
    {
        a(l.a);
        return this;
    }

    public void flush()
    {
    }

}
