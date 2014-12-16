// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.social.j;
import java.util.ArrayList;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.d:
//            c, g

public final class f extends com.etermax.preguntados.d.c
    implements a
{

    private final c g = new c();
    private View h;

    public f()
    {
    }

    private void a(Bundle bundle)
    {
        e();
        e = j.a(getActivity());
        f = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            c = (ArrayList)bundle.getSerializable("mCheckedNonAppUsers");
            b = (ArrayList)bundle.getSerializable("mCheckedAppUsers");
            return;
        }
    }

    public static g d()
    {
        return new g();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mInactiveUsers"))
        {
            a = (ArrayList)bundle.getSerializable("mInactiveUsers");
        }
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

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("mCheckedNonAppUsers", c);
        bundle.putSerializable("mCheckedAppUsers", b);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        g.a(this);
    }
}
