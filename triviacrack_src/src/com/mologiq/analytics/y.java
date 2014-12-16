// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.mologiq.analytics:
//            u, z, ag

class y extends u
{

    private static final y c = new y(".f4532369-bca8-4847-bd88-d1779ee05f8f");
    private List a;
    private long b;

    private y(String s)
    {
        super(s);
        a = new ArrayList();
        b = 0L;
    }

    static y b()
    {
        return c;
    }

    protected String a()
    {
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("timestamp", b);
        if (a == null || a.size() <= 0) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        iterator = a.iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        jsonobject.put("tp", jsonarray);
_L2:
        return jsonobject.toString();
_L4:
        z z1 = (z)iterator.next();
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("n", z1.a());
        jsonobject1.put("v", z1.b());
        jsonarray.put(jsonobject1);
        if (true) goto _L6; else goto _L5
_L5:
    }

    void a(long l)
    {
        b = l;
    }

    protected void a(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject.isNull("core")) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject1;
        jsonobject1 = jsonobject.getJSONObject("core");
        a(jsonobject1.getLong("timestamp"));
        if (jsonobject1.isNull("tp")) goto _L2; else goto _L3
_L3:
        JSONArray jsonarray = jsonobject1.getJSONArray("tp");
        if (jsonarray == null || jsonarray.length() <= 0) goto _L2; else goto _L4
_L4:
        int i;
        a = new ArrayList();
        i = 0;
_L7:
        if (i < jsonarray.length()) goto _L5; else goto _L2
_L2:
        return;
_L5:
        JSONObject jsonobject2 = jsonarray.getJSONObject(i);
        z z1 = new z(this);
        z1.a(jsonobject2.getString("n"));
        z1.b(jsonobject2.getString("v"));
        a.add(z1);
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected void b(String s)
    {
        if (s == null || s.length() <= 0) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject.isNull("tp")) goto _L2; else goto _L3
_L3:
        JSONArray jsonarray = jsonobject.getJSONArray("tp");
        if (jsonarray == null || jsonarray.length() <= 0) goto _L2; else goto _L4
_L4:
        int i;
        a = new ArrayList();
        i = 0;
_L7:
        if (i < jsonarray.length()) goto _L5; else goto _L2
_L2:
        return;
_L5:
        JSONObject jsonobject1 = jsonarray.getJSONObject(i);
        z z1 = new z(this);
        z1.a(jsonobject1.getString("n"));
        z1.b(jsonobject1.getString("v"));
        a.add(z1);
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public Map c()
    {
        if (a != null && a.size() > 0)
        {
            HashMap hashmap = new HashMap();
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    return hashmap;
                }
                z z1 = (z)iterator.next();
                hashmap.put(z1.a(), z1.b());
            } while (true);
        } else
        {
            return null;
        }
    }

    public void c(Context context)
    {
        String s = (new StringBuilder()).append(ag.a(context)).append(System.getProperty("line.separator")).append(".f4532369-bca8-4847-bd88-d1779ee05f8f").toString();
        JSONObject jsonobject = new JSONObject();
        String s1 = a();
        if (s1 != null && s1.length() > 0)
        {
            jsonobject.put("core", new JSONObject(s1));
        }
        String s2 = e();
        if (s2 != null && s2.length() > 0)
        {
            jsonobject.put("extra", new JSONObject(s2));
        }
        ag.a(s, jsonobject.toString());
    }

    long d()
    {
        return b;
    }

    protected String e()
    {
        return "";
    }

}
