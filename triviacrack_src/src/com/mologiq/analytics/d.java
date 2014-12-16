// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.mologiq.analytics:
//            e, c

public class d
{

    final c a;
    private Long b;
    private Long c;
    private String d;
    private String e;
    private String f;
    private List g;

    public d(c c1)
    {
        a = c1;
        super();
    }

    JSONObject a()
    {
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("ts", b);
        jsonobject.put("bid", c);
        jsonobject.put("sid", d);
        jsonobject.put("pid", e);
        jsonobject.put("p", f);
        if (g == null || g.size() <= 0) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        iterator = g.iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        jsonobject.put("tp", jsonarray);
_L2:
        return jsonobject;
_L4:
        e e1 = (e)iterator.next();
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("n", e1.a());
        jsonobject1.put("v", e1.b());
        jsonarray.put(jsonobject1);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(Long long1)
    {
        b = long1;
    }

    public void a(String s)
    {
        d = s;
    }

    public void a(List list)
    {
        g = list;
    }

    public void b(Long long1)
    {
        c = long1;
    }

    public void b(String s)
    {
        f = s;
    }
}
