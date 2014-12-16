// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            gu, dv, fz, fq, 
//            gc, ej

public class ei
    implements Runnable
{

    protected final fz a;
    protected boolean b;
    protected boolean c;
    private final Handler d;
    private final long e;
    private long f;
    private gc g;
    private final int h;
    private final int i;

    public ei(gc gc1, fz fz1, int j, int k)
    {
        this(gc1, fz1, j, k, 200L, 50L);
    }

    public ei(gc gc1, fz fz1, int j, int k, long l, long l1)
    {
        e = l;
        f = l1;
        d = new Handler(Looper.getMainLooper());
        a = fz1;
        g = gc1;
        b = false;
        c = false;
        h = k;
        i = j;
    }

    static int a(ei ei1)
    {
        return ei1.i;
    }

    static int b(ei ei1)
    {
        return ei1.h;
    }

    static long c(ei ei1)
    {
        long l = ei1.f - 1L;
        ei1.f = l;
        return l;
    }

    static long d(ei ei1)
    {
        return ei1.f;
    }

    static gc e(ei ei1)
    {
        return ei1.g;
    }

    static long f(ei ei1)
    {
        return ei1.e;
    }

    static Handler g(ei ei1)
    {
        return ei1.d;
    }

    public void a()
    {
        d.postDelayed(this, e);
    }

    public void a(dv dv1)
    {
        a(dv1, new gu(this, a, dv1.q));
    }

    public void a(dv dv1, gu gu1)
    {
        a.setWebViewClient(gu1);
        fz fz1 = a;
        String s;
        if (TextUtils.isEmpty(dv1.b))
        {
            s = null;
        } else
        {
            s = fq.a(dv1.b);
        }
        fz1.loadDataWithBaseURL(s, dv1.c, "text/html", "UTF-8", null);
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        b = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean c()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = b;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean d()
    {
        return c;
    }

    public void run()
    {
        if (a == null || c())
        {
            g.a(a);
            return;
        } else
        {
            (new ej(this, a)).execute(new Void[0]);
            return;
        }
    }
}
