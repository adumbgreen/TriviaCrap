// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            i, k

public final class j extends i
    implements a, b
{

    private final c i = new c();
    private View j;

    public j()
    {
    }

    private void a(Bundle bundle)
    {
        f();
        g = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        h = com.etermax.preguntados.datasource.e.a(getActivity());
        c.a(this);
    }

    public static k e()
    {
        return new k();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mUsername"))
            {
                f = bundle.getString("mUsername");
            }
            if (bundle.containsKey("mUserId"))
            {
                e = bundle.getLong("mUserId");
            }
        }
    }

    public void a(a a1)
    {
        d();
    }

    public View findViewById(int l)
    {
        if (j == null)
        {
            return null;
        } else
        {
            return j.findViewById(l);
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
