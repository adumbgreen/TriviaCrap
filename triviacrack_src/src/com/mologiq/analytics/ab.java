// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.mologiq.analytics:
//            aa

public class ab
{

    private String a;
    private boolean b;
    private String c;
    private String d;
    private String e;
    private List f;
    private String g;
    private String h;

    public ab()
    {
    }

    public String a()
    {
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("androidadvertisingid", a);
        jsonobject.put("androidadvertisingidoptout", b);
        jsonobject.put("androidid", c);
        jsonobject.put("v", d);
        jsonobject.put("d", e);
        jsonobject.put("siteid", g);
        jsonobject.put("p", h);
        if (f == null || f.size() <= 0) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        iterator = f.iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        jsonobject.put("tp", jsonarray);
_L2:
        return jsonobject.toString();
_L4:
        aa aa1 = (aa)iterator.next();
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("n", aa1.a());
        jsonobject1.put("v", aa1.b());
        jsonarray.put(jsonobject1);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(String s)
    {
        h = s;
    }

    public void a(List list)
    {
        f = list;
    }

    public void a(boolean flag)
    {
        b = flag;
    }

    public void b(String s)
    {
        d = s;
    }

    public void c(String s)
    {
        e = s;
    }

    public void d(String s)
    {
        g = s;
    }

    public void e(String s)
    {
        a = s;
    }

    public void f(String s)
    {
        c = s;
    }
}
