// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.settings:
//            a

public final class b extends com.etermax.preguntados.ui.settings.a
    implements a
{

    private final c i = new c();
    private View j;

    public b()
    {
    }

    private void a(Bundle bundle)
    {
        d = d.b(getActivity());
        b = com.etermax.tools.social.a.j.a(getActivity());
        f = h.a(getActivity());
        g = com.etermax.gamescommon.i.a.b.a(getActivity());
        c = com.etermax.gamescommon.datasource.i.a(getActivity());
        h = com.etermax.tools.f.d.c(getActivity());
        a = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        e = com.etermax.tools.j.c.a(getActivity());
    }

    public View findViewById(int k)
    {
        if (j == null)
        {
            return null;
        } else
        {
            return j.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(i);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        j = super.onCreateView(layoutinflater, viewgroup, bundle);
        return j;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        i.a(this);
    }
}
