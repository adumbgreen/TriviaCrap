// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            fq, fk, fm, fh, 
//            fl

public class fj
{

    public static final String a;
    private static final fj c;
    public final String b = fq.d();
    private final Object d = new Object();
    private final fk e;
    private BigInteger f;
    private final HashSet g = new HashSet();
    private final HashMap h = new HashMap();
    private boolean i;

    private fj()
    {
        f = BigInteger.ONE;
        i = false;
        e = new fk(b);
    }

    public static Bundle a(Context context, fl fl1, String s)
    {
        return c.b(context, fl1, s);
    }

    public static fj a()
    {
        return c;
    }

    public static void a(HashSet hashset)
    {
        c.b(hashset);
    }

    public static String b()
    {
        return c.c();
    }

    public static fk d()
    {
        return c.e();
    }

    public static boolean f()
    {
        return c.g();
    }

    public void a(fh fh1)
    {
        synchronized (d)
        {
            g.add(fh1);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, fm fm1)
    {
        synchronized (d)
        {
            h.put(s, fm1);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Bundle b(Context context, fl fl1, String s)
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        Bundle bundle;
        Bundle bundle1;
        bundle = new Bundle();
        bundle.putBundle("app", e.a(context, s));
        bundle1 = new Bundle();
        String s1;
        for (Iterator iterator = h.keySet().iterator(); iterator.hasNext(); bundle1.putBundle(s1, ((fm)h.get(s1)).a()))
        {
            s1 = (String)iterator.next();
        }

        break MISSING_BLOCK_LABEL_112;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        ArrayList arraylist;
        bundle.putBundle("slots", bundle1);
        arraylist = new ArrayList();
        for (Iterator iterator1 = g.iterator(); iterator1.hasNext(); arraylist.add(((fh)iterator1.next()).d())) { }
        bundle.putParcelableArrayList("ads", arraylist);
        fl1.a(g);
        g.clear();
        obj;
        JVM INSTR monitorexit ;
        return bundle;
    }

    public void b(HashSet hashset)
    {
        synchronized (d)
        {
            g.addAll(hashset);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String c()
    {
        String s;
        synchronized (d)
        {
            s = f.toString();
            f = f.add(BigInteger.ONE);
        }
        return s;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public fk e()
    {
        fk fk1;
        synchronized (d)
        {
            fk1 = e;
        }
        return fk1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean g()
    {
        boolean flag;
        synchronized (d)
        {
            flag = i;
            i = true;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static 
    {
        c = new fj();
        a = c.b;
    }
}
