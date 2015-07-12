// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.b.c.a.a.b;
import org.b.c.a.e;
import org.b.c.a.i;
import org.b.c.f;
import org.b.c.l;
import org.b.d.a;

// Referenced classes of package org.b.e.a:
//            n, a, m, h, 
//            p, f, i, g, 
//            o, q

public class k extends b
{

    private final org.b.e.a.i a;
    private List b;
    private h c;

    public k()
    {
        this(false);
    }

    public k(boolean flag)
    {
        a = new n();
        b = new ArrayList();
        c = new org.b.e.a.a();
        if (flag)
        {
            org.b.e.a.m.a(b);
        }
    }

    private void a(f f1, URI uri, i j)
    {
        if (!Log.isLoggable("RestTemplate", 3))
        {
            break MISSING_BLOCK_LABEL_74;
        }
        Log.d("RestTemplate", (new StringBuilder()).append(f1.name()).append(" request for \"").append(uri).append("\" resulted in ").append(j.a()).append(" (").append(j.c()).append(")").toString());
        return;
        IOException ioexception;
        ioexception;
    }

    private void b(f f1, URI uri, i j)
    {
        if (Log.isLoggable("RestTemplate", 5))
        {
            try
            {
                Log.w("RestTemplate", (new StringBuilder()).append(f1.name()).append(" request for \"").append(uri).append("\" resulted in ").append(j.a()).append(" (").append(j.c()).append("); invoking error handler").toString());
            }
            catch (IOException ioexception) { }
        }
        d().a(j);
    }

    public Object a(String s, f f1, org.b.e.a.f f2, org.b.e.a.i j, Map map)
    {
        return a((new p(s)).a(map), f1, f2, j);
    }

    public transient Object a(String s, f f1, org.b.e.a.f f2, org.b.e.a.i j, Object aobj[])
    {
        return a((new p(s)).a(aobj), f1, f2, j);
    }

    protected Object a(URI uri, f f1, org.b.e.a.f f2, org.b.e.a.i j)
    {
        org.b.d.a.a(uri, "'url' must not be null");
        org.b.d.a.a(f1, "'method' must not be null");
        e e1 = a(uri, f1);
        if (f2 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        f2.a(e1);
        i j1 = e1.e();
        i i1 = j1;
        if (d().b(i1)) goto _L2; else goto _L1
_L1:
        a(f1, uri, i1);
_L5:
        if (j == null) goto _L4; else goto _L3
_L3:
        Object obj = j.a(i1);
        Object obj1;
        obj1 = obj;
        if (i1 != null)
        {
            i1.f();
        }
_L7:
        return obj1;
_L2:
        b(f1, uri, i1);
          goto _L5
        IOException ioexception1;
        ioexception1;
_L9:
        throw new g((new StringBuilder()).append("I/O error: ").append(ioexception1.getMessage()).toString(), ioexception1);
        Exception exception;
        exception;
_L8:
        if (i1 != null)
        {
            i1.f();
        }
        throw exception;
_L4:
        obj1 = null;
        if (i1 == null) goto _L7; else goto _L6
_L6:
        i1.f();
        return null;
        Exception exception1;
        exception1;
        exception = exception1;
        i1 = null;
          goto _L8
        IOException ioexception;
        ioexception;
        ioexception1 = ioexception;
        i1 = null;
          goto _L9
    }

    public l a(String s, f f1, org.b.c.b b1, Class class1, Map map)
    {
        return (l)a(s, f1, ((org.b.e.a.f) (new o(this, b1, class1))), ((org.b.e.a.i) (new q(this, class1))), map);
    }

    public transient l a(String s, f f1, org.b.c.b b1, Class class1, Object aobj[])
    {
        return (l)a(s, f1, ((org.b.e.a.f) (new o(this, b1, class1))), ((org.b.e.a.i) (new q(this, class1))), aobj);
    }

    public void a(h h1)
    {
        org.b.d.a.a(h1, "'errorHandler' must not be null");
        c = h1;
    }

    public List c()
    {
        return b;
    }

    public h d()
    {
        return c;
    }
}
