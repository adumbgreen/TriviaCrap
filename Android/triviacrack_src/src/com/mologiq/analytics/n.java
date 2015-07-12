// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.mologiq.analytics:
//            ac, ad, af, aj, 
//            ae

public class n
{

    private String a;
    private String b;
    private String c;
    private ad d;

    public n()
    {
    }

    public String a(Context context)
    {
        ac ac1;
        JSONObject jsonobject;
        ac1 = ac.d(context);
        if (ac1.t() == 0)
        {
            return "";
        }
        jsonobject = new JSONObject();
        jsonobject.put("timestamp", System.currentTimeMillis());
        jsonobject.put("product", d.e());
        jsonobject.put("p", c);
        jsonobject.put("v", a);
        jsonobject.put("d", b);
        jsonobject.put("androidadvertiserid", d.n());
        jsonobject.put("androidadvertiseridoptout", d.o());
        jsonobject.put("androidid", d.p());
        jsonobject.put("os", d.f());
        jsonobject.put("model", d.g());
        jsonobject.put("location", d.d());
        jsonobject.put("locationAltitude", d.w());
        jsonobject.put("locationTimestamp", d.x());
        jsonobject.put("locationAccuracy", d.y());
        jsonobject.put("locationSpeed", d.z());
        jsonobject.put("device", d.h());
        if (d.v() == null) goto _L2; else goto _L1
_L1:
        if (d.v().b() != null)
        {
            JSONObject jsonobject2 = new JSONObject();
            jsonobject2.put("ssid", d.v().b().a());
            jsonobject.put("wificurrent", jsonobject2);
        }
        if (d.v().a() == null) goto _L2; else goto _L3
_L3:
        JSONArray jsonarray1;
        Iterator iterator1;
        jsonarray1 = new JSONArray();
        iterator1 = d.v().a().iterator();
_L11:
        if (iterator1.hasNext()) goto _L5; else goto _L4
_L4:
        jsonobject.put("wifilist", jsonarray1);
_L2:
        jsonobject.put("api", d.i());
        jsonobject.put("brand", d.j());
        jsonobject.put("language", d.k());
        jsonobject.put("countryCode", d.t());
        jsonobject.put("timezone", d.r());
        jsonobject.put("carrier", d.B());
        if (!ac1.i()) goto _L7; else goto _L6
_L6:
        ae ae1 = d.d(context);
        if (ae1 == null) goto _L7; else goto _L8
_L8:
        jsonobject.put("policy", ae1.a());
        if (ae1.b() != null && ae1.b().size() > 0)
        {
            jsonobject.put("audience", new JSONArray(ae1.b()));
        }
        jsonobject.put("appcount", ae1.c());
        jsonobject.put("meanversion", ae1.d());
        if (ae1.e() != null && ae1.e().size() > 0)
        {
            jsonobject.put("campaigns", new JSONArray(ae1.e()));
        }
        if (ae1.g() == null || ae1.g().size() <= 0) goto _L10; else goto _L9
_L9:
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        iterator = ae1.g().keySet().iterator();
_L12:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_732;
        }
        jsonobject.put("classifications", jsonarray);
_L10:
        if (ae1.f() != null && ae1.f().size() > 0)
        {
            jsonobject.put("appids", new JSONArray(ae1.f()));
        }
_L7:
        return jsonobject.toString();
_L5:
        aj aj1 = (aj)iterator1.next();
        JSONObject jsonobject3 = new JSONObject();
        jsonobject3.put("ssid", aj1.a());
        jsonarray1.put(jsonobject3);
          goto _L11
        Integer integer = (Integer)iterator.next();
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("classificationid", integer);
        jsonobject1.put("count", ae1.g().get(integer));
        jsonarray.put(jsonobject1);
          goto _L12
    }

    public void a(ad ad1)
    {
        d = ad1;
    }

    public void a(String s)
    {
        a = s;
    }

    public void b(String s)
    {
        b = s;
    }

    public void c(String s)
    {
        c = s;
    }
}
