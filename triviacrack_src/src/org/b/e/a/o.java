// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import android.util.Log;
import java.util.Iterator;
import java.util.List;
import org.b.c.a.e;
import org.b.c.b;
import org.b.c.b.f;
import org.b.c.c;

// Referenced classes of package org.b.e.a:
//            l, k, j

class o extends l
{

    final k b;
    private final b c;

    private o(k k1, Object obj, Class class1)
    {
        b = k1;
        super(k1, class1, null);
        if (obj instanceof b)
        {
            c = (b)obj;
            return;
        }
        if (obj != null)
        {
            c = new b(obj);
            return;
        } else
        {
            c = b.a;
            return;
        }
    }

    o(k k1, Object obj, Class class1, k._cls1 _pcls1)
    {
        this(k1, obj, class1);
    }

    public void a(e e1)
    {
        super.a(e1);
        if (!c.c())
        {
            c c2 = e1.d();
            c c3 = c.a();
            if (!c3.isEmpty())
            {
                c2.putAll(c3);
            }
            if (c2.b() == -1L)
            {
                c2.a(0L);
            }
            return;
        }
        Object obj = c.b();
        Class class1 = obj.getClass();
        c c1 = c.a();
        org.b.c.k k1 = c1.c();
        for (Iterator iterator = b.c().iterator(); iterator.hasNext();)
        {
            f f1 = (f)iterator.next();
            if (f1.b(class1, k1))
            {
                if (!c1.isEmpty())
                {
                    e1.d().putAll(c1);
                }
                if (Log.isLoggable("RestTemplate", 3))
                {
                    if (k1 != null)
                    {
                        Log.d("RestTemplate", (new StringBuilder()).append("Writing [").append(obj).append("] as \"").append(k1).append("\" using [").append(f1).append("]").toString());
                    } else
                    {
                        Log.d("RestTemplate", (new StringBuilder()).append("Writing [").append(obj).append("] using [").append(f1).append("]").toString());
                    }
                }
                f1.a(obj, k1, e1);
                return;
            }
        }

        String s = (new StringBuilder()).append("Could not write request: no suitable HttpMessageConverter found for request type [").append(class1.getName()).append("]").toString();
        if (k1 != null)
        {
            s = (new StringBuilder()).append(s).append(" and content type [").append(k1).append("]").toString();
        }
        throw new j(s);
    }
}
