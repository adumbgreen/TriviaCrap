// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.login.datasource.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            g

public final class i extends g
    implements a
{

    private final c d = new c();
    private View e;

    public i()
    {
    }

    private void b(Bundle bundle)
    {
        a = com.etermax.gamescommon.login.datasource.d.b(getActivity());
        c = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        b = com.etermax.tools.f.d.c(getActivity());
    }

    public View findViewById(int j)
    {
        if (e == null)
        {
            return null;
        } else
        {
            return e.findViewById(j);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(d);
        b(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        e = super.onCreateView(layoutinflater, viewgroup, bundle);
        return e;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        d.a(this);
    }
}
