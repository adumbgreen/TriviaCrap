// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.etermax.tools.a.c.c;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.b.e.a.g;
import org.b.e.a.k;

// Referenced classes of package com.etermax.tools.a.a:
//            b, c, g

public abstract class a
{

    protected Context s;
    protected com.etermax.tools.j.a t;
    protected com.etermax.tools.a.a.g u;

    public a()
    {
    }

    private void c()
    {
        if (!H())
        {
            throw new c();
        } else
        {
            return;
        }
    }

    protected GsonBuilder E()
    {
        return (new GsonBuilder()).setDateFormat("MM/dd/yyyy HH:mm:ss ZZZ");
    }

    protected k F()
    {
        k k1 = new k();
        org.b.c.b.b.a a1 = new org.b.c.b.b.a();
        a1.a(E().create());
        k1.c().add(new org.b.c.b.c());
        k1.c().add(a1);
        k1.a(new org.b.c.a.k());
        ArrayList arraylist = new ArrayList();
        arraylist.add(new b(this));
        k1.a(arraylist);
        k1.a(d());
        return k1;
    }

    protected Map G()
    {
        HashMap hashmap = new HashMap();
        String s1 = b();
        if (s1 != null)
        {
            hashmap.put("Cookie", s1);
        }
        if (com.etermax.tools.g.a.c())
        {
            hashmap.put("god-password", com.etermax.tools.g.a.b());
        }
        return hashmap;
    }

    public boolean H()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)s.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnectedOrConnecting();
    }

    protected Object a(com.etermax.tools.a.a.c c1)
    {
        Object obj;
        c();
        obj = c1.b();
        return obj;
        com.etermax.tools.a.c.a a1;
        a1;
        boolean flag1 = a();
        boolean flag = flag1;
_L2:
        g g1;
        if (flag)
        {
            return c1.b();
        } else
        {
            throw a1;
        }
        g1;
        throw g1;
        Exception exception;
        exception;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected abstract boolean a();

    protected abstract String b();

    protected abstract com.etermax.tools.a.b.a d();
}
