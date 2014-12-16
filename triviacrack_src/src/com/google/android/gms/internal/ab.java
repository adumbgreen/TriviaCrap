// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            fw, ac

public final class ab
{

    public static final String a = fw.a("emulator");
    private final Date b;
    private final String c;
    private final int d;
    private final Set e;
    private final Location f;
    private final boolean g;
    private final Bundle h;
    private final Map i;
    private final String j;
    private final SearchAdRequest k;
    private final int l;
    private final Set m;

    public ab(ac ac1)
    {
        this(ac1, null);
    }

    public ab(ac ac1, SearchAdRequest searchadrequest)
    {
        b = ac.a(ac1);
        c = ac.b(ac1);
        d = ac.c(ac1);
        e = Collections.unmodifiableSet(ac.d(ac1));
        f = ac.e(ac1);
        g = ac.f(ac1);
        h = ac.g(ac1);
        i = Collections.unmodifiableMap(ac.h(ac1));
        j = ac.i(ac1);
        k = searchadrequest;
        l = ac.j(ac1);
        m = Collections.unmodifiableSet(ac.k(ac1));
    }

    public NetworkExtras a(Class class1)
    {
        return (NetworkExtras)i.get(class1);
    }

    public Date a()
    {
        return b;
    }

    public boolean a(Context context)
    {
        return m.contains(fw.a(context));
    }

    public Bundle b(Class class1)
    {
        return h.getBundle(class1.getName());
    }

    public String b()
    {
        return c;
    }

    public int c()
    {
        return d;
    }

    public Bundle c(Class class1)
    {
        Bundle bundle = h.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null)
        {
            return bundle.getBundle(class1.getClass().getName());
        } else
        {
            return null;
        }
    }

    public Set d()
    {
        return e;
    }

    public Location e()
    {
        return f;
    }

    public boolean f()
    {
        return g;
    }

    public String g()
    {
        return j;
    }

    public SearchAdRequest h()
    {
        return k;
    }

    public Map i()
    {
        return i;
    }

    public Bundle j()
    {
        return h;
    }

    public int k()
    {
        return l;
    }

}
