// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.a;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;

// Referenced classes of package com.google.android.gms.internal:
//            em, ep, dt, ew, 
//            dv, el, fx, et

public final class eo extends em
    implements d, e
{

    private final el a;
    private final ep b;
    private final Object c = new Object();

    public eo(Context context, dt dt1, el el1)
    {
        super(dt1, el1);
        a = el1;
        b = new ep(context, this, this, dt1.k.d);
        b.f();
    }

    public void a(Bundle bundle)
    {
        e();
    }

    public void a(a a1)
    {
        a.a(new dv(0));
    }

    public void c()
    {
        synchronized (c)
        {
            if (b.g() || b.h())
            {
                b.i();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public et d()
    {
        obj;
        JVM INSTR monitorenter ;
        et et;
        synchronized (c)
        {
            et = b.c();
        }
        return et;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        obj;
        JVM INSTR monitorexit ;
        return null;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void m_()
    {
        com.google.android.gms.internal.fx.a("Disconnected from remote ad request service.");
    }
}
