// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            fx, al, fz, fc, 
//            fn

public final class fa
{

    public final al a = new al() {

        final fa a;

        public void a(fz fz, Map map)
        {
            synchronized (fa.a(a))
            {
                fc fc1 = new fc(map);
                fx.e((new StringBuilder()).append("Invalid ").append(fc1.d()).append(" request error: ").append(fc1.a()).toString());
                fa.a(a, 1);
                fa.a(a).notify();
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

            
            {
                a = fa.this;
                super();
            }
    };
    public final al b = new al() {

        final fa a;

        public void a(fz fz1, Map map)
        {
            Object obj = fa.a(a);
            obj;
            JVM INSTR monitorenter ;
            fc fc1;
            String s1;
            fc1 = new fc(map);
            s1 = fc1.c();
            if (s1 != null)
            {
                break MISSING_BLOCK_LABEL_40;
            }
            fx.e("URL missing in loadAdUrl GMSG.");
            obj;
            JVM INSTR monitorexit ;
            return;
            if (s1.contains("%40mediation_adapters%40"))
            {
                String s2 = s1.replaceAll("%40mediation_adapters%40", fn.a(fz1.getContext(), (String)map.get("check_adapters"), fa.b(a)));
                fx.d((new StringBuilder()).append("Ad request URL modified to ").append(s2).toString());
            }
            fa.a(a, fc1);
            fa.a(a).notify();
            obj;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

            
            {
                a = fa.this;
                super();
            }
    };
    private final Object c = new Object();
    private fz d;
    private String e;
    private int f;
    private fc g;

    public fa(String s)
    {
        f = -2;
        e = s;
    }

    static int a(fa fa1, int i)
    {
        fa1.f = i;
        return i;
    }

    static fc a(fa fa1, fc fc)
    {
        fa1.g = fc;
        return fc;
    }

    static Object a(fa fa1)
    {
        return fa1.c;
    }

    static String b(fa fa1)
    {
        return fa1.e;
    }

    public int a()
    {
        int i;
        synchronized (c)
        {
            i = f;
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(fz fz)
    {
        synchronized (c)
        {
            d = fz;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public fc b()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
_L1:
        int i;
        if (g != null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        i = f;
        if (i != -2)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        c.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        fx.e("Ad request service was interrupted.");
        obj;
        JVM INSTR monitorexit ;
        return null;
        fc fc = g;
        obj;
        JVM INSTR monitorexit ;
        return fc;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
