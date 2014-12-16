// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import android.util.Log;
import java.util.Iterator;
import java.util.List;
import org.b.c.a.i;
import org.b.c.b.f;
import org.b.c.k;
import org.b.d.a;

// Referenced classes of package org.b.e.a:
//            i, j

public class c
    implements org.b.e.a.i
{

    private final Class a;
    private final List b;

    public c(Class class1, List list)
    {
        org.b.d.a.a(class1, "'responseType' must not be null");
        org.b.d.a.a(list, "'messageConverters' must not be empty");
        a = class1;
        b = list;
    }

    public Object a(i l)
    {
        if (!b(l))
        {
            return null;
        }
        k k1 = l.d().c();
        k k2;
        Iterator iterator;
        if (k1 == null)
        {
            if (Log.isLoggable("RestTemplate", 3))
            {
                Log.d("RestTemplate", "No Content-Type header found, defaulting to application/octet-stream");
            }
            k2 = k.f;
        } else
        {
            k2 = k1;
        }
        for (iterator = b.iterator(); iterator.hasNext();)
        {
            f f1 = (f)iterator.next();
            if (f1.a(a, k2))
            {
                if (Log.isLoggable("RestTemplate", 3))
                {
                    Log.d("RestTemplate", (new StringBuilder()).append("Reading [").append(a.getName()).append("] as \"").append(k2).append("\" using [").append(f1).append("]").toString());
                }
                return f1.a(a, l);
            }
        }

        throw new j((new StringBuilder()).append("Could not extract response: no suitable HttpMessageConverter found for response type [").append(a.getName()).append("] and content type [").append(k2).append("]").toString());
    }

    protected boolean b(i l)
    {
        for (org.b.c.i i1 = l.a(); i1 == org.b.c.i.i || i1 == org.b.c.i.t || l.d().b() == 0L;)
        {
            return false;
        }

        return true;
    }
}
