// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.login.datasource.d;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a

public final class f extends com.etermax.gamescommon.i.b.a
    implements a, b
{

    private final c l = new c();
    private View m;

    public f()
    {
    }

    private void b(Bundle bundle)
    {
        c = d.b(getActivity());
        b = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        f = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        d = com.etermax.tools.f.d.c(getActivity());
        e = com.etermax.gamescommon.i.a.d.a(getActivity());
        a = com.etermax.tools.b.c.a(getActivity());
        c.a(this);
    }

    public void a(a a1)
    {
        d();
        b();
    }

    public View findViewById(int i)
    {
        if (m == null)
        {
            return null;
        } else
        {
            return m.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(l);
        b(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        m = super.onCreateView(layoutinflater, viewgroup, bundle);
        return m;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        l.a(this);
    }
}
