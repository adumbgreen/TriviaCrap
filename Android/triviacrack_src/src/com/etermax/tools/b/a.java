// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.b;

import android.content.Context;
import com.etermax.tools.f.a.b;
import java.util.HashMap;
import java.util.Map;
import org.b.c.i;
import org.b.e.a.d;
import org.b.e.a.g;

// Referenced classes of package com.etermax.tools.b:
//            e, b, d

public class a
{

    Context a;
    com.etermax.tools.f.a b;
    private com.etermax.tools.b.d c;
    private Map d;

    public a()
    {
        d = new HashMap();
    }

    private String a(int j)
    {
        return a.getString(j);
    }

    public String a(Class class1, Exception exception)
    {
        boolean flag = exception instanceof e;
        int j;
        com.etermax.tools.b.b b1;
        com.etermax.tools.b.b b2;
        if (flag)
        {
            j = ((e)exception).c();
        } else
        {
            j = b.a;
        }
        b1 = new com.etermax.tools.b.b(class1, exception.getClass(), j);
        b2 = new com.etermax.tools.b.b(exception.getClass(), j);
        if (d.containsKey(b1))
        {
            return a(((Integer)d.get(b1)).intValue());
        }
        if (flag)
        {
            int l = ((e)exception).b();
            if (l != 0)
            {
                return a(l);
            }
        }
        if (d.containsKey(b2))
        {
            return a(((Integer)d.get(b2)).intValue());
        }
        if (flag)
        {
            int k = ((e)exception).a();
            if (k != 0)
            {
                return a(k);
            }
        }
        exception.printStackTrace();
        return a(c.m());
    }

    public void a()
    {
        if (a instanceof com.etermax.tools.b.d)
        {
            c = (com.etermax.tools.b.d)a;
            return;
        } else
        {
            throw new IllegalStateException("Application must implement IApplicationErrorMapper");
        }
    }

    public void a(Class class1, int j)
    {
        d.put(new com.etermax.tools.b.b(class1), Integer.valueOf(j));
    }

    public void a(Class class1, Exception exception, boolean flag)
    {
        if (!(exception instanceof d)) goto _L2; else goto _L1
_L1:
        b b1;
        d d1 = (d)exception;
        b1 = new b("error_server_500", (new StringBuilder()).append(d1.a().a()).append("_").append(d1.b()).toString());
        b.a(Integer.toString(d1.a().a()), d1.b(), d1.getClass().getName());
_L8:
        if (b1 != null)
        {
            b.a(b1);
        }
        return;
_L2:
        if (!(exception instanceof g)) goto _L4; else goto _L3
_L3:
        g g1 = (g)exception;
        Object obj;
        String s2;
        if (g1.getMessage() != null)
        {
            obj = g1.getMessage();
        } else
        {
            obj = org/b/e/a/g;
        }
        s2 = (String)obj;
        b1 = new b("error_client", (new StringBuilder()).append("-1_").append(s2).toString());
          goto _L5
_L4:
        String s = exception.getMessage();
        if (!(exception instanceof com.etermax.tools.a.c.b)) goto _L7; else goto _L6
_L6:
        int j;
        String s1;
        j = ((com.etermax.tools.a.c.b)exception).c();
        s1 = s;
_L9:
        boolean flag1 = b(class1, exception);
        if (flag && !flag1)
        {
            b b2 = new b("error_api_unhandled", (new StringBuilder()).append(j).append("_").append(s1).toString());
            b.a(Integer.toString(j), s1, exception.getClass().getName());
            b1 = b2;
        } else
        {
            b1 = new b("error_api_handled", (new StringBuilder()).append(j).append("_").append(s1).toString());
        }
_L5:
        if (true) goto _L8; else goto _L7
_L7:
        if (exception instanceof org.b.e.a.b)
        {
            j = ((org.b.e.a.b)exception).a().a();
            s1 = ((org.b.e.a.b)exception).b();
        } else
        {
            j = -1;
            s1 = s;
        }
          goto _L9
    }

    public boolean b(Class class1, Exception exception)
    {
        boolean flag = exception instanceof e;
        int j;
        com.etermax.tools.b.b b1;
        com.etermax.tools.b.b b2;
        if (flag)
        {
            j = ((e)exception).c();
        } else
        {
            j = b.a;
        }
        b1 = new com.etermax.tools.b.b(class1, exception.getClass(), j);
        b2 = new com.etermax.tools.b.b(exception.getClass(), j);
        if (d.containsKey(b1))
        {
            return true;
        }
        if (d.containsKey(b2))
        {
            return true;
        }
        if (flag)
        {
            return ((e)exception).b() != 0;
        } else
        {
            return false;
        }
    }
}
