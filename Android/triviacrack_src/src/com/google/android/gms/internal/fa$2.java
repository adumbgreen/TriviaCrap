// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, fa, fc, fx, 
//            fz, fn

class a
    implements al
{

    final fa a;

    public void a(fz fz1, Map map)
    {
        Object obj = fa.a(a);
        obj;
        JVM INSTR monitorenter ;
        fc fc1;
        String s;
        fc1 = new fc(map);
        s = fc1.c();
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        fx.e("URL missing in loadAdUrl GMSG.");
        obj;
        JVM INSTR monitorexit ;
        return;
        if (s.contains("%40mediation_adapters%40"))
        {
            String s1 = s.replaceAll("%40mediation_adapters%40", fn.a(fz1.getContext(), (String)map.get("check_adapters"), fa.b(a)));
            fx.d((new StringBuilder()).append("Ad request URL modified to ").append(s1).toString());
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

    (fa fa1)
    {
        a = fa1;
        super();
    }
}
