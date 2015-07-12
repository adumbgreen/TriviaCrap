// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.mobileapptracker:
//            i, n, g, f, 
//            o, x, t, a, 
//            c, u, d, b, 
//            m, l, j, e, 
//            v, w, k, p, 
//            q, r

public class h
{

    private static volatile h t = null;
    protected f a;
    protected g b;
    protected boolean c;
    protected boolean d;
    protected boolean e;
    protected boolean f;
    protected boolean g;
    protected boolean h;
    protected BroadcastReceiver i;
    protected i j;
    protected Context k;
    protected ExecutorService l;
    protected ExecutorService m;
    protected c n;
    private final String o = "heF9BATUfWuISyO8";
    private t p;
    private a q;
    private boolean r;
    private boolean s;

    protected h()
    {
    }

    public static h a()
    {
        com/mobileapptracker/h;
        JVM INSTR monitorenter ;
        h h1 = t;
        com/mobileapptracker/h;
        JVM INSTR monitorexit ;
        return h1;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(Context context, String s1, String s2)
    {
        h h1 = new h();
        t = h1;
        h1.k = context.getApplicationContext();
        t.m = Executors.newSingleThreadExecutor();
        t.a(s1, s2);
    }

    static void a(h h1, Object obj, JSONArray jsonarray, double d1, String s1, String s2, String s3, 
            String s4)
    {
        h1.a(obj, jsonarray, d1, s1, s2, s3, s4);
    }

    private void a(Object obj, JSONArray jsonarray, double d1, String s1, String s2, String s3, 
            String s4)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Date date;
        b();
        j.a("conversion");
        date = new Date();
        if (!(obj instanceof String))
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (obj.equals("close")) goto _L1; else goto _L3
_L3:
        if (!obj.equals("open") && !obj.equals("install") && !obj.equals("update") && !obj.equals("session")) goto _L5; else goto _L4
_L4:
        j.a("session");
        new Date(60000L + date.getTime());
_L6:
        j.T(Double.toString(d1));
        if (d1 <= 0.0D)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        j.H(Integer.toString(1));
        j.h(s1);
        j.S(s2);
        String s5 = com.mobileapptracker.n.a(r, s);
        String s6 = com.mobileapptracker.n.a();
        JSONObject jsonobject = com.mobileapptracker.n.a(jsonarray, s3, s4);
        if (b != null)
        {
            b.a(s5, s6, jsonobject);
        }
        a(s5, s6, jsonobject, g);
        g = false;
        b();
        if (a != null)
        {
            a.a(s2);
        }
        j.b();
          goto _L1
        Exception exception;
        exception;
        throw exception;
_L5:
        j.x((String)obj);
          goto _L6
label0:
        {
            if (!(obj instanceof Integer))
            {
                break label0;
            }
            j.v(Integer.toString(((Integer)obj).intValue()));
        }
          goto _L6
        Log.d("MobileAppTracker", "Received invalid event name or id value, not measuring event");
          goto _L1
    }

    public static boolean a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    public void a(Activity activity)
    {
        m.execute(new o(this, activity));
    }

    public void a(String s1)
    {
        m.execute(new x(this, s1));
    }

    protected void a(String s1, String s2)
    {
        com.mobileapptracker.i.a(k, s1, s2);
        j = com.mobileapptracker.i.a();
        l = Executors.newSingleThreadExecutor();
        p = new t();
        q = new a(s2.trim(), "heF9BATUfWuISyO8");
        g = true;
        d = false;
        c = false;
        r = false;
        s = false;
        n = new c(k, this);
        b();
        i = new u(this);
        if (c)
        {
            IntentFilter intentfilter;
            try
            {
                k.unregisterReceiver(i);
            }
            catch (IllegalArgumentException illegalargumentexception) { }
            c = false;
        }
        intentfilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        k.registerReceiver(i, intentfilter);
        c = true;
        d = true;
    }

    protected void a(String s1, String s2, JSONObject jsonobject, boolean flag)
    {
        ExecutorService executorservice = l;
        c c1 = n;
        c1.getClass();
        executorservice.execute(new d(c1, s1, s2, jsonobject, flag));
    }

    public void a(String s1, List list, double d1, String s2, String s3)
    {
        a(s1, list, d1, s2, s3, null, null);
    }

    public void a(String s1, List list, double d1, String s2, String s3, String s4, 
            String s5)
    {
        JSONArray jsonarray = new JSONArray();
        if (list != null)
        {
            for (int i1 = 0; i1 < list.size(); i1++)
            {
                jsonarray.put(((b)list.get(i1)).a());
            }

        }
        m.execute(new m(this, s1, jsonarray, d1, s2, s3, s4, s5));
    }

    public void a(String s1, boolean flag)
    {
        int i1;
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        m.execute(new l(this, s1, i1));
    }

    public void a(boolean flag)
    {
        m.execute(new j(this, flag));
    }

    protected boolean a(String s1, String s2, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        if (r)
        {
            Log.d("MobileAppTracker", "Sending event to server...");
        }
        String s3 = com.mobileapptracker.n.a(s2, q);
        String s4 = (new StringBuilder()).append(s1).append("&data=").append(s3).toString();
        jsonobject1 = p.a(s4, jsonobject, r);
        if (jsonobject1 != null) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            a.b(jsonobject1);
        }
_L4:
        return true;
_L2:
        if (!jsonobject1.has("success"))
        {
            if (r)
            {
                Log.d("MobileAppTracker", "Request failed, event will remain in queue");
            }
            return false;
        }
        if (a == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        JSONException jsonexception;
        String s5;
        boolean flag;
        boolean flag1;
        try
        {
            flag = jsonobject1.getString("success").equals("true");
        }
        catch (JSONException jsonexception1)
        {
            jsonexception1.printStackTrace();
            return false;
        }
        flag1 = false;
        if (flag)
        {
            flag1 = true;
        }
        if (flag1)
        {
            a.a(jsonobject1);
        } else
        {
            a.b(jsonobject1);
        }
        if (!jsonobject1.getString("site_event_type").equals("open")) goto _L4; else goto _L3
_L3:
        s5 = jsonobject1.getString("log_id");
        if (e().equals(""))
        {
            j.N(s5);
        }
        j.J(s5);
        return true;
        jsonexception;
        return true;
    }

    protected void b()
    {
        if (!a(k))
        {
            return;
        } else
        {
            ExecutorService executorservice = l;
            c c1 = n;
            c1.getClass();
            executorservice.execute(new e(c1));
            return;
        }
    }

    public void b(String s1)
    {
        m.execute(new v(this, s1));
    }

    public void c()
    {
        m.execute(new w(this));
    }

    public void c(String s1)
    {
        m.execute(new k(this, s1));
    }

    public String d()
    {
        return j.q();
    }

    public void d(String s1)
    {
        m.execute(new p(this, s1));
    }

    public String e()
    {
        return j.af();
    }

    public void e(String s1)
    {
        m.execute(new q(this, s1));
    }

    public String f()
    {
        return j.am();
    }

    public void f(String s1)
    {
        m.execute(new r(this, s1));
    }

}
