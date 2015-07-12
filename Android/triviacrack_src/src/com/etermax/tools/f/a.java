// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.f;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.etermax.tools.f:
//            c, b

public class a
{

    com.etermax.tools.f.b.a a;
    private c b[];
    private Map c;

    public a()
    {
        c ac[] = new c[1];
        ac[0] = c.a;
        b = ac;
    }

    protected void a()
    {
        c = new HashMap();
        c.put(c.a, a);
    }

    public void a(Context context)
    {
        a(context, b);
    }

    public transient void a(Context context, c ac[])
    {
        if (ac != null)
        {
            int i = ac.length;
            for (int j = 0; j < i; j++)
            {
                c c1 = ac[j];
                ((b)c.get(c1)).a(context);
            }

        }
    }

    public void a(com.etermax.tools.f.a.a a1)
    {
label0:
        {
            if (a1 != null)
            {
                if (!a1.e().isEmpty())
                {
                    break label0;
                }
                a(a1.a(), a1.b());
            }
            return;
        }
        a(a1.a(), a1.e(), a1.b());
    }

    public void a(String s, String s1, String s2)
    {
        if (com.etermax.tools.g.a.a())
        {
            com.etermax.a.a.c("ANALYTICS LOGGER", "/**************************** LOGGING ERROR ********************************/");
            com.etermax.a.a.c("ANALYTICS LOGGER", (new StringBuilder()).append("######## errorId: ").append(s).toString());
            com.etermax.a.a.c("ANALYTICS LOGGER", (new StringBuilder()).append("############ message: ").append(s1).toString());
            com.etermax.a.a.c("ANALYTICS LOGGER", (new StringBuilder()).append("############ errorClass: ").append(s2).toString());
            com.etermax.a.a.c("ANALYTICS LOGGER", "/***************************************************************************/");
        }
        ((b)c.get(c.a)).a(s, s1, s2);
    }

    public transient void a(String s, Map map, c ac[])
    {
        if (com.etermax.tools.g.a.a())
        {
            com.etermax.a.a.c("ANALYTICS LOGGER", "/**************************** LOGGING EVENT ********************************/");
            com.etermax.a.a.c("ANALYTICS LOGGER", (new StringBuilder()).append("######## eventId: ").append(s).toString());
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); com.etermax.a.a.c("ANALYTICS LOGGER", (new StringBuilder()).append("############ ").append((String)entry.getKey()).append(": ").append((String)entry.getValue()).toString()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            com.etermax.a.a.c("ANALYTICS LOGGER", "/***************************************************************************/");
        }
        if (ac != null)
        {
            int i = ac.length;
            for (int j = 0; j < i; j++)
            {
                c c1 = ac[j];
                ((b)c.get(c1)).a(s, new HashMap(map));
            }

        }
    }

    public transient void a(String s, c ac[])
    {
        com.etermax.a.a.c("ANALYTICS LOGGER", "/**************************** LOGGING EVENT ********************************/");
        com.etermax.a.a.c("ANALYTICS LOGGER", (new StringBuilder()).append("######## eventId: ").append(s).toString());
        com.etermax.a.a.c("ANALYTICS LOGGER", "/***************************************************************************/");
        if (ac != null)
        {
            int i = ac.length;
            for (int j = 0; j < i; j++)
            {
                c c1 = ac[j];
                ((b)c.get(c1)).a(s);
            }

        }
    }

    public void b(Context context)
    {
        b(context, b);
    }

    public transient void b(Context context, c ac[])
    {
        if (ac != null)
        {
            int i = ac.length;
            for (int j = 0; j < i; j++)
            {
                c c1 = ac[j];
                ((b)c.get(c1)).b(context);
            }

        }
    }
}
