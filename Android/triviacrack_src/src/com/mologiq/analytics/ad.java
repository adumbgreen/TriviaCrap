// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.mologiq.analytics:
//            u, ac, k, af, 
//            aj, ag, ae, r, 
//            q, j

class ad extends u
{

    private static final ad z = new ad(".567ac581-718b-42d4-82d3-0daa55e13da7");
    private String a;
    private String b;
    private boolean c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private af p;
    private double q;
    private double r;
    private List s;
    private Map t;
    private double u;
    private long v;
    private double w;
    private double x;
    private String y;

    private ad(String s1)
    {
        super(s1);
        c = false;
    }

    static ad c()
    {
        return z;
    }

    private int f(Context context)
    {
        int i1 = 0;
        SparseArray sparsearray = ac.d(context).q();
        if (sparsearray != null)
        {
            int j1 = 0;
            do
            {
                if (i1 >= sparsearray.size())
                {
                    return j1;
                }
                Integer integer = Integer.valueOf(sparsearray.keyAt(i1));
                if (integer.intValue() > j1)
                {
                    j1 = integer.intValue();
                }
                i1++;
            } while (true);
        } else
        {
            return 0;
        }
    }

    private List g(Context context)
    {
        List list;
        ArrayList arraylist;
        list = ac.d(context).s();
        arraylist = new ArrayList();
        if (list == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = list.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return arraylist;
_L3:
        arraylist.add(((k)iterator.next()).b());
        if (true) goto _L5; else goto _L4
_L4:
    }

    public List A()
    {
        return s;
    }

    public String B()
    {
        return o;
    }

    protected String a()
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = new JSONObject();
        jsonobject1 = new JSONObject();
        jsonobject1.put("product", e());
        jsonobject1.put("androidadvertiserid", n());
        jsonobject1.put("androidadvertiseridoptout", o());
        jsonobject1.put("androidid", p());
        if (s != null && s.size() > 0)
        {
            jsonobject1.put("installedapps", new JSONArray(s));
        }
        if (t == null || t.size() <= 0) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        iterator = t.keySet().iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        jsonobject1.put("classifications", jsonarray);
_L2:
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("os", f());
        jsonobject2.put("model", g());
        jsonobject2.put("device", h());
        jsonobject2.put("manufacturer", q());
        jsonobject2.put("brand", j());
        jsonobject2.put("timezone", r());
        jsonobject2.put("timezoneId", s());
        jsonobject2.put("country_code", t());
        jsonobject2.put("device_resolution", u());
        jsonobject2.put("language", k());
        jsonobject2.put("carrier", B());
        jsonobject1.put("DeviceInfo", jsonobject2);
        jsonobject.put("DeviceEvent", jsonobject1);
        JSONObject jsonobject3 = new JSONObject();
        jsonobject3.put("latitude", l());
        jsonobject3.put("longitude", m());
        jsonobject1.put("LocationInfo", jsonobject3);
        return jsonobject.toString();
_L4:
        Integer integer = (Integer)iterator.next();
        JSONObject jsonobject4 = new JSONObject();
        jsonobject4.put("classificationid", integer);
        jsonobject4.put("count", t.get(integer));
        jsonarray.put(jsonobject4);
        if (true) goto _L6; else goto _L5
_L5:
    }

    void a(double d1)
    {
        q = d1;
    }

    public void a(long l1)
    {
        v = l1;
    }

    public void a(af af1)
    {
        p = af1;
    }

