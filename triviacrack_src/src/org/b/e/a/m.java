// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import java.util.List;
import org.b.c.b.a.a;
import org.b.c.b.c.c;
import org.b.c.b.c.e;
import org.b.c.b.i;
import org.b.c.b.j;
import org.b.d.b;

// Referenced classes of package org.b.e.a:
//            k

class m
{

    private static final boolean a = org.b.d.b.b("javax.xml.transform.Source", org/b/e/a/k.getClassLoader());
    private static final boolean b = org.b.d.b.b("org.simpleframework.xml.Serializer", org/b/e/a/k.getClassLoader());
    private static final boolean c;
    private static final boolean d;
    private static final boolean e = org.b.d.b.b("com.google.code.rome.android.repackaged.com.sun.syndication.feed.synd.SyndFeed", org/b/e/a/k.getClassLoader());

    public static void a(List list)
    {
        list.add(new org.b.c.b.b());
        list.add(new j());
        list.add(new i());
        if (a)
        {
            list.add(new c());
            list.add(new e());
        } else
        {
            list.add(new org.b.c.b.c());
        }
        if (b)
        {
            list.add(new org.b.c.b.c.b());
        }
        if (!d) goto _L2; else goto _L1
_L1:
        list.add(new org.b.c.b.b.b());
_L4:
        if (e)
        {
            list.add(new a());
        }
        return;
_L2:
        if (c)
        {
            list.add(new org.b.c.b.b.c());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        boolean flag = true;
        boolean flag1;
        if (org.b.d.b.b("org.codehaus.jackson.map.ObjectMapper", org/b/e/a/k.getClassLoader()) && org.b.d.b.b("org.codehaus.jackson.JsonGenerator", org/b/e/a/k.getClassLoader()))
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        c = flag1;
        if (!org.b.d.b.b("com.fasterxml.jackson.databind.ObjectMapper", org/b/e/a/k.getClassLoader()) || !org.b.d.b.b("com.fasterxml.jackson.core.JsonGenerator", org/b/e/a/k.getClassLoader()))
        {
            flag = false;
        }
        d = flag;
    }
}
