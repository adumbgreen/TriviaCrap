// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.widget.Toast;
import com.millennialmedia.a.a.e;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            MMLog, MMAdImpl, MRaid, PreCacheWorker, 
//            MMSDK, DTOCachedVideo, HttpGetRequest

class HandShake
{

    static String a = "28913";
    private static String l = "https://ads.mp.mydas.mobi/appConfigServlet?apid=";
    private static boolean m;
    private static HandShake n;
    private static String y = "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?";
    boolean b;
    String c;
    long d;
    boolean e;
    String f;
    String g;
    long h;
    String i;
    NuanceCredentials j;
    DTOCachedVideo k[];
    private WeakReference o;
    private WeakReference p;
    private final Handler q;
    private long r;
    private String s;
    private final LinkedHashMap t;
    private final ArrayList u;
    private String v;
    private long w;
    private long x;
    private final Runnable z;

    private HandShake()
    {
        q = new Handler(Looper.getMainLooper());
        t = new LinkedHashMap();
        u = new ArrayList();
        w = 0x36ee80L;
        b = false;
        x = 0x5265c00L;
        d = 0xf731400L;
        z = new Runnable() {

            final HandShake a;

            public void run()
            {
                Context context = (Context)HandShake.a(a).get();
                if (context == null)
                {
                    context = (Context)HandShake.b(a).get();
                }
                if (context != null)
                {
                    HandShake.a(context);
                }
            }

            
            {
                a = HandShake.this;
                super();
            }
        };
    }

    private HandShake(Context context)
    {
        q = new Handler(Looper.getMainLooper());
        t = new LinkedHashMap();
        u = new ArrayList();
        w = 0x36ee80L;
        b = false;
        x = 0x5265c00L;
        d = 0xf731400L;
        z = new _cls2();
        o = new WeakReference(context);
        p = new WeakReference(context.getApplicationContext());
        if (m || !f(context) || System.currentTimeMillis() - r > x)
        {
            m = false;
            r = System.currentTimeMillis();
            a(false);
        }
    }

    static HandShake a(Context context)
    {
        com/millennialmedia/android/HandShake;
        JVM INSTR monitorenter ;
        if (a != null) goto _L2; else goto _L1
_L1:
        com.millennialmedia.android.MMLog.e("HandShake", "No apid set for the handshake.");
        HandShake handshake = null;
_L5:
        com/millennialmedia/android/HandShake;
        JVM INSTR monitorexit ;
        return handshake;
_L2:
        if (n != null) goto _L4; else goto _L3
_L3:
        n = new HandShake(context);
_L7:
        handshake = n;
          goto _L5
_L4:
        if (System.currentTimeMillis() - n.r <= n.x) goto _L7; else goto _L6
_L6:
        MMLog.b("HandShake", "Handshake expired, requesting new handshake from the server.");
        n = new HandShake(context);
          goto _L7
        Exception exception;
        exception;
        throw exception;
    }

    static String a()
    {
        if (!TextUtils.isEmpty(y) && URLUtil.isHttpUrl(y.replace("getAd.php5?", "")))
        {
            return y;
        } else
        {
            return "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?";
        }
    }

    static WeakReference a(HandShake handshake)
    {
        return handshake.o;
    }

    static JSONObject a(HandShake handshake, String s1)
    {
        return handshake.g(s1);
    }

    static void a(HandShake handshake, JSONObject jsonobject)
    {
        handshake.a(jsonobject);
    }

    static void a(String s1)
    {
label0:
        {
            if (!TextUtils.isEmpty(s1))
            {
                if (s1.endsWith("/"))
                {
                    break label0;
                }
                y = (new StringBuilder()).append(s1).append("/").append("getAd.php5?").toString();
            }
            return;
        }
        y = (new StringBuilder()).append(s1).append("getAd.php5?").toString();
    }

