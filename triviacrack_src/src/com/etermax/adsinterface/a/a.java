// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.etermax.adsinterface.a:
//            b, l, c, k

public class a
{

    private final String A;
    private final String B;
    private final String C;
    private final int D;
    SharedPreferences a;
    private String b;
    private int c;
    private b d;
    private Bundle e;
    private boolean f;
    private String g;
    private String h;
    private String i[];
    private String j;
    private String k;
    private boolean l;
    private String m[];
    private int n;
    private final String o;
    private final String p;
    private final String q;
    private final String r;
    private final String s;
    private final String t;
    private final String u;
    private final String v;
    private final String w;
    private final String x;
    private final String y;
    private final String z;

    private a(Context context, JSONObject jsonobject)
    {
        int i1 = 0;
        super();
        o = "name";
        p = "version";
        q = "type";
        r = "view_to_open";
        s = "package_name";
        t = "link";
        u = "if_not_installed";
        v = "content";
        w = "force_wait";
        x = "track_link";
        y = "session";
        z = "lang";
        A = "freq_cap";
        B = "min_memory";
        C = "min_sdk";
        D = -1;
        if (jsonobject.has("min_sdk"))
        {
            int k1 = jsonobject.getInt("min_sdk");
            if (android.os.Build.VERSION.SDK_INT < k1)
            {
                throw new Exception((new StringBuilder()).append("Customads sdk: ").append(android.os.Build.VERSION.SDK_INT).append(" - Minimo soportado: ").append(k1).toString());
            }
        }
        if (jsonobject.has("min_memory"))
        {
            long l1 = jsonobject.getLong("min_memory");
            long l2 = b(context) / 0xf4240L;
            if (l2 < l1)
            {
                throw new Exception((new StringBuilder()).append("Customads total_memory: ").append(l2).append(" - Minimo soportado: ").append(l1).toString());
            }
        }
        a = context.getSharedPreferences("com.etermax.customads.showtime", 0);
        b = jsonobject.getString("name");
        c = jsonobject.getInt("version");
        d = com.etermax.adsinterface.a.b.valueOf(jsonobject.getString("type").toUpperCase());
        if (jsonobject.has("freq_cap"))
        {
            n = jsonobject.getInt("freq_cap");
        }
        if (jsonobject.has("track_link"))
        {
            h = jsonobject.getString("track_link");
        }
        if (jsonobject.has("link"))
        {
            g = jsonobject.getString("link");
        }
        boolean flag;
        if (h != null && (h.contains("{unique_id}") || h.contains("{limit_tracking}")) || g != null && (g.contains("{unique_id}") || g.contains("{limit_tracking}")))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(context);
            String s2 = info.getId();
            JSONArray jsonarray;
            int j1;
            String s3;
            if (info.isLimitAdTrackingEnabled())
            {
                s3 = "true";
            } else
            {
                s3 = "false";
            }
            if (h != null)
            {
                h = h.replace("{unique_id}", s2);
                h = h.replace("{limit_tracking}", s3);
            }
            if (g != null)
            {
                g = g.replace("{unique_id}", s2);
                g = g.replace("{limit_tracking}", s3);
            }
        }
        if (jsonobject.has("package_name"))
        {
            j = jsonobject.getString("package_name");
            g = ((l)context.getApplicationContext()).a(j);
        }
        if (jsonobject.has("view_to_open"))
        {
            k = jsonobject.getString("view_to_open");
        }
        jsonarray = jsonobject.optJSONArray("if_not_installed");
        if (jsonarray != null && jsonarray.length() > 0)
        {
            i = new String[jsonarray.length()];
            for (j1 = 0; j1 < jsonarray.length(); j1++)
            {
                i[j1] = jsonarray.getString(j1);
            }

        }
        JSONObject jsonobject1 = jsonobject.getJSONObject("content");
        e = new Bundle();
        String s1;
        for (Iterator iterator = jsonobject1.keys(); iterator.hasNext(); e.putString(s1, jsonobject1.getString(s1)))
        {
            s1 = (String)iterator.next();
        }

