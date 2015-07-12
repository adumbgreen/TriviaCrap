// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Semaphore;
import org.json.JSONObject;

// Referenced classes of package com.mobileapptracker:
//            h

public class c
{

    private static long d = 0L;
    private SharedPreferences a;
    private Semaphore b;
    private h c;

    public c(Context context, h h)
    {
        a = context.getSharedPreferences("mat_queue", 0);
        b = new Semaphore(1, true);
        c = h;
    }

    static long a(long l)
    {
        d = l;
        return l;
    }

    static Semaphore a(c c1)
    {
        return c1.b;
    }

    static long b()
    {
        return d;
    }

    static h b(c c1)
    {
        return c1.c;
    }

    protected int a()
    {
        this;
        JVM INSTR monitorenter ;
        int i = a.getInt("queuesize", 0);
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    protected void a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = a.edit();
        if (i < 0)
        {
            i = 0;
        }
        editor.putInt("queuesize", i);
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        a(-1 + a());
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.remove(s);
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void a(JSONObject jsonobject, String s)
    {
        this;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putString(s, jsonobject.toString());
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected String b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a.getString(s, null);
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

}
