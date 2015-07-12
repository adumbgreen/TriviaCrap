// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.login.datasource.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            s

public final class t extends s
    implements a
{

    private final c c = new c();
    private View d;

    public t()
    {
    }

    private void a(Bundle bundle)
    {
        a = com.etermax.gamescommon.login.datasource.d.b(getActivity());
        b = com.etermax.tools.f.d.c(getActivity());
    }

    public View findViewById(int i)
    {
        if (d == null)
        {
            return null;
        } else
        {
            return d.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(c);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        d = super.onCreateView(layoutinflater, viewgroup, bundle);
        return d;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        c.a(this);
    }
}
