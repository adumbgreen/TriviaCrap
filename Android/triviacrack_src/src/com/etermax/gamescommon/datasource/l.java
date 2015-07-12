// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import android.app.NotificationManager;
import android.content.Context;
import android.util.Log;
import com.etermax.gamescommon.f.a.c;
import com.etermax.gamescommon.f.b.b;
import java.util.ArrayList;
import java.util.List;

public class l
{

    protected Context a;
    c b;
    NotificationManager c;

    public l()
    {
    }

    public List a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        b b1;
        b1 = new b();
        b1.a(Integer.valueOf(i));
        List list = b.a(b1);
        Object obj = list;
_L2:
        this;
        JVM INSTR monitorexit ;
        return ((List) (obj));
        Exception exception1;
        exception1;
        obj = new ArrayList();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    protected void a()
    {
        b = new c(a);
        c = (NotificationManager)a.getSystemService("notification");
    }

    public void a(int i, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        b b1;
        c.cancel(i);
        b1 = new b();
        b1.a(Integer.valueOf(i));
        b1.b(Long.valueOf(l1));
        Exception exception;
        try
        {
            b.b(b1);
        }
        catch (Exception exception1) { }
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        throw exception;
    }

    public void a(b b1)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("Notification", b1.toString());
        List list;
        b b2 = new b();
        b2.a(b1.a());
        b2.a(b1.b());
        b2.b(b1.c());
        b2.b(b1.f());
        list = b.a(b1.a(), b1.b(), b1.c(), b1.f());
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        b b3 = (b)list.get(0);
        b3.a(b1);
        b.a(com/etermax/gamescommon/f/b/b, b3);
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Exception exception;
        try
        {
            b.b(com/etermax/gamescommon/f/b/b, b1);
        }
        catch (Exception exception1) { }
        finally
        {
            this;
        }
        if (true) goto _L5; else goto _L4
_L4:
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Integer integer, Long long1, Long long2)
    {
        this;
        JVM INSTR monitorenter ;
        b b1;
        c.cancel(integer.intValue());
        b1 = new b();
        b1.a(integer);
        b1.a(long1);
        b1.b(long2);
        Exception exception;
        try
        {
            b.b(b1);
        }
        catch (Exception exception1) { }
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        throw exception;
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        c.cancelAll();
        Exception exception;
        try
        {
            b.a(com/etermax/gamescommon/f/b/b);
        }
        catch (Exception exception1) { }
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        throw exception;
    }

    public void b(int i)
    {
        this;
        JVM INSTR monitorenter ;
        b b1;
        c.cancel(i);
        b1 = (new b()).a(Integer.valueOf(i));
        Exception exception;
        try
        {
            b.b(b1);
        }
        catch (Exception exception1) { }
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        throw exception;
    }
}
