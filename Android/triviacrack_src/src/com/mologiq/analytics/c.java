// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import org.json.JSONObject;

// Referenced classes of package com.mologiq.analytics:
//            d

public class c
{

    private String a;
    private String b;
    private String c;
    private boolean d;
    private String e;
    private int f;
    private String g;
    private String h;
    private d i;
    private d j;
    private d k;

    public c()
    {
    }

    public String a()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("androidadvertisingid", c);
        jsonobject.put("androidadvertisingidoptout", d);
        jsonobject.put("androidid", e);
        jsonobject.put("v", a);
        jsonobject.put("d", b);
        jsonobject.put("p", g);
        jsonobject.put("wifi", f);
        jsonobject.put("ip", h);
        if (k != null)
        {
            jsonobject.put("clicks", k.a());
        }
        if (i != null)
        {
            jsonobject.put("impressions", i.a());
        }
        if (j != null)
        {
            jsonobject.put("requests", j.a());
        }
        return jsonobject.toString();
    }

    public void a(int l)
    {
        f = l;
    }

    public void a(d d1)
    {
        i = d1;
    }

    public void a(String s)
    {
        a = s;
    }

    public void a(boolean flag)
    {
        d = flag;
    }

    public void b(d d1)
    {
        j = d1;
    }

    public void b(String s)
    {
        b = s;
    }

    public void c(d d1)
    {
        k = d1;
    }

    public void c(String s)
    {
        g = s;
    }

    public void d(String s)
    {
        h = s;
    }

    public void e(String s)
    {
        c = s;
    }

    public void f(String s)
    {
        e = s;
    }
}
