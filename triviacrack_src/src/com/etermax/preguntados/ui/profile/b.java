// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.datasource.i;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            a, c

public final class b extends com.etermax.preguntados.ui.profile.a
    implements a, org.a.a.b.b
{

    private final c i = new c();
    private View j;

    public b()
    {
    }

    private void a(Bundle bundle)
    {
        g();
        g = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        f = com.etermax.gamescommon.datasource.i.a(getActivity());
        c.a(this);
    }

    public static com.etermax.preguntados.ui.profile.c f()
    {
        return new com.etermax.preguntados.ui.profile.c();
    }

    private void g()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mUserId"))
        {
            h = bundle.getLong("mUserId");
        }
    }

    public void a(a a1)
    {
        e();
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