    private void a(JSONObject jsonobject)
    {
        int i1;
        int j1;
        int k1;
        Context context = (Context)o.get();
        Context context1;
        Exception exception;
        JSONArray jsonarray;
        JSONObject jsonobject1;
        String as[];
        Exception exception1;
        JSONArray jsonarray1;
        String s1;
        JSONObject jsonobject2;
        Scheme scheme;
        JSONObject jsonobject3;
        AdTypeHandShake adtypehandshake;
        JSONObject jsonobject4;
        String s2;
        String s3;
        if (context == null)
        {
            context1 = (Context)p.get();
        } else
        {
            context1 = context;
        }
        if (context1 != null) goto _L2; else goto _L1
_L1:
        com.millennialmedia.android.MMLog.e("HandShake", "No context for handshake");
_L4:
        return;
_L2:
        if (jsonobject == null) goto _L4; else goto _L3
_L3:
        try
        {
            jsonarray = jsonobject.optJSONArray("errors");
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            MMLog.a("HandShake", "Error deserializing handshake", exception);
            return;
        }
        if (jsonarray == null) goto _L6; else goto _L5
_L5:
        k1 = 0;
_L22:
        if (k1 >= jsonarray.length()) goto _L6; else goto _L7
_L7:
        jsonobject4 = jsonarray.optJSONObject(k1);
        if (jsonobject4 == null) goto _L9; else goto _L8
_L8:
        s2 = jsonobject4.optString("message", null);
        s3 = jsonobject4.optString("type", null);
        if (s2 == null || s3 == null) goto _L9; else goto _L10
_L10:
        if (!s3.equalsIgnoreCase("log")) goto _L12; else goto _L11
_L11:
        com.millennialmedia.android.MMLog.e("HandShake", s2);
          goto _L9
_L12:
        if (s3.equalsIgnoreCase("prompt"))
        {
            q.post(new Runnable(context1, s2) {

                final Context a;
                final String b;
                final HandShake c;

                public void run()
                {
                    try
                    {
                        Toast.makeText(a, (new StringBuilder()).append("Error: ").append(b).toString(), 1).show();
                        return;
                    }
                    catch (android.view.WindowManager.BadTokenException badtokenexception)
                    {
                        MMLog.a("HandShake", "Error with toast token", badtokenexception);
                    }
                }

            
            {
                c = HandShake.this;
                a = context;
                b = s1;
                super();
            }
            });
        }
          goto _L9
_L6:
        jsonobject1 = jsonobject.optJSONObject("adtypes");
        if (jsonobject1 == null) goto _L14; else goto _L13
_L13:
        as = MMAdImpl.l();
        i1 = 0;
_L23:
        if (i1 >= as.length) goto _L14; else goto _L15
_L15:
        jsonobject3 = jsonobject1.optJSONObject(as[i1]);
        if (jsonobject3 == null) goto _L17; else goto _L16
_L16:
        adtypehandshake = new AdTypeHandShake();
        adtypehandshake.a(jsonobject3);
        adtypehandshake.b(context1, as[i1]);
        t.put(as[i1], adtypehandshake);
          goto _L17
_L14:
        this;
        JVM INSTR monitorenter ;
        jsonarray1 = jsonobject.optJSONArray("schemes");
        if (jsonarray1 == null) goto _L19; else goto _L18
_L18:
        if (u != null && u.size() > 0)
        {
            u.removeAll(u);
        }
          goto _L20
_L24:
        if (j1 >= jsonarray1.length()) goto _L19; else goto _L21
_L21:
        jsonobject2 = jsonarray1.optJSONObject(j1);
        if (jsonobject2 == null)
        {
            break MISSING_BLOCK_LABEL_645;
        }
        scheme = new Scheme();
        scheme.a(jsonobject2);
        u.add(scheme);
        break MISSING_BLOCK_LABEL_645;
_L19:
        this;
        JVM INSTR monitorexit ;
        h = jsonobject.optLong("adrefresh", 0L);
        w = 1000L * jsonobject.optLong("deferredviewtimeout", 3600L);
        b = jsonobject.optBoolean("kill");
        a(jsonobject.optString("baseURL"));
        x = 1000L * jsonobject.optLong("handshakecallback", 0x15180L);
        d = 1000L * jsonobject.optLong("creativeCacheTimeout", 0x3f480L);
        e = jsonobject.optBoolean("hardwareAccelerationEnabled");
        f = jsonobject.optString("startSessionURL");
        g = jsonobject.optString("endSessionURL");
        s1 = jsonobject.optString("nuanceCredentials");
        j = (NuanceCredentials)(new e()).a(s1, com/millennialmedia/android/HandShake$NuanceCredentials);
        i = jsonobject.optString("mmjs");
        a(jsonobject, context1);
        if (!TextUtils.isEmpty(i) && !MRaid.d(context1, i))
        {
            MRaid.b((Context)p.get(), i);
            return;
        }
        break MISSING_BLOCK_LABEL_587;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
        MMLog.d("HandShake", (new StringBuilder()).append("Not downloading MMJS - (").append(i).append(")").toString());
        return;
_L9:
        k1++;
          goto _L22
_L17:
        i1++;
          goto _L23
_L20:
        j1 = 0;
          goto _L24
        j1++;
          goto _L24
    }

