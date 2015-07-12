// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            fo, el, gc, dv, 
//            eh, dt, am, av, 
//            bc, fw, ay, fx, 
//            ik, gw, ek, fg, 
//            fz, ei, fq, bg, 
//            ef, eq, gb

public class eg extends fo
    implements el, gc
{

    private final bg a;
    private final ef b;
    private final fz c;
    private final Object d = new Object();
    private final Context e;
    private final Object f = new Object();
    private final eq g;
    private final ik h;
    private fo i;
    private dv j;
    private boolean k;
    private av l;
    private ay m;
    private bc n;

    public eg(Context context, eq eq, ik ik1, fz fz1, bg bg, ef ef)
    {
        k = false;
        a = bg;
        b = ef;
        c = fz1;
        e = context;
        g = eq;
        h = ik1;
    }

    private am a(dt dt1)
    {
        if (j.m == null)
        {
            throw new eh("The ad response must specify one of the supported ad sizes.", 0);
        }
        String as[] = j.m.split("x");
        if (as.length != 2)
        {
            throw new eh((new StringBuilder()).append("Could not parse the ad size from the ad response: ").append(j.m).toString(), 0);
        }
        int i1;
        int j1;
        am aam[];
        int k1;
        try
        {
            i1 = Integer.parseInt(as[0]);
            j1 = Integer.parseInt(as[1]);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new eh((new StringBuilder()).append("Could not parse the ad size from the ad response: ").append(j.m).toString(), 0);
        }
        aam = dt1.d.h;
        k1 = aam.length;
        am am1;
        int i2;
        int j2;
        for (int l1 = 0; l1 < k1; l1++)
        {
            am1 = aam[l1];
            float f1 = e.getResources().getDisplayMetrics().density;
            if (am1.f == -1)
            {
                i2 = (int)((float)am1.g / f1);
            } else
            {
                i2 = am1.f;
            }
            if (am1.c == -2)
            {
                j2 = (int)((float)am1.d / f1);
            } else
            {
                j2 = am1.c;
            }
            if (i1 == i2 && j1 == j2)
            {
                return new am(am1, dt1.d.h);
            }
        }

        throw new eh((new StringBuilder()).append("The ad size from the ad response was not one of the requested sizes: ").append(j.m).toString(), 0);
    }

    static Object a(eg eg1)
    {
        return eg1.f;
    }

    private void a(dt dt1, long l1)
    {
        synchronized (d)
        {
            l = new av(e, dt1, a, m);
        }
        n = l.a(l1, 60000L);
        switch (n.a)
        {
        default:
            throw new eh((new StringBuilder()).append("Unexpected mediation result: ").append(n.a).toString(), 0);

        case 1: // '\001'
            throw new eh("No fill from any mediation ad networks.", 3);

        case 0: // '\0'
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static ef b(eg eg1)
    {
        return eg1.b;
    }

    private void b(long l1)
    {
        fw.a.post(new Runnable() {

            final eg a;

            public void run()
            {
label0:
                {
                    synchronized (eg.a(a))
                    {
                        if (eg.c(a).e == -2)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                eg.d(a).f().a(a);
                if (eg.c(a).e != -3)
                {
                    break MISSING_BLOCK_LABEL_119;
                }
                fx.d((new StringBuilder()).append("Loading URL in WebView: ").append(eg.c(a).b).toString());
                eg.d(a).loadUrl(eg.c(a).b);
_L1:
                obj;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
                fx.d("Loading HTML in WebView.");
                eg.d(a).loadDataWithBaseURL(fq.a(eg.c(a).b), eg.c(a).c, "text/html", "UTF-8", null);
                  goto _L1
            }

            
            {
                a = eg.this;
                super();
            }
        });
        d(l1);
    }

    static dv c(eg eg1)
    {
        return eg1.j;
    }

    private void c()
    {
        if (j.e != -3)
        {
            if (TextUtils.isEmpty(j.c))
            {
                throw new eh("No fill from ad server.", 3);
            }
            if (j.h)
            {
                try
                {
                    m = new ay(j.c);
                    return;
                }
                catch (JSONException jsonexception)
                {
                    throw new eh((new StringBuilder()).append("Could not parse mediation config: ").append(j.c).toString(), 0);
                }
            }
        }
    }

    private void c(long l1)
    {
        do
        {
            if (!e(l1))
            {
                throw new eh("Timed out waiting for ad response.", 2);
            }
        } while (j == null);
        synchronized (d)
        {
            i = null;
        }
        if (j.e != -2 && j.e != -3)
        {
            throw new eh((new StringBuilder()).append("There was a problem getting an ad response. ErrorCode: ").append(j.e).toString(), j.e);
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static fz d(eg eg1)
    {
        return eg1.c;
    }

    private void d(long l1)
    {
        do
        {
            if (!e(l1))
            {
                throw new eh("Timed out waiting for WebView to finish loading.", 2);
            }
        } while (!k);
    }

    private boolean e(long l1)
    {
        long l2 = 60000L - (SystemClock.elapsedRealtime() - l1);
        if (l2 <= 0L)
        {
            return false;
        }
        try
        {
            f.wait(l2);
        }
        catch (InterruptedException interruptedexception)
        {
            throw new eh("Ad request cancelled.", -1);
        }
        return true;
    }

    public void a()
    {
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
        dt dt1;
        fx.a("AdLoaderBackgroundTask started.");
        String s = h.a().a(e);
        dt1 = new dt(g, s);
        am am1;
        int i1;
        long l1;
        am1 = null;
        i1 = -2;
        l1 = -1L;
        long l4;
        fo fo1;
        l4 = SystemClock.elapsedRealtime();
        fo1 = ek.a(e, dt1, this);
        Object obj1 = d;
        obj1;
        JVM INSTR monitorenter ;
        i = fo1;
        if (i == null)
        {
            throw new eh("Could not start the ad request service.", 0);
        }
          goto _L1
        Exception exception2;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        eh eh1;
        eh1;
        i1 = eh1.a();
        if (i1 != 3 && i1 != -1) goto _L3; else goto _L2
_L2:
        fx.c(eh1.getMessage());
_L16:
        if (j != null) goto _L5; else goto _L4
_L4:
        j = new dv(i1);
_L17:
        fw.a.post(new Runnable() {

            final eg a;

            public void run()
            {
                a.b();
            }

            
            {
                a = eg.this;
                super();
            }
        });
        long l2;
        am am2;
        l2 = l1;
        am2 = am1;
_L23:
        boolean flag = TextUtils.isEmpty(j.r);
        if (flag) goto _L7; else goto _L6
_L6:
        JSONObject jsonobject;
        String s3 = j.r;
        jsonobject = new JSONObject(s3);
_L18:
        aj aj;
        fz fz1;
        java.util.List list;
        java.util.List list1;
        java.util.List list2;
        int j1;
        long l3;
        String s1;
        boolean flag1;
        aj = dt1.c;
        fz1 = c;
        list = j.d;
        list1 = j.f;
        list2 = j.j;
        j1 = j.l;
        l3 = j.k;
        s1 = dt1.i;
        flag1 = j.h;
        if (n == null) goto _L9; else goto _L8
_L8:
        aw aw = n.b;
_L19:
        if (n == null) goto _L11; else goto _L10
_L10:
        bj bj = n.c;
_L20:
        if (n == null) goto _L13; else goto _L12
_L12:
        String s2 = n.d;
_L21:
        ay ay1 = m;
        if (n == null) goto _L15; else goto _L14
_L14:
        ba ba = n.e;
_L22:
        fg fg1 = new fg(aj, fz1, list, i1, list1, list2, j1, l3, s1, flag1, aw, bj, s2, ay1, ba, j.i, am2, j.g, l2, j.n, j.o, jsonobject);
        fw.a.post(new Runnable(fg1) {

            final fg a;
            final eg b;

            public void run()
            {
                synchronized (eg.a(b))
                {
                    eg.b(b).a(a);
                }
                return;
                exception3;
                obj2;
                JVM INSTR monitorexit ;
                throw exception3;
            }

            
            {
                b = eg.this;
                a = fg1;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        return;
_L1:
        obj1;
        JVM INSTR monitorexit ;
        am aam[];
        c(l4);
        l1 = SystemClock.elapsedRealtime();
        c();
        aam = dt1.d.h;
        am1 = null;
        if (aam == null)
        {
            break MISSING_BLOCK_LABEL_504;
        }
        am1 = a(dt1);
        if (j.h)
        {
            a(dt1, l4);
            break MISSING_BLOCK_LABEL_632;
        }
        if (j.p)
        {
            a(l4);
            break MISSING_BLOCK_LABEL_632;
        }
        break MISSING_BLOCK_LABEL_549;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        b(l4);
        break MISSING_BLOCK_LABEL_632;
_L3:
        fx.e(eh1.getMessage());
          goto _L16
_L5:
        j = new dv(i1, j.k);
          goto _L17
        Exception exception1;
        exception1;
        fx.b("Error parsing the JSON for Active View.", exception1);
_L7:
        jsonobject = null;
          goto _L18
_L9:
        aw = null;
          goto _L19
_L11:
        bj = null;
          goto _L20
_L13:
        s2 = null;
          goto _L21
_L15:
        ba = null;
          goto _L22
        l2 = l1;
        am2 = am1;
          goto _L23
    }

    protected void a(long l1)
    {
        am am1 = c.e();
        int i1;
        int j1;
        ei ei1;
        if (am1.e)
        {
            i1 = e.getResources().getDisplayMetrics().widthPixels;
            j1 = e.getResources().getDisplayMetrics().heightPixels;
        } else
        {
            i1 = am1.g;
            j1 = am1.d;
        }
        ei1 = new ei(this, c, i1, j1);
        fw.a.post(new Runnable(ei1) {

            final ei a;
            final eg b;

            public void run()
            {
label0:
                {
                    synchronized (eg.a(b))
                    {
                        if (eg.c(b).e == -2)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                eg.d(b).f().a(b);
                a.a(eg.c(b));
                obj;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                b = eg.this;
                a = ei1;
                super();
            }
        });
        d(l1);
        if (ei1.c())
        {
            fx.a("Ad-Network indicated no fill with passback URL.");
            throw new eh("AdNetwork sent passback url", 3);
        }
        if (!ei1.d())
        {
            throw new eh("AdNetwork timed out", 2);
        } else
        {
            return;
        }
    }

    public void a(dv dv1)
    {
        synchronized (f)
        {
            fx.a("Received ad response.");
            j = dv1;
            f.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(fz fz1)
    {
        synchronized (f)
        {
            fx.a("WebView finished loading.");
            k = true;
            f.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        synchronized (d)
        {
            if (i != null)
            {
                i.f();
            }
            c.stopLoading();
            fq.a(c);
            if (l != null)
            {
                l.a();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
