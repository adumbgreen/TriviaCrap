// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.mologiq.analytics:
//            u, l, p, r, 
//            j, q, k, aa, 
//            ag

public class ac extends u
{

    private static final ac s = new ac(".3ca154f5-9711-475d-819c-7bab4289e4a7");
    private static final AtomicBoolean t = new AtomicBoolean(false);
    private long a;
    private long b;
    private String c;
    private String d;
    private String e;
    private String f;
    private int g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    private long m;
    private long n;
    private long o;
    private SparseArray p;
    private r q;
    private List r;

    private ac(String s1)
    {
        super(s1);
        a = 0L;
        b = 0L;
        c = "http://a.mologiq.net/mologiq/aea";
        d = "http://a.mologiq.net/mologiq/deai";
        e = "http://a.mologiq.net/mologiq/dea";
        f = "http://a.mologiq.net/mologiq/et";
        g = 100;
        h = false;
        i = false;
        j = false;
        k = false;
        m = 0x927c0L;
        n = 0x927c0L;
        o = 0L;
        l = 0;
        p = com.mologiq.analytics.l.a().b();
        q = com.mologiq.analytics.p.a().c();
    }

    private void c(String s1)
    {
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (s1.length() <= 0) goto _L2; else goto _L3
_L3:
        JSONObject jsonobject;
        jsonobject = new JSONObject(s1);
        if (!jsonobject.isNull("adEventsAndroidUrl"))
        {
            c = jsonobject.getString("adEventsAndroidUrl");
        }
        if (!jsonobject.isNull("deviceEventsInitAndroidUrl"))
        {
            d = jsonobject.getString("deviceEventsInitAndroidUrl");
        }
        if (!jsonobject.isNull("deviceEventsAndroidUrl"))
        {
            e = jsonobject.getString("deviceEventsAndroidUrl");
        }
        if (!jsonobject.isNull("targetParamsAndroidUrl"))
        {
            f = jsonobject.getString("targetParamsAndroidUrl");
        }
        if (!jsonobject.isNull("stopForPeriodInMs"))
        {
            a = jsonobject.getLong("stopForPeriodInMs");
        }
        if (!jsonobject.isNull("locationMask"))
        {
            g = jsonobject.getInt("locationMask");
        }
        if (!jsonobject.isNull("ttlEnhancedTargetParamsInMs"))
        {
            m = jsonobject.getLong("ttlEnhancedTargetParamsInMs");
        }
        if (!jsonobject.isNull("ttlDeviceStateInMs"))
        {
            n = jsonobject.getLong("ttlDeviceStateInMs");
        }
        if (!jsonobject.isNull("deviceStateTimestamp"))
        {
            o = jsonobject.getLong("deviceStateTimestamp");
        }
        if (jsonobject.isNull("enableLocation")) goto _L5; else goto _L4
_L4:
        h = jsonobject.getBoolean("enableLocation");
_L30:
        if (jsonobject.isNull("enableInstalledApps")) goto _L7; else goto _L6
_L6:
        i = jsonobject.getBoolean("enableInstalledApps");
_L31:
        if (jsonobject.isNull("enableNetworkInfo")) goto _L9; else goto _L8
_L8:
        j = jsonobject.getBoolean("enableNetworkInfo");
_L32:
        if (jsonobject.isNull("enableDeviceInfo")) goto _L11; else goto _L10
_L10:
        k = jsonobject.getBoolean("enableDeviceInfo");
_L33:
        if (jsonobject.isNull("policy")) goto _L13; else goto _L12
_L12:
        l = jsonobject.getInt("policy");
_L34:
        if (jsonobject.isNull("appfilters")) goto _L2; else goto _L14
_L14:
        JSONObject jsonobject1 = jsonobject.getJSONObject("appfilters");
        if (jsonobject1.isNull("applistdata")) goto _L16; else goto _L15
_L15:
        JSONArray jsonarray6 = jsonobject1.getJSONArray("applistdata");
        if (jsonarray6 == null) goto _L16; else goto _L17
_L17:
        if (jsonarray6.length() <= 0) goto _L16; else goto _L18
_L18:
        SparseArray sparsearray = new SparseArray();
        int l2 = 0;
_L53:
        if (l2 < jsonarray6.length()) goto _L20; else goto _L19
_L19:
        p = sparsearray;
_L16:
        if (jsonobject1.isNull("meandata")) goto _L22; else goto _L21
_L21:
        r r1;
        JSONArray jsonarray4;
        JSONObject jsonobject4 = jsonobject1.getJSONObject("meandata");
        p p1 = com.mologiq.analytics.p.a();
        p1.getClass();
        r1 = new r(p1);
        r1.a(jsonobject4.getString("version"));
        r1.a(jsonobject4.getInt("appcount"));
        jsonarray4 = jsonobject4.getJSONArray("classifications");
        if (jsonarray4 == null) goto _L24; else goto _L23
_L23:
        if (jsonarray4.length() <= 0) goto _L24; else goto _L25
_L25:
        ArrayList arraylist3 = new ArrayList();
        int j2 = 0;
_L35:
        if (j2 < jsonarray4.length()) goto _L27; else goto _L26
_L26:
        r1.a(arraylist3);
_L24:
        q = r1;
_L22:
        if (jsonobject1.isNull("appinstallcampaigns")) goto _L2; else goto _L28
_L28:
        JSONArray jsonarray;
        if (r == null)
        {
            r = new ArrayList();
        }
        jsonarray = jsonobject1.getJSONArray("appinstallcampaigns");
        int i1 = 0;
_L49:
        try
        {
            if (i1 >= jsonarray.length())
            {
                return;
            }
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return;
        }
          goto _L29
_L5:
        h = false;
          goto _L30
_L7:
        i = false;
          goto _L31
_L9:
        j = false;
          goto _L32
_L11:
        k = false;
          goto _L33
_L13:
        l = 1;
          goto _L34
_L20:
        JSONObject jsonobject6 = jsonarray6.getJSONObject(l2);
        j j3 = new j();
        if (!jsonobject6.isNull("name"))
        {
            j3.a(jsonobject6.getString("name"));
        }
        if (!jsonobject6.isNull("classificationid"))
        {
            j3.a(jsonobject6.getInt("classificationid"));
        }
        if (!jsonobject6.isNull("id"))
        {
            j3.b(jsonobject6.getInt("id"));
        }
        if (!jsonobject6.isNull("id"))
        {
            sparsearray.put(jsonobject6.getInt("id"), j3);
        }
        break MISSING_BLOCK_LABEL_1153;
_L27:
        q q1;
        JSONArray jsonarray5;
        ArrayList arraylist4;
        p p2 = com.mologiq.analytics.p.a();
        p2.getClass();
        q1 = new q(p2);
        JSONObject jsonobject5 = jsonarray4.getJSONObject(j2);
        q1.a(jsonobject5.getInt("id"));
        q1.b(jsonobject5.getInt("mean"));
        jsonarray5 = jsonobject5.getJSONArray("apps");
        arraylist4 = new ArrayList();
        int k2 = 0;
_L36:
        if (k2 < jsonarray5.length())
        {
            break MISSING_BLOCK_LABEL_803;
        }
        q1.a(arraylist4);
        arraylist3.add(q1);
        j2++;
          goto _L35
        arraylist4.add(Integer.valueOf(jsonarray5.getInt(k2)));
        k2++;
          goto _L36
_L29:
        JSONObject jsonobject2;
        k k1;
        jsonobject2 = jsonarray.getJSONObject(i1);
        k1 = new k();
        k1.b(Integer.valueOf(jsonobject2.getInt("id")));
        k1.a(Integer.valueOf(jsonobject2.getInt("userid")));
        if (jsonobject2.isNull("isnotinstalled")) goto _L38; else goto _L37
_L37:
        JSONArray jsonarray3;
        ArrayList arraylist2;
        jsonarray3 = jsonobject2.getJSONArray("isnotinstalled");
        arraylist2 = new ArrayList();
        int i2 = 0;
_L50:
        if (i2 < jsonarray3.length()) goto _L40; else goto _L39
_L39:
        k1.a(arraylist2);
_L38:
        if (jsonobject2.isNull("isinstalled")) goto _L42; else goto _L41
_L41:
        ArrayList arraylist;
        JSONArray jsonarray1;
        arraylist = new ArrayList();
        jsonarray1 = jsonobject2.getJSONArray("isinstalled");
        int j1 = 0;
_L51:
        if (j1 < jsonarray1.length()) goto _L44; else goto _L43
_L43:
        k1.b(arraylist);
_L42:
        if (jsonobject2.isNull("tp")) goto _L46; else goto _L45
_L45:
        ArrayList arraylist1;
        JSONArray jsonarray2;
        arraylist1 = new ArrayList();
        jsonarray2 = jsonobject2.getJSONArray("tp");
        int l1 = 0;
_L52:
        if (l1 < jsonarray2.length()) goto _L48; else goto _L47
_L47:
        k1.c(arraylist1);
_L46:
        r.add(k1);
        i1++;
          goto _L49
_L40:
        arraylist2.add(Integer.valueOf(jsonarray3.getInt(i2)));
        i2++;
          goto _L50
_L44:
        arraylist.add(Integer.valueOf(jsonarray1.getInt(j1)));
        j1++;
          goto _L51
_L48:
        JSONObject jsonobject3 = jsonarray2.getJSONObject(l1);
        aa aa1 = new aa();
        aa1.a(jsonobject3.getString("n"));
        aa1.b(jsonobject3.getString("v"));
        arraylist1.add(aa1);
        l1++;
          goto _L52
_L2:
        return;
        l2++;
          goto _L53
    }

