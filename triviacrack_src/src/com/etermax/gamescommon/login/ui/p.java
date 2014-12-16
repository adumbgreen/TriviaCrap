// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.tools.f.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            n

public final class p extends n
    implements a
{

    private final c f = new c();
    private View g;

    public p()
    {
    }

    private void a(Bundle bundle)
    {
        e = b.a(getActivity());
        b = com.etermax.tools.b.c.a(getActivity());
        d = d.c(getActivity());
        c = j.a(getActivity());
        a = com.etermax.gamescommon.login.datasource.d.b(getActivity());
    }

    public View findViewById(int i)
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(f);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = super.onCreateView(layoutinflater, viewgroup, bundle);
        return g;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