        if (jsonobject.has("force_wait"))
        {
            f = jsonobject.getBoolean("force_wait");
        }
        if (jsonobject.has("session"))
        {
            l = jsonobject.getBoolean("session");
        }
        JSONArray jsonarray1 = jsonobject.optJSONArray("lang");
        if (jsonarray1 != null && jsonarray1.length() > 0)
        {
            m = new String[jsonarray1.length()];
            for (; i1 < jsonarray1.length(); i1++)
            {
                m[i1] = jsonarray1.getString(i1);
            }

        }
    }


    public static void a(Context context, JSONObject jsonobject, c c1)
    {
        if (c1 == null)
        {
            return;
        } else
        {
            (new Thread(new Runnable(context, jsonobject, c1) {

                final Context a;
                final JSONObject b;
                final c c;

                public void run()
                {
                    k k1 = new k(a);
                    a a1;
                    try
                    {
                        JSONObject jsonobject1 = k1.a(b.getString("u"), b.getInt("v"));
                        a1 = new a(a, jsonobject1);
                        if (a instanceof Activity)
                        {
                            ((Activity)a).runOnUiThread(new Runnable(this, a1) {

                                final a a;
                                final _cls1 b;

                                public void run()
                                {
                                    b.c.onAdInfoLoadedOk(a);
                                }

            
            {
                b = _pcls1;
                a = a1;
                super();
            }
                            });
                            return;
                        }
                    }
                    catch (Exception exception)
                    {
                        if (a instanceof Activity)
                        {
                            ((Activity)a).runOnUiThread(new Runnable(this, exception) {

                                final Exception a;
                                final _cls1 b;

                                public void run()
                                {
                                    b.c.onAdInfoLoadedFailed(a);
                                }

            
            {
                b = _pcls1;
                a = exception;
                super();
            }
                            });
                            return;
                        } else
                        {
                            c.onAdInfoLoadedFailed(exception);
                            return;
                        }
                    }
                    c.onAdInfoLoadedOk(a1);
                    return;
                }

            
            {
                a = context;
                b = jsonobject;
                c = c1;
                super();
            }
            })).start();
            return;
        }
    }

    private boolean a(String s1, Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            packagemanager.getPackageInfo(s1, 1);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    private String n()
    {
        return (new StringBuilder()).append(b).append("_").append(c).toString();
    }

    private long o()
    {
        BufferedReader bufferedreader;
        String s1;
        String as[];
        int i1;
        int j1;
        String s2;
        long l1;
        try
        {
            bufferedreader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            s1 = bufferedreader.readLine();
            as = s1.split("\\s+");
            i1 = as.length;
        }
        catch (IOException ioexception)
        {
            return -1L;
        }
        j1 = 0;
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        s2 = as[j1];
        com.etermax.a.a.a(s1, (new StringBuilder()).append(s2).append("\t").toString());
        j1++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_43;
_L1:
        l1 = 1024 * Integer.valueOf(as[1]).intValue();
        bufferedreader.close();
        return l1;
    }

    public String a()
    {
        return b;
    }

    public void a(long l1)
    {
        a.edit().putLong(n(), l1).commit();
    }

    public boolean a(Context context)
    {
        boolean flag = true;
        if (n <= 0) goto _L2; else goto _L1
_L1:
        long l1 = j();
        if (System.currentTimeMillis() - l1 >= (long)(0x36ee80 * n)) goto _L4; else goto _L3
_L3:
        flag = false;
_L6:
        return flag;
_L2:
        if (n == -1 && i())
        {
            return false;
        }
_L4:
        if (j != null && j.length() > 0)
        {
            flag = ((l)context.getApplicationContext()).b(j);
        }
        if (flag && i != null)
        {
            String as[] = i;
            int i1 = as.length;
            int j1 = 0;
            while (j1 < i1) 
            {
                if (a(as[j1], context))
                {
                    return false;
                }
                j1++;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public int b()
    {
        return c;
    }

    public long b(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
            android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
            activitymanager.getMemoryInfo(memoryinfo);
            return memoryinfo.totalMem;
        } else
        {
            return o();
        }
    }

    public String c()
    {
        return g;
    }

    public String d()
    {
        return h;
    }

    public Bundle e()
    {
        return e;
    }

    public b f()
    {
        return d;
    }

    public String g()
    {
        return k;
    }

    public boolean h()
    {
        return f;
    }

    public boolean i()
    {
        return a.contains(n());
    }

    public long j()
    {
        long l1 = 0L;
        if (a.contains(n()))
        {
            l1 = a.getLong(n(), l1);
        }
        return l1;
    }

    public boolean k()
    {
        return l;
    }

    public String l()
    {
        if (m != null)
        {
            String s1 = Locale.getDefault().getLanguage();
            String as[] = m;
            int i1 = as.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                if (as[j1].equalsIgnoreCase(s1))
                {
                    return s1;
                }
            }

        }
        return m();
    }

    public String m()
    {
        return Locale.ENGLISH.getLanguage();
    }
}