    public static ac d(Context context)
    {
        if (t.compareAndSet(false, true))
        {
            s.a(context);
        }
        return s;
    }

    protected String a()
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        JSONArray jsonarray;
        int i1;
        jsonobject = new JSONObject();
        if (e() != null)
        {
            jsonobject.put("adEventsAndroidUrl", e());
        }
        if (f() != null)
        {
            jsonobject.put("deviceEventsAndroidUrl", f());
        }
        if (c() != null)
        {
            jsonobject.put("deviceEventsInitAndroidUrl", c());
        }
        if (g() != null)
        {
            jsonobject.put("targetParamsAndroidUrl", g());
        }
        jsonobject.put("stopForPeriodInMs", d());
        jsonobject.put("locationMask", o());
        jsonobject.put("ttlEnhancedTargetParamsInMs", l());
        jsonobject.put("ttlDeviceStateInMs", m());
        jsonobject.put("deviceStateTimestamp", n());
        jsonobject.put("enableLocation", h());
        jsonobject.put("enableInstalledApps", i());
        jsonobject.put("enableNetworkInfo", j());
        jsonobject.put("enableDeviceInfo", k());
        jsonobject.put("policy", l);
        jsonobject1 = new JSONObject();
        jsonarray = new JSONArray();
        i1 = 0;
_L9:
        if (i1 < p.size()) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject3;
        JSONArray jsonarray1;
        Iterator iterator;
        jsonobject1.put("applistdata", jsonarray);
        jsonobject3 = new JSONObject();
        jsonobject3.put("version", q.a());
        jsonobject3.put("appcount", q.b());
        jsonarray1 = new JSONArray();
        iterator = q.c().iterator();
_L10:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        jsonobject3.put("classifications", jsonarray1);
        jsonobject1.put("meandata", jsonobject3);
        if (r == null) goto _L6; else goto _L5
_L5:
        JSONArray jsonarray2;
        Iterator iterator1;
        jsonarray2 = new JSONArray();
        iterator1 = r.iterator();
_L13:
        if (iterator1.hasNext()) goto _L8; else goto _L7
_L7:
        jsonobject1.put("appinstallcampaigns", jsonarray2);
_L6:
        jsonobject.put("appfilters", jsonobject1);
        return jsonobject.toString();
_L2:
        j j1 = (j)p.valueAt(i1);
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("name", j1.b());
        jsonobject2.put("classificationid", j1.a());
        jsonobject2.put("id", j1.c());
        jsonarray.put(jsonobject2);
        i1++;
          goto _L9
_L4:
        q q1 = (q)iterator.next();
        JSONObject jsonobject4 = new JSONObject();
        jsonobject4.put("id", q1.a());
        jsonobject4.put("mean", q1.b());
        jsonobject4.put("apps", new JSONArray(q1.c()));
        jsonarray1.put(jsonobject4);
          goto _L10
_L8:
        k k1;
        JSONObject jsonobject5;
        k1 = (k)iterator1.next();
        jsonobject5 = new JSONObject();
        jsonobject5.put("id", k1.b());
        jsonobject5.put("userid", k1.a());
        jsonobject5.put("isnotinstalled", new JSONArray(k1.c()));
        jsonobject5.put("isinstalled", new JSONArray(k1.d()));
        if (k1.e() == null) goto _L12; else goto _L11
_L11:
        JSONArray jsonarray3;
        Iterator iterator2;
        jsonarray3 = new JSONArray();
        iterator2 = k1.e().iterator();
_L14:
        if (iterator2.hasNext())
        {
            break MISSING_BLOCK_LABEL_692;
        }
        jsonobject5.put("tp", jsonarray3);
_L12:
        jsonarray2.put(jsonobject5);
          goto _L13
        aa aa1 = (aa)iterator2.next();
        JSONObject jsonobject6 = new JSONObject();
        jsonobject6.put("n", aa1.a());
        jsonobject6.put("v", aa1.b());
        jsonarray3.put(jsonobject6);
          goto _L14
    }

    public void a(int i1)
    {
        l = i1;
    }

    public void a(long l1)
    {
        o = l1;
    }

    protected void a(String s1)
    {
        if (!b())
        {
            b = System.currentTimeMillis();
        }
        if (s1 != null && s1.length() > 0)
        {
            JSONObject jsonobject = new JSONObject(s1);
            if (!jsonobject.isNull("core"))
            {
                c(jsonobject.getJSONObject("core").toString());
            }
        }
    }

    protected void b(String s1)
    {
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (s1.length() <= 0) goto _L2; else goto _L3
_L3:
        JSONObject jsonobject;
        jsonobject = new JSONObject(s1);
        if (!jsonobject.isNull("adEventsAndroidUrl"))
        {
            c = jsonobject.getString("adEventsAndroidUrl");
        }
        if (!jsonobject.isNull("deviceEventsInitAndroidUrl"))
        {
            d = jsonobject.getString("deviceEventsInitAndroidUrl");
        }
        if (!jsonobject.isNull("deviceEventsAndroidUrl"))
        {
            e = jsonobject.getString("deviceEventsAndroidUrl");
        }
        if (!jsonobject.isNull("targetParamsAndroidUrl"))
        {
            f = jsonobject.getString("targetParamsAndroidUrl");
        }
        if (!jsonobject.isNull("stopForPeriodInMs"))
        {
            a = jsonobject.getLong("stopForPeriodInMs");
        }
        if (!jsonobject.isNull("locationMask"))
        {
            g = jsonobject.getInt("locationMask");
        }
        if (!jsonobject.isNull("ttlEnhancedTargetParamsInMs"))
        {
            m = jsonobject.getLong("ttlEnhancedTargetParamsInMs");
        }
        if (!jsonobject.isNull("ttlDeviceStateInMs"))
        {
            n = jsonobject.getLong("ttlDeviceStateInMs");
        }
        if (!jsonobject.isNull("deviceStateTimestamp"))
        {
            o = jsonobject.getLong("deviceStateTimestamp");
        }
        if (jsonobject.isNull("enableLocation")) goto _L5; else goto _L4
_L4:
        h = jsonobject.getBoolean("enableLocation");
_L29:
        if (jsonobject.isNull("enableInstalledApps")) goto _L7; else goto _L6
_L6:
        i = jsonobject.getBoolean("enableInstalledApps");
_L30:
        if (jsonobject.isNull("enableNetworkInfo")) goto _L9; else goto _L8
_L8:
        j = jsonobject.getBoolean("enableNetworkInfo");
_L31:
        if (jsonobject.isNull("enableDeviceInfo")) goto _L11; else goto _L10
_L10:
        k = jsonobject.getBoolean("enableDeviceInfo");
_L32:
        if (jsonobject.isNull("policy")) goto _L13; else goto _L12
_L12:
        l = jsonobject.getInt("policy");
_L33:
        if (jsonobject.isNull("appFilters")) goto _L2; else goto _L14
_L14:
        JSONObject jsonobject1 = jsonobject.getJSONObject("appFilters");
        if (jsonobject1.isNull("appList")) goto _L16; else goto _L15
_L15:
        JSONArray jsonarray8 = jsonobject1.getJSONArray("appList");
        if (jsonarray8 == null) goto _L16; else goto _L17
_L17:
        if (jsonarray8.length() <= 0) goto _L16; else goto _L18
_L18:
        int k3 = 0;
_L66:
        if (k3 < jsonarray8.length()) goto _L19; else goto _L16
_L16:
        if (jsonobject1.isNull("mean")) goto _L21; else goto _L20
_L20:
        r r1;
        JSONArray jsonarray6;
        JSONObject jsonobject5 = jsonobject1.getJSONObject("mean");
        p p1 = com.mologiq.analytics.p.a();
        p1.getClass();
        r1 = new r(p1);
        r1.a(jsonobject5.getString("version"));
        r1.a(jsonobject5.getInt("appcount"));
        jsonarray6 = jsonobject5.getJSONArray("classifications");
        if (jsonarray6 == null) goto _L23; else goto _L22
_L22:
        if (jsonarray6.length() <= 0) goto _L23; else goto _L24
_L24:
        ArrayList arraylist4 = new ArrayList();
        int i3 = 0;
_L35:
        if (i3 < jsonarray6.length()) goto _L26; else goto _L25
_L25:
        r1.a(arraylist4);
_L23:
        q = r1;
_L21:
        if (jsonobject1.isNull("campaigns")) goto _L2; else goto _L27
_L27:
        JSONArray jsonarray;
        if (r == null)
        {
            r = new ArrayList();
        }
        jsonarray = jsonobject1.getJSONArray("campaigns");
        int i1 = 0;
_L67:
        try
        {
            if (i1 >= jsonarray.length())
            {
                return;
            }
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return;
        }
          goto _L28
_L5:
        h = false;
          goto _L29
_L7:
        i = false;
          goto _L30
_L9:
        j = false;
          goto _L31
_L11:
        k = false;
          goto _L32
_L13:
        l = 0;
          goto _L33
_L19:
        JSONObject jsonobject7 = jsonarray8.getJSONObject(k3);
        j j4 = new j();
        if (!jsonobject7.isNull("name"))
        {
            j4.a(jsonobject7.getString("name"));
        }
        if (!jsonobject7.isNull("classificationid"))
        {
            j4.a(jsonobject7.getInt("classificationid"));
        }
        if (!jsonobject7.isNull("id"))
        {
            j4.b(jsonobject7.getInt("id"));
        }
        if (!jsonobject7.isNull("id"))
        {
            p.put(jsonobject7.getInt("id"), j4);
        }
          goto _L34
_L26:
        q q1;
        JSONArray jsonarray7;
        ArrayList arraylist5;
        p p2 = com.mologiq.analytics.p.a();
        p2.getClass();
        q1 = new q(p2);
        JSONObject jsonobject6 = jsonarray6.getJSONObject(i3);
        q1.a(jsonobject6.getInt("id"));
        q1.b(jsonobject6.getInt("mean"));
        jsonarray7 = jsonobject6.getJSONArray("apps");
        arraylist5 = new ArrayList();
        int j3 = 0;
_L36:
        if (j3 < jsonarray7.length())
        {
            break MISSING_BLOCK_LABEL_796;
        }
        q1.a(arraylist5);
        arraylist4.add(q1);
        i3++;
          goto _L35
        arraylist5.add(Integer.valueOf(jsonarray7.getInt(j3)));
        j3++;
          goto _L36
_L28:
        JSONObject jsonobject2 = jsonarray.getJSONObject(i1);
        if (jsonobject2.isNull("action")) goto _L38; else goto _L37
_L37:
        String s2 = jsonobject2.getString("action");
        if (!s2.equals("add")) goto _L40; else goto _L39
_L39:
        if (jsonobject2.isNull("data")) goto _L38; else goto _L41
_L41:
        JSONArray jsonarray2 = jsonobject2.getJSONArray("data");
        int l1 = 0;
_L55:
        if (l1 < jsonarray2.length()) goto _L42; else goto _L38
_L42:
        JSONObject jsonobject3;
        k k2;
        jsonobject3 = jsonarray2.getJSONObject(l1);
        k2 = new k();
        k2.b(Integer.valueOf(jsonobject3.getInt("id")));
        k2.a(Integer.valueOf(jsonobject3.getInt("userid")));
        if (jsonobject3.isNull("notinstall")) goto _L44; else goto _L43
_L43:
        JSONArray jsonarray5;
        ArrayList arraylist3;
        jsonarray5 = jsonobject3.getJSONArray("notinstall");
        arraylist3 = new ArrayList();
        int l2 = 0;
_L56:
        if (l2 < jsonarray5.length()) goto _L46; else goto _L45
_L45:
        k2.a(arraylist3);
_L44:
        if (jsonobject3.isNull("install")) goto _L48; else goto _L47
_L47:
        ArrayList arraylist1;
        JSONArray jsonarray3;
        arraylist1 = new ArrayList();
        jsonarray3 = jsonobject3.getJSONArray("install");
        int i2 = 0;
_L57:
        if (i2 < jsonarray3.length()) goto _L50; else goto _L49
_L49:
        k2.b(arraylist1);
_L48:
        if (jsonobject3.isNull("tp")) goto _L52; else goto _L51
_L51:
        ArrayList arraylist2;
        JSONArray jsonarray4;
        arraylist2 = new ArrayList();
        jsonarray4 = jsonobject3.getJSONArray("tp");
        int j2 = 0;
_L58:
        if (j2 < jsonarray4.length()) goto _L54; else goto _L53
_L53:
        k2.c(arraylist2);
_L52:
        r.add(k2);
        l1++;
          goto _L55
_L46:
        arraylist3.add(Integer.valueOf(jsonarray5.getInt(l2)));
        l2++;
          goto _L56
_L50:
        arraylist1.add(Integer.valueOf(jsonarray3.getInt(i2)));
        i2++;
          goto _L57
_L54:
        JSONObject jsonobject4 = jsonarray4.getJSONObject(j2);
        aa aa1 = new aa();
        aa1.a(jsonobject4.getString("n"));
        aa1.b(jsonobject4.getString("v"));
        arraylist2.add(aa1);
        j2++;
          goto _L58
_L40:
        if (!s2.equals("delete")) goto _L38; else goto _L59
_L59:
        HashSet hashset = new HashSet();
        if (jsonobject2.isNull("data")) goto _L38; else goto _L60
_L60:
        JSONArray jsonarray1 = jsonobject2.getJSONArray("data");
        int j1 = 0;
_L65:
        if (j1 < jsonarray1.length()) goto _L62; else goto _L61
_L61:
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = r.iterator();
_L64:
        if (!iterator.hasNext())
        {
            r = arraylist;
            break; /* Loop/switch isn't completed */
        }
          goto _L63
_L62:
        hashset.add(Integer.valueOf(jsonarray1.getJSONObject(i1).getInt("id")));
        j1++;
        continue; /* Loop/switch isn't completed */
_L63:
        k k1 = (k)iterator.next();
        if (!hashset.contains(k1.b()))
        {
            arraylist.add(k1);
        }
        if (true) goto _L64; else goto _L2
_L2:
        return;
        if (true) goto _L65; else goto _L38
_L34:
        k3++;
          goto _L66
_L38:
        i1++;
          goto _L67
    }

    public boolean b()
    {
        while (a == -1L || System.currentTimeMillis() - b < a) 
        {
            return true;
        }
        return false;
    }

    public String c()
    {
        return d;
    }

    public void c(Context context)
    {
        String s1 = (new StringBuilder()).append(ag.a(context)).append(System.getProperty("line.separator")).append(".3ca154f5-9711-475d-819c-7bab4289e4a7").toString();
        JSONObject jsonobject = new JSONObject();
        String s2 = a();
        if (s2 != null && s2.length() > 0)
        {
            jsonobject.put("core", new JSONObject(s2));
        }
        String s3 = u();
        if (s3 != null && s3.length() > 0)
        {
            jsonobject.put("extra", new JSONObject(s3));
        }
        ag.a(s1, jsonobject.toString());
    }

    public long d()
    {
        return a;
    }

    public String e()
    {
        return c;
    }

    public String f()
    {
        return e;
    }

    public String g()
    {
        return f;
    }

    public boolean h()
    {
        return h;
    }

    public boolean i()
    {
        return i;
    }

    public boolean j()
    {
        return j;
    }

    public boolean k()
    {
        return k;
    }

    public long l()
    {
        return m;
    }

    public long m()
    {
        return n;
    }

    public long n()
    {
        return o;
    }

    public int o()
    {
        return g;
    }

    public long p()
    {
        return b;
    }

    public SparseArray q()
    {
        return p;
    }

    public r r()
    {
        return q;
    }

    public List s()
    {
        return r;
    }

    public int t()
    {
        return l;
    }

    protected String u()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("stopForPeriodTimestamp", p());
        return jsonobject.toString();
    }

}
