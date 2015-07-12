// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.s;
import com.millennialmedia.a.a.d.c;
import java.io.IOException;
import java.io.StringWriter;

// Referenced classes of package com.millennialmedia.a.a:
//            h, m, o, l

public abstract class j
{

    public j()
    {
    }

    public Number a()
    {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String b()
    {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double c()
    {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long d()
    {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int e()
    {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean f()
    {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean g()
    {
        return this instanceof h;
    }

    public boolean h()
    {
        return this instanceof m;
    }

    public boolean i()
    {
        return this instanceof o;
    }

    public boolean j()
    {
        return this instanceof l;
    }

    public m k()
    {
        if (h())
        {
            return (m)this;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Not a JSON Object: ").append(this).toString());
        }
    }

    public h l()
    {
        if (g())
        {
            return (h)this;
        } else
        {
            throw new IllegalStateException("This is not a JSON Array.");
        }
    }

    public o m()
    {
        if (i())
        {
            return (o)this;
        } else
        {
            throw new IllegalStateException("This is not a JSON Primitive.");
        }
    }

    Boolean n()
    {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString()
    {
        String s1;
        try
        {
            StringWriter stringwriter = new StringWriter();
            c c1 = new c(stringwriter);
            c1.b(true);
            s.a(this, c1);
            s1 = stringwriter.toString();
        }
        catch (IOException ioexception)
        {
            throw new AssertionError(ioexception);
        }
        return s1;
    }
}
