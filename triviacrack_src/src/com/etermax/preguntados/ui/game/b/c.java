// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.StatisticsDTO;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.game.b:
//            a, d

public final class c extends com.etermax.preguntados.ui.game.b.a
    implements a, b
{

    private final org.a.a.b.c e = new org.a.a.b.c();
    private View f;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        d();
        c = com.etermax.preguntados.c.a.c.a(getActivity());
        org.a.a.b.c.a(this);
    }

    public static d c()
    {
        return new d();
    }

    private void d()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mStatistics"))
            {
                a = (StatisticsDTO)bundle.getSerializable("mStatistics");
            }
            if (bundle.containsKey("mMyPlayerNumber"))
            {
                b = bundle.getInt("mMyPlayerNumber");
            }
        }
    }

    public void a(a a1)
    {
        b();
    }

    public View findViewById(int i)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(e);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        f = super.onCreateView(layoutinflater, viewgroup, bundle);
        return f;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        e.a(this);
    }
}