    protected void a(String s1)
    {
        int i1 = 0;
        if (s1 == null || s1.length() <= 0) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = new JSONObject(s1);
        if (jsonobject.isNull("core")) goto _L2; else goto _L3
_L3:
        JSONObject jsonobject1 = jsonobject.getJSONObject("core");
        if (jsonobject1.isNull("DeviceEvent")) goto _L2; else goto _L4
_L4:
        JSONObject jsonobject2;
        jsonobject2 = jsonobject1.getJSONObject("DeviceEvent");
        if (!jsonobject2.isNull("product"))
        {
            b(jsonobject2.getString("product"));
        }
        if (!jsonobject2.isNull("androidadvertiserid"))
        {
            i(jsonobject2.getString("androidadvertiserid"));
        }
        if (!jsonobject2.isNull("androidadvertiseridout"))
        {
            a(jsonobject2.getBoolean("androidadvertiseridoptout"));
        }
        if (!jsonobject2.isNull("androidid"))
        {
            j(jsonobject2.getString("androidid"));
        }
        if (jsonobject2.isNull("installedapps")) goto _L6; else goto _L5
_L5:
        JSONArray jsonarray2;
        ArrayList arraylist1;
        int k1;
        jsonarray2 = jsonobject2.getJSONArray("installedapps");
        arraylist1 = new ArrayList();
        k1 = 0;
_L17:
        if (k1 < jsonarray2.length()) goto _L8; else goto _L7
_L7:
        s = arraylist1;
_L6:
        if (jsonobject2.isNull("classifications")) goto _L10; else goto _L9
_L9:
        JSONArray jsonarray1;
        HashMap hashmap;
        int j1;
        jsonarray1 = jsonobject2.getJSONArray("classifications");
        hashmap = new HashMap();
        j1 = 0;
_L18:
        if (j1 < jsonarray1.length()) goto _L12; else goto _L11
_L11:
        t = hashmap;
_L10:
        if (!jsonobject2.isNull("DeviceInfo"))
        {
            JSONObject jsonobject7 = jsonobject2.getJSONObject("DeviceInfo");
            if (!jsonobject7.isNull("os"))
            {
                c(jsonobject7.getString("os"));
            }
            if (!jsonobject7.isNull("model"))
            {
                d(jsonobject7.getString("model"));
            }
            if (!jsonobject7.isNull("device"))
            {
                e(jsonobject7.getString("device"));
            }
            if (!jsonobject7.isNull("manufacturer"))
            {
                k(jsonobject7.getString("manufacturer"));
            }
            if (!jsonobject7.isNull("brand"))
            {
                g(jsonobject7.getString("brand"));
            }
            if (!jsonobject7.isNull("timezone"))
            {
                l(jsonobject7.getString("timezone"));
            }
            if (!jsonobject7.isNull("timezoneId"))
            {
                m(jsonobject7.getString("timezoneId"));
            }
            if (!jsonobject7.isNull("country_code"))
            {
                n(jsonobject7.getString("country_code"));
            }
            if (!jsonobject7.isNull("device_resolution"))
            {
                o(jsonobject7.getString("device_resolution"));
            }
            if (!jsonobject7.isNull("language"))
            {
                h(jsonobject7.getString("language"));
            }
            if (!jsonobject7.isNull("carrier"))
            {
                p(jsonobject7.getString("carrier"));
            }
        }
        if (!jsonobject2.isNull("LocationInfo"))
        {
            JSONObject jsonobject6 = jsonobject2.getJSONObject("LocationInfo");
            if (!jsonobject6.isNull("latitude"))
            {
                a(jsonobject6.getDouble("latitude"));
            }
            if (!jsonobject6.isNull("longitude"))
            {
                b(jsonobject6.getDouble("longitude"));
            }
            if (!jsonobject6.isNull("locationAltitude"))
            {
                c(jsonobject6.getDouble("locationAltitude"));
            }
            if (!jsonobject6.isNull("locationTimestamp"))
            {
                a(jsonobject6.getLong("locationTimestamp"));
            }
            if (!jsonobject6.isNull("locationAccuracy"))
            {
                d(jsonobject6.getDouble("locationAccuracy"));
            }
            if (!jsonobject6.isNull("locationSpeed"))
            {
                e(jsonobject6.getDouble("locationSpeed"));
            }
        }
        if (jsonobject2.isNull("NetworkInfo")) goto _L2; else goto _L13
_L13:
        JSONObject jsonobject3;
        af af1;
        jsonobject3 = jsonobject2.getJSONObject("NetworkInfo");
        af1 = new af(this);
        if (!jsonobject3.isNull("wificurrent"))
        {
            JSONObject jsonobject5 = jsonobject3.getJSONObject("wificurrent");
            aj aj2 = new aj();
            aj2.a(jsonobject5.getString("ssid"));
            af1.a(aj2);
        }
        if (jsonobject3.isNull("wifilist")) goto _L15; else goto _L14
_L14:
        JSONArray jsonarray = jsonobject3.getJSONArray("wifilist");
        if (jsonarray == null || jsonarray.length() <= 0) goto _L15; else goto _L16
_L16:
        ArrayList arraylist = new ArrayList();
_L19:
        if (i1 < jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_856;
        }
        af1.a(arraylist);
_L15:
        a(af1);
_L2:
        return;
_L8:
        arraylist1.add(Integer.valueOf(jsonarray2.getInt(k1)));
        k1++;
          goto _L17
_L12:
        JSONObject jsonobject8 = jsonarray1.getJSONObject(j1);
        hashmap.put(Integer.valueOf(jsonobject8.getInt("classificationid")), Integer.valueOf(jsonobject8.getInt("count")));
        j1++;
          goto _L18
        JSONObject jsonobject4 = jsonarray.getJSONObject(i1);
        aj aj1 = new aj();
        aj1.a(jsonobject4.getString("ssid"));
        arraylist.add(aj1);
        i1++;
          goto _L19
    }

    public void a(List list)
    {
        s = list;
    }

