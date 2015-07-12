// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.social.j;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.d:
//            a

public final class b extends com.etermax.preguntados.d.a
    implements a
{

    private final c g = new c();
    private View h;

    public b()
    {
    }

    private void a(Bundle bundle)
    {
        b = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        a = j.a(getActivity());
        d = d.c(getActivity());
        c = com.etermax.tools.social.a.j.a(getActivity());
    }

    public View findViewById(int i)
    {
        if (h == null)
        {
            return null;
        } else
        {
            return h.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(g);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        h = super.onCreateView(layoutinflater, viewgroup, bundle);
        return h;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        g.a(this);
    }
}
