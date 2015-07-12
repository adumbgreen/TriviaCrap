// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.os.IBinder;
import java.util.HashSet;

// Referenced classes of package com.google.android.gms.internal:
//            hm, hk, he

final class hl
{

    final hk a;
    private final String b;
    private final hm c = new hm(this);
    private final HashSet d = new HashSet();
    private int e;
    private boolean f;
    private IBinder g;
    private ComponentName h;

    public hl(hk hk, String s)
    {
        a = hk;
        super();
        b = s;
        e = 0;
    }

    static int a(hl hl1, int i)
    {
        hl1.e = i;
        return i;
    }

    static ComponentName a(hl hl1, ComponentName componentname)
    {
        hl1.h = componentname;
        return componentname;
    }

    static IBinder a(hl hl1, IBinder ibinder)
    {
        hl1.g = ibinder;
        return ibinder;
    }

    static HashSet a(hl hl1)
    {
        return hl1.d;
    }

    public hm a()
    {
        return c;
    }

    public void a(he he)
    {
        d.add(he);
    }

    public void a(boolean flag)
    {
        f = flag;
    }

    public String b()
    {
        return b;
    }

    public void b(he he)
    {
        d.remove(he);
    }

    public boolean c()
    {
        return f;
    }

    public boolean c(he he)
    {
        return d.contains(he);
    }

    public int d()
    {
        return e;
    }

    public boolean e()
    {
        return d.isEmpty();
    }

    public IBinder f()
    {
        return g;
    }

    public ComponentName g()
    {
        return h;
    }
}