    private void a(JSONObject jsonobject, Context context)
    {
        JSONArray jsonarray = jsonobject.optJSONArray("cachedVideos");
        if (jsonarray != null)
        {
            k = (DTOCachedVideo[])(new e()).a(jsonarray.toString(), [Lcom/millennialmedia/android/DTOCachedVideo;);
            MMLog.b("HandShake", k.toString());
        }
        s = jsonobject.optString("noVideosToCacheURL");
        if (k != null)
        {
            PreCacheWorker.a(k, context, s);
        }
    }

    private void a(boolean flag)
    {
        Context context = (Context)o.get();
        if (context != null)
        {
            String s1 = context.getSharedPreferences("MillennialMediaSettings", 0).getString("handShakeUrl", null);
            if (s1 != null)
            {
                b(s1);
            }
        }
        Utils.ThreadUtils.a(new Runnable(flag) {

            final boolean a;
            final HandShake b;

            public void run()
            {
                Context context1 = (Context)HandShake.a(b).get();
                Context context2;
                StringBuilder stringbuilder;
                TreeMap treemap;
                IOException ioexception;
                boolean flag1;
                Exception exception;
                Exception exception1;
                boolean flag2;
                Iterator iterator;
                String s2;
                IOException ioexception1;
                HttpResponse httpresponse;
                IOException ioexception2;
                IOException ioexception3;
                HttpResponse httpresponse1;
                String s3;
                HttpResponse httpresponse2;
                int i1;
                String s4;
                HttpResponse httpresponse3;
                int j1;
                HttpResponse httpresponse4;
                java.util.Map.Entry entry;
                Object aobj[];
                if (context1 == null)
                {
                    context2 = (Context)HandShake.b(b).get();
                } else
                {
                    context2 = context1;
                }
                if (context2 != null) goto _L2; else goto _L1
_L1:
                return;
_L2:
                stringbuilder = new StringBuilder();
                treemap = new TreeMap();
                treemap.put("ua", (new StringBuilder()).append("Android:").append(Build.MODEL).toString());
                flag2 = HandShake.a(b, context2);
                flag1 = flag2;
                if (!flag1)
                {
                    break MISSING_BLOCK_LABEL_116;
                }
                treemap.put("firstlaunch", "1");
                if (a)
                {
                    treemap.put("init", "1");
                }
                MMSDK.a(context2, treemap);
                for (iterator = treemap.entrySet().iterator(); iterator.hasNext(); stringbuilder.append(String.format("&%s=%s", aobj)))
                {
                    entry = (java.util.Map.Entry)iterator.next();
                    aobj = new Object[2];
                    aobj[0] = entry.getKey();
                    aobj[1] = URLEncoder.encode((String)entry.getValue(), "UTF-8");
                }

                  goto _L3
                ioexception;
_L16:
                MMLog.a("HandShake", "Could not get a handshake. ", ioexception);
                return;
                exception;
_L14:
                if (flag1)
                {
                    HandShake.c(b, context2);
                }
                throw exception;
_L3:
                s2 = (new StringBuilder()).append(HandShake.d()).append(HandShake.a).append(stringbuilder.toString()).toString();
                MMLog.a("HandShake", String.format("Performing handshake: %s", new Object[] {
                    s2
                }));
                httpresponse4 = (new HttpGetRequest(3000)).a(s2);
                httpresponse = httpresponse4;
_L10:
                if (httpresponse == null)
                {
                    break MISSING_BLOCK_LABEL_356;
                }
                j1 = httpresponse.getStatusLine().getStatusCode();
                if (j1 == 200)
                {
                    break MISSING_BLOCK_LABEL_438;
                }
                HandShake.f(HandShake.d().replaceFirst("https://", "http://"));
                s4 = (new StringBuilder()).append(HandShake.d()).append(HandShake.a).append(stringbuilder.toString()).toString();
                MMLog.a("HandShake", String.format("Performing handshake (HTTP Fallback): %s", new Object[] {
                    s4
                }));
                httpresponse3 = (new HttpGetRequest()).a(s4);
                httpresponse = httpresponse3;
_L11:
                if (httpresponse == null) goto _L5; else goto _L4
_L4:
                i1 = httpresponse.getStatusLine().getStatusCode();
                if (i1 == 200) goto _L6; else goto _L5
_L5:
                s3 = (new StringBuilder()).append("http://ads.mp.mydas.mobi/appConfigServlet?apid=").append(HandShake.a).append(stringbuilder.toString()).toString();
                MMLog.a("HandShake", (new StringBuilder()).append("Performing handshake (HTTP Fallback Original): ").append(s3).toString());
                httpresponse2 = (new HttpGetRequest()).a(s3);
                httpresponse1 = httpresponse2;
_L12:
                if (httpresponse1 == null) goto _L8; else goto _L7
_L7:
                if (httpresponse1.getStatusLine().getStatusCode() != 200) goto _L8; else goto _L9
_L9:
                HandShake.a(b, HandShake.a(b, HttpGetRequest.a(httpresponse1.getEntity().getContent())));
                HandShake.b(b, context2);
                com.millennialmedia.android.HandShake.e(b).postDelayed(HandShake.c(b), HandShake.d(b));
                MMLog.a("HandShake", "Obtained a new handshake");
_L13:
                if (flag1)
                {
                    HandShake.c(b, context2);
                    return;
                }
                  goto _L1
                ioexception1;
                MMLog.a("HandShake", "Could not get a handshake. ", ioexception1);
                httpresponse = null;
                  goto _L10
                exception1;
_L15:
                MMLog.a("HandShake", "Could not get a handshake. ", exception1);
                return;
                ioexception2;
                MMLog.a("HandShake", "Could not get a handshake. ", ioexception2);
                  goto _L11
                ioexception3;
                MMLog.a("HandShake", "Could not get a handshake. ", ioexception3);
_L6:
                httpresponse1 = httpresponse;
                  goto _L12
_L8:
                flag1 = false;
                  goto _L13
                exception;
                flag1 = false;
                  goto _L14
                exception1;
                flag1 = false;
                  goto _L15
                ioexception;
                flag1 = false;
                  goto _L16
            }

            
            {
                b = HandShake.this;
                a = flag;
                super();
            }
        });
    }

    static boolean a(HandShake handshake, Context context)
    {
        return handshake.d(context);
    }

    static WeakReference b(HandShake handshake)
    {
        return handshake.p;
    }

    static void b(HandShake handshake, Context context)
    {
        handshake.g(context);
    }

    static boolean b(String s1)
    {
        com/millennialmedia/android/HandShake;
        JVM INSTR monitorenter ;
        boolean flag = TextUtils.isEmpty(s1);
        if (!flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        com/millennialmedia/android/HandShake;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        if (s1.startsWith("http://"))
        {
            s1 = s1.replaceFirst("http://", "https://");
        }
        l = (new StringBuilder()).append(s1).append("?apid=").toString();
        flag1 = true;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static Runnable c(HandShake handshake)
    {
        return handshake.z;
    }

    static void c(HandShake handshake, Context context)
    {
        handshake.e(context);
    }

    static long d(HandShake handshake)
    {
        return handshake.x;
    }

    static String d()
    {
        return l;
    }

    private boolean d(Context context)
    {
        if (context == null)
        {
            return false;
        } else
        {
            return context.getSharedPreferences("MillennialMediaSettings", 0).getBoolean("firstlaunchHandshake", true);
        }
    }

    static Handler e(HandShake handshake)
    {
        return handshake.q;
    }

    private void e(Context context)
    {
        if (context != null)
        {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            editor.putBoolean("firstlaunchHandshake", false);
            editor.commit();
        }
    }

    static long f(HandShake handshake)
    {
        return handshake.w;
    }

    static String f(String s1)
    {
        l = s1;
        return s1;
    }

    private boolean f(Context context)
    {
        SharedPreferences sharedpreferences;
        boolean flag;
        sharedpreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        flag = false;
        if (sharedpreferences != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        boolean flag1;
        String as[];
        boolean flag2;
        Exception exception;
        String s1;
        String s2;
        String as1[];
        int j1;
        String as2[];
        Scheme scheme;
        if (sharedpreferences.contains("handshake_deferredviewtimeout"))
        {
            w = sharedpreferences.getLong("handshake_deferredviewtimeout", w);
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (sharedpreferences.contains("handshake_baseUrl"))
        {
            y = sharedpreferences.getString("handshake_baseUrl", y);
            flag1 = true;
        }
        if (sharedpreferences.contains("handshake_callback"))
        {
            x = sharedpreferences.getLong("handshake_callback", x);
            flag1 = true;
        }
        if (sharedpreferences.contains("handshake_hardwareAccelerationEnabled"))
        {
            e = sharedpreferences.getBoolean("handshake_hardwareAccelerationEnabled", false);
            flag1 = true;
        }
        if (sharedpreferences.contains("handshake_startSessionURL"))
        {
            f = sharedpreferences.getString("handshake_startSessionURL", "");
            flag1 = true;
        }
        if (sharedpreferences.contains("handshake_endSessionURL"))
        {
            g = sharedpreferences.getString("handshake_endSessionURL", "");
            flag1 = true;
        }
        if (sharedpreferences.contains("handshake_nuanceCredentials"))
        {
            String s3 = sharedpreferences.getString("handshake_nuanceCredentials", "");
            j = (NuanceCredentials)(new e()).a(s3, com/millennialmedia/android/HandShake$NuanceCredentials);
            flag1 = true;
        }
        if (sharedpreferences.contains("handshake_mmdid"))
        {
            a(context, sharedpreferences.getString("handshake_mmdid", c), false);
            flag1 = true;
        }
        if (sharedpreferences.contains("handshake_creativecachetimeout"))
        {
            d = sharedpreferences.getLong("handshake_creativecachetimeout", d);
            flag1 = true;
        }
        if (sharedpreferences.contains("handshake_mmjs"))
        {
            i = sharedpreferences.getString("handshake_mmjs", i);
            flag1 = true;
        }
        as = MMAdImpl.l();
        flag2 = flag1;
        for (int i1 = 0; i1 < as.length; i1++)
        {
            AdTypeHandShake adtypehandshake = new AdTypeHandShake();
            if (adtypehandshake.a(sharedpreferences, as[i1]))
            {
                t.put(as[i1], adtypehandshake);
                flag2 = true;
            }
        }

        this;
        JVM INSTR monitorenter ;
        if (!sharedpreferences.contains("handshake_schemes")) goto _L4; else goto _L3
_L3:
        s2 = sharedpreferences.getString("handshake_schemes", "");
        if (s2.length() <= 0) goto _L4; else goto _L5
_L5:
        as1 = s2.split("\n");
        j1 = as1.length;
_L12:
        if (flag >= j1) goto _L7; else goto _L6
_L6:
        as2 = as1[flag].split("\t");
        if (as2.length >= 2)
        {
            scheme = new Scheme(as2[0], Integer.parseInt(as2[1]));
            u.add(scheme);
        }
        continue; /* Loop/switch isn't completed */
_L11:
        this;
        JVM INSTR monitorexit ;
        if (sharedpreferences.contains("handshake_cachedvideos5.0"))
        {
            s1 = sharedpreferences.getString("handshake_cachedvideos5.0", "");
            if (s1.length() > 0)
            {
                k = (DTOCachedVideo[])(new e()).a(s1, [Lcom/millennialmedia/android/DTOCachedVideo;);
            }
        }
        if (sharedpreferences.contains("handshake_lasthandshake"))
        {
            r = sharedpreferences.getLong("handshake_lasthandshake", r);
            flag = true;
        }
        if (!flag) goto _L1; else goto _L8
_L8:
        MMLog.b("HandShake", "Handshake successfully loaded from shared preferences.");
        if (System.currentTimeMillis() - r < x)
        {
            q.postDelayed(z, x - (System.currentTimeMillis() - r));
        }
        s = sharedpreferences.getString("handshake_novideostocacheurl", "");
        if (k == null) goto _L1; else goto _L9
_L9:
        PreCacheWorker.a(k, context, s);
        return flag;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        flag = flag2;
        if (true) goto _L11; else goto _L10
_L10:
        flag++;
          goto _L12
_L7:
        flag = true;
          goto _L11
    }

    private JSONObject g(String s1)
    {
        MMLog.b("HandShake", String.format("JSON String: %s", new Object[] {
            s1
        }));
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        JSONObject jsonobject1;
        JSONObject jsonobject = new JSONObject(s1);
        MMLog.a("HandShake", jsonobject.toString());
        if (!jsonobject.has("mmishake"))
        {
            break MISSING_BLOCK_LABEL_73;
        }
        jsonobject1 = jsonobject.getJSONObject("mmishake");
        return jsonobject1;
        JSONException jsonexception;
        jsonexception;
        MMLog.a("HandShake", "Error parsing json", jsonexception);
        return null;
    }

    private void g(Context context)
    {
        android.content.SharedPreferences.Editor editor;
        editor = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
        editor.putLong("handshake_deferredviewtimeout", w);
        editor.putBoolean("handshake_kill", b);
        editor.putString("handshake_baseUrl", y);
        editor.putLong("handshake_callback", x);
        editor.putBoolean("handshake_hardwareAccelerationEnabled", e);
        editor.putString("handshake_startSessionURL", f);
        if (j != null)
        {
            editor.putString("handshake_nuanceCredentials", (new e()).a(j));
        }
        editor.putString("handshake_endSessionURL", g);
        editor.putLong("handshake_creativecaetimeout", d);
        editor.putString("handshake_mmjs", i);
        String s1;
        for (Iterator iterator = t.keySet().iterator(); iterator.hasNext(); ((AdTypeHandShake)t.get(s1)).a(editor, (String)s1))
        {
            s1 = (String)iterator.next();
        }

        this;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder = new StringBuilder();
        int i1 = 0;
_L2:
        Scheme scheme;
        if (i1 >= u.size())
        {
            break; /* Loop/switch isn't completed */
        }
        scheme = (Scheme)u.get(i1);
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        stringbuilder.append("\n");
        stringbuilder.append((new StringBuilder()).append(scheme.a).append("\t").append(scheme.b).toString());
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        editor.putString("handshake_schemes", stringbuilder.toString());
        this;
        JVM INSTR monitorexit ;
        if (k != null)
        {
            editor.putString("handshake_cachedvideos5.0", (new e()).a(k));
        }
        editor.putString("handshake_novideostocacheurl", s);
        editor.putLong("handshake_lasthandshake", r);
        editor.commit();
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void a(Context context, String s1, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        if (s1.length() != 0 && !s1.equals("NULL"))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        c = null;
_L1:
        MMSDK.a(c);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
        editor.putString("handshake_mmdid", c);
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return;
        c = s1;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    boolean a(Context context, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        AdTypeHandShake adtypehandshake = (AdTypeHandShake)t.get(s1);
        if (adtypehandshake == null) goto _L2; else goto _L1
_L1:
        boolean flag = adtypehandshake.a(context);
        boolean flag1 = flag;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        flag1 = true;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    boolean a(String s1, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        AdTypeHandShake adtypehandshake = (AdTypeHandShake)t.get(s1);
        if (adtypehandshake == null) goto _L2; else goto _L1
_L1:
        boolean flag = adtypehandshake.a(l1);
        boolean flag1 = flag;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        flag1 = true;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    String b(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder;
        Iterator iterator;
        if (v != null || u.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        stringbuilder = new StringBuilder();
        iterator = u.iterator();
_L1:
        Scheme scheme;
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_131;
                }
                scheme = (Scheme)iterator.next();
            } while (!scheme.a(context));
            if (stringbuilder.length() <= 0)
            {
                break MISSING_BLOCK_LABEL_114;
            }
            stringbuilder.append((new StringBuilder()).append(",").append(scheme.b).toString());
        } while (true);
        Exception exception;
        exception;
        throw exception;
        stringbuilder.append(Integer.toString(scheme.b));
          goto _L1
        if (stringbuilder.length() > 0)
        {
            v = stringbuilder.toString();
        }
        String s1 = v;
        this;
        JVM INSTR monitorexit ;
        return s1;
    }

    void b()
    {
        a(true);
    }

    void b(Context context, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        AdTypeHandShake adtypehandshake = (AdTypeHandShake)t.get(s1);
        if (adtypehandshake == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        adtypehandshake.a(context, s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    JSONArray c(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        if (u.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        iterator = u.iterator();
_L1:
        Scheme scheme;
        boolean flag;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_131;
            }
            scheme = (Scheme)iterator.next();
            flag = scheme.a(context);
        } while (!flag);
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("scheme", scheme.a);
        jsonobject.put("schemeid", scheme.b);
        jsonarray.put(jsonobject);
          goto _L1
        JSONException jsonexception;
        jsonexception;
        MMLog.a("HandShake", "Json error getting scheme", jsonexception);
          goto _L1
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
        return jsonarray;
    }

    void c()
    {
        if (!TextUtils.isEmpty(f))
        {
            Utils.HttpUtils.a(f);
        }
    }

    void c(Context context, String s1)
    {
        a(context, s1, true);
    }

    boolean c(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        AdTypeHandShake adtypehandshake = (AdTypeHandShake)t.get(s1);
        if (adtypehandshake == null) goto _L2; else goto _L1
_L1:
        boolean flag = adtypehandshake.c;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    void d(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        AdTypeHandShake adtypehandshake = (AdTypeHandShake)t.get(s1);
        if (adtypehandshake == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        adtypehandshake.c = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void e(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        AdTypeHandShake adtypehandshake = (AdTypeHandShake)t.get(s1);
        if (adtypehandshake == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        adtypehandshake.c = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }


    private class AdTypeHandShake
    {

        long a;
        long b;
        boolean c;
        final HandShake d;

        void a(Context context, String s1)
        {
            a = System.currentTimeMillis();
            c(context, s1);
        }

        void a(android.content.SharedPreferences.Editor editor, String s1)
        {
            editor.putLong((new StringBuilder()).append("handshake_lastvideo_").append(s1).toString(), a);
            editor.putLong((new StringBuilder()).append("handshake_videointerval_").append(s1).toString(), b);
        }

        void a(JSONObject jsonobject)
        {
            if (jsonobject == null)
            {
                return;
            } else
            {
                b = 1000L * jsonobject.optLong("videointerval");
                return;
            }
        }

        boolean a(long l1)
        {
            return System.currentTimeMillis() - l1 < HandShake.f(d);
        }

        boolean a(Context context)
        {
            long l1 = System.currentTimeMillis();
            MMLog.b("HandShake", (new StringBuilder()).append("canRequestVideo() Current Time:").append(l1).append(" Last Video: ").append(a / 1000L).append("  Diff: ").append((l1 - a) / 1000L).append("  Video interval: ").append(b / 1000L).toString());
            return System.currentTimeMillis() - a > b;
        }

        boolean a(SharedPreferences sharedpreferences, String s1)
        {
            boolean flag = sharedpreferences.contains((new StringBuilder()).append("handshake_lastvideo_").append(s1).toString());
            boolean flag1 = false;
            if (flag)
            {
                a = sharedpreferences.getLong((new StringBuilder()).append("handshake_lastvideo_").append(s1).toString(), a);
                flag1 = true;
            }
            if (sharedpreferences.contains((new StringBuilder()).append("handshake_videointerval_").append(s1).toString()))
            {
                b = sharedpreferences.getLong((new StringBuilder()).append("handshake_videointerval_").append(s1).toString(), b);
                return true;
            } else
            {
                return flag1;
            }
        }

        void b(Context context, String s1)
        {
            SharedPreferences sharedpreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
            if (sharedpreferences != null && sharedpreferences.contains((new StringBuilder()).append("handshake_lastvideo_").append(s1).toString()))
            {
                a = sharedpreferences.getLong((new StringBuilder()).append("handshake_lastvideo_").append(s1).toString(), a);
            }
        }

        void c(Context context, String s1)
        {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            a(editor, s1);
            editor.commit();
        }

        AdTypeHandShake()
        {
            d = HandShake.this;
            super();
            a = 0L;
            b = 0L;
        }
    }


    private class Scheme
    {

        String a;
        int b;
        final HandShake c;

        void a(JSONObject jsonobject)
        {
            if (jsonobject == null)
            {
                return;
            } else
            {
                a = jsonobject.optString("scheme", null);
                b = jsonobject.optInt("schemeid");
                return;
            }
        }

        boolean a(Context context)
        {
            Intent intent;
            if (a.contains("://"))
            {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(a));
            } else
            {
                intent = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder()).append(a).append("://").toString()));
            }
            return context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0;
        }

        Scheme()
        {
            c = HandShake.this;
            super();
        }

        Scheme(String s1, int i1)
        {
            c = HandShake.this;
            super();
            a = s1;
            b = i1;
        }
    }


    private class NuanceCredentials
    {

        String a;
        String b;
        String c;
        int d;
        String e;

        public String toString()
        {
            return (new StringBuilder()).append("Credentials: appid=").append(a).append(" server=").append(c).append(" port=").append(d).append(" appKey=").append(b).append("sessionID=").append(e).toString();
        }

        private NuanceCredentials()
        {
        }
    }

}