    public void a(Map map)
    {
        t = map;
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    protected String b()
    {
        JSONObject jsonobject = new JSONObject();
        if (v() == null) goto _L2; else goto _L1
_L1:
        af af1;
        JSONObject jsonobject1;
        af1 = v();
        jsonobject1 = new JSONObject();
        if (af1.b() != null)
        {
            JSONObject jsonobject2 = new JSONObject();
            jsonobject2.put("ssid", af1.b().a());
            jsonobject1.put("wificurrent", jsonobject2);
        }
        if (af1.a() == null) goto _L4; else goto _L3
_L3:
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        iterator = af1.a().iterator();
_L8:
        if (iterator.hasNext()) goto _L6; else goto _L5
_L5:
        jsonobject1.put("wifilist", jsonarray);
_L4:
        jsonobject.put("NetworkInfo", jsonobject1);
_L2:
        return jsonobject.toString();
_L6:
        aj aj1 = (aj)iterator.next();
        JSONObject jsonobject3 = new JSONObject();
        jsonobject3.put("ssid", aj1.a());
        jsonarray.put(jsonobject3);
        if (true) goto _L8; else goto _L7
_L7:
    }

    void b(double d1)
    {
        r = d1;
    }

    public void b(String s1)
    {
        a = s1;
    }

    public void c(double d1)
    {
        u = d1;
    }

    public void c(Context context)
    {
        String s1 = (new StringBuilder()).append(ag.a(context)).append(System.getProperty("line.separator")).append(".567ac581-718b-42d4-82d3-0daa55e13da7").toString();
        JSONObject jsonobject = new JSONObject();
        String s2 = a();
        if (s2 != null && s2.length() > 0)
        {
            jsonobject.put("core", new JSONObject(s2));
        }
        String s3 = b();
        if (s3 != null && s3.length() > 0)
        {
            jsonobject.put("extra", new JSONObject(s3));
        }
        ag.a(s1, jsonobject.toString());
    }

    public void c(String s1)
    {
        e = s1;
    }

    public ae d(Context context)
    {
        ac ac1;
        ae ae1;
        ac1 = ac.d(context);
        ae1 = new ae(this);
        ae1.a(ac1.t());
        if (ac1.t() <= 1) goto _L2; else goto _L1
_L1:
        r r1;
        ae1.b(g(context));
        ae1.b(f(context));
        r1 = ac1.r();
        if (r1 == null || t == null) goto _L2; else goto _L3
_L3:
        HashMap hashmap;
        Iterator iterator;
        ae1.a(r1.a());
        hashmap = new HashMap();
        iterator = r1.c().iterator();
_L7:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        Map map = ag.a(hashmap, ag.b);
        ArrayList arraylist = new ArrayList();
        q q1;
        int i1;
        int j1;
        for (Iterator iterator1 = map.entrySet().iterator(); iterator1.hasNext(); arraylist.add((Integer)((java.util.Map.Entry)iterator1.next()).getKey()))
        {
            break MISSING_BLOCK_LABEL_277;
        }

        ae1.a(arraylist);
_L2:
        if (ac1.t() == 3)
        {
            ae1.a(t);
        }
        if (ac1.t() >= 4)
        {
            ae1.c(s);
        }
        return ae1;
_L5:
        q1 = (q)iterator.next();
        i1 = q1.a();
        if (t.containsKey(Integer.valueOf(i1)))
        {
            j1 = ((Integer)t.get(Integer.valueOf(q1.a()))).intValue() - q1.b();
            hashmap.put(Integer.valueOf(i1), Integer.valueOf(j1));
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    String d()
    {
        return (new StringBuilder(String.valueOf(q))).append(",").append(r).toString();
    }

    public void d(double d1)
    {
        w = d1;
    }

    public void d(String s1)
    {
        f = s1;
    }

    public String e()
    {
        return a;
    }

    Map e(Context context)
    {
        HashMap hashmap;
        SparseArray sparsearray;
        hashmap = new HashMap();
        sparsearray = ac.d(context).q();
        if (sparsearray == null) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L5:
        if (i1 < sparsearray.size()) goto _L3; else goto _L2
_L2:
        return hashmap;
_L3:
        j j1 = (j)sparsearray.valueAt(i1);
        hashmap.put(j1.b(), j1);
        i1++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void e(double d1)
    {
        x = d1;
    }

    public void e(String s1)
    {
        g = s1;
    }

    public String f()
    {
        return e;
    }

    public void f(String s1)
    {
        y = s1;
    }

    public String g()
    {
        return f;
    }

    public void g(String s1)
    {
        i = s1;
    }

    public String h()
    {
        return g;
    }

    public void h(String s1)
    {
        n = s1;
    }

    public String i()
    {
        return y;
    }

    public void i(String s1)
    {
        b = s1;
    }

    public String j()
    {
        return i;
    }

    public void j(String s1)
    {
        d = s1;
    }

    public String k()
    {
        return n;
    }

    public void k(String s1)
    {
        h = s1;
    }

    double l()
    {
        return q;
    }

    public void l(String s1)
    {
        j = s1;
    }

    double m()
    {
        return r;
    }

    public void m(String s1)
    {
        k = s1;
    }

    public String n()
    {
        return b;
    }

    public void n(String s1)
    {
        l = s1;
    }

    public void o(String s1)
    {
        m = s1;
    }

    public boolean o()
    {
        return c;
    }

    public String p()
    {
        return d;
    }

    public void p(String s1)
    {
        o = s1;
    }

    public String q()
    {
        return h;
    }

    public String r()
    {
        return j;
    }

    public String s()
    {
        return k;
    }

    public String t()
    {
        return l;
    }

    public String u()
    {
        return m;
    }

    public af v()
    {
        return p;
    }

    public double w()
    {
        return u;
    }

    public long x()
    {
        return v;
    }

    public double y()
    {
        return w;
    }

    public double z()
    {
        return x;
    }

}
