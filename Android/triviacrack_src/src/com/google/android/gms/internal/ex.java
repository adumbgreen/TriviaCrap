// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            eu, fx, at, fd, 
//            dv, fa, dt, aj, 
//            ey, ag, fw, fc, 
//            fe, ew, fb, fq, 
//            gc, am, fz, gb, 
//            ak

public final class ex extends eu
{

    private static final Object a = new Object();
    private static ex b;
    private final Context c;
    private final fe d;
    private final at e;
    private final ag f;

    ex(Context context, ag ag1, at at1, fe fe1)
    {
        c = context;
        d = fe1;
        e = at1;
        f = ag1;
    }

    private static dv a(Context context, ag ag1, at at1, fe fe1, dt dt1)
    {
        fx.a("Starting ad request from service.");
        at1.a();
        fd fd1 = new fd(context);
        if (fd1.l == -1)
        {
            fx.a("Device is offline.");
            return new dv(2);
        }
        fa fa1 = new fa(dt1.f.packageName);
        if (dt1.c.c != null)
        {
            String s3 = dt1.c.c.getString("_ad");
            if (s3 != null)
            {
                return ey.a(context, dt1, s3);
            }
        }
        android.location.Location location = at1.a(250L);
        String s = ag1.a();
        String s1 = ey.a(dt1, fd1, location, ag1.b());
        if (s1 == null)
        {
            return new dv(0);
        }
        gc gc = a(s1);
        fw.a.post(new Runnable(context, dt1, fa1, gc, s) {

            final Context a;
            final dt b;
            final fa c;
            final gc d;
            final String e;

            public void run()
            {
                fz fz1 = fz.a(a, new am(), false, false, null, b.k);
                fz1.setWillNotDraw(true);
                c.a(fz1);
                gb gb1 = fz1.f();
                gb1.a("/invalidRequest", c.a);
                gb1.a("/loadAdURL", c.b);
                gb1.a("/log", ak.g);
                gb1.a(d);
                fx.a("Loading the JS library.");
                fz1.loadUrl(e);
            }

            
            {
                a = context;
                b = dt1;
                c = fa1;
                d = gc;
                e = s;
                super();
            }
        });
        fc fc1 = fa1.b();
        if (fc1 == null || TextUtils.isEmpty(fc1.c()))
        {
            return new dv(fa1.a());
        }
        boolean flag = fc1.e();
        String s2 = null;
        if (flag)
        {
            s2 = fe1.a(dt1.g.packageName);
        }
        return a(context, dt1.k.b, fc1.c(), s2, fc1);
    }

    public static dv a(Context context, String s, String s1, String s2, fc fc1)
    {
        HttpURLConnection httpurlconnection;
        fb fb1;
        URL url;
        long l;
        URL url1;
        int i;
        int j;
        Map map;
        dv dv1;
        String s3;
        dv dv2;
        dv dv3;
        String s4;
        String s5;
        dv dv4;
        byte abyte0[];
        BufferedOutputStream bufferedoutputstream;
        try
        {
            fb1 = new fb();
            url = new URL(s1);
            l = SystemClock.elapsedRealtime();
        }
        catch (IOException ioexception)
        {
            fx.e((new StringBuilder()).append("Error while connecting to ad server: ").append(ioexception.getMessage()).toString());
            return new dv(2);
        }
        url1 = url;
        i = 0;
        httpurlconnection = (HttpURLConnection)url1.openConnection();
        fq.a(context, s, false, httpurlconnection);
        if (!TextUtils.isEmpty(s2))
        {
            httpurlconnection.addRequestProperty("x-afma-drt-cookie", s2);
        }
        if (fc1 == null)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        if (!TextUtils.isEmpty(fc1.b()))
        {
            httpurlconnection.setDoOutput(true);
            abyte0 = fc1.b().getBytes();
            httpurlconnection.setFixedLengthStreamingMode(abyte0.length);
            bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
            bufferedoutputstream.write(abyte0);
            bufferedoutputstream.close();
        }
        j = httpurlconnection.getResponseCode();
        map = httpurlconnection.getHeaderFields();
        if (j < 200 || j >= 300)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        s4 = url1.toString();
        s5 = fq.a(new InputStreamReader(httpurlconnection.getInputStream()));
        a(s4, map, s5, j);
        fb1.a(s4, map, s5);
        dv4 = fb1.a(l);
        httpurlconnection.disconnect();
        return dv4;
        a(url1.toString(), map, ((String) (null)), j);
        if (j < 300 || j >= 400)
        {
            break MISSING_BLOCK_LABEL_338;
        }
        s3 = httpurlconnection.getHeaderField("Location");
        if (!TextUtils.isEmpty(s3))
        {
            break MISSING_BLOCK_LABEL_294;
        }
        fx.e("No location header to follow redirect.");
        dv3 = new dv(0);
        httpurlconnection.disconnect();
        return dv3;
        url1 = new URL(s3);
        if (++i <= 5)
        {
            break MISSING_BLOCK_LABEL_380;
        }
        fx.e("Too many redirects.");
        dv2 = new dv(0);
        httpurlconnection.disconnect();
        return dv2;
        fx.e((new StringBuilder()).append("Received error HTTP response code: ").append(j).toString());
        dv1 = new dv(0);
        httpurlconnection.disconnect();
        return dv1;
        fb1.a(map);
        httpurlconnection.disconnect();
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }

    public static ex a(Context context, ag ag1, at at1, fe fe1)
    {
        ex ex1;
        synchronized (a)
        {
            if (b == null)
            {
                b = new ex(context.getApplicationContext(), ag1, at1, fe1);
            }
            ex1 = b;
        }
        return ex1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static gc a(String s)
    {
        return new gc(s) {

            final String a;

            public void a(fz fz1)
            {
                Object aobj[] = new Object[2];
                aobj[0] = "AFMA_buildAdURL";
                aobj[1] = a;
                String s1 = String.format("javascript:%s(%s);", aobj);
                fx.d((new StringBuilder()).append("About to execute: ").append(s1).toString());
                fz1.loadUrl(s1);
            }

            
            {
                a = s;
                super();
            }
        };
    }

    private static void a(String s, Map map, String s1, int i)
    {
        if (fx.a(2))
        {
            fx.d((new StringBuilder()).append("Http Response: {\n  URL:\n    ").append(s).append("\n  Headers:").toString());
            if (map != null)
            {
                for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
                {
                    String s2 = (String)iterator.next();
                    fx.d((new StringBuilder()).append("    ").append(s2).append(":").toString());
                    Iterator iterator1 = ((List)map.get(s2)).iterator();
                    while (iterator1.hasNext()) 
                    {
                        String s3 = (String)iterator1.next();
                        fx.d((new StringBuilder()).append("      ").append(s3).toString());
                    }
                }

            }
            fx.d("  Body:");
            if (s1 != null)
            {
                for (int j = 0; j < Math.min(s1.length(), 0x186a0); j += 1000)
                {
                    fx.d(s1.substring(j, Math.min(s1.length(), j + 1000)));
                }

            } else
            {
                fx.d("    null");
            }
            fx.d((new StringBuilder()).append("  Response Code:\n    ").append(i).append("\n}").toString());
        }
    }

    public dv a(dt dt1)
    {
        return a(c, f, e, d, dt1);
    }

}
