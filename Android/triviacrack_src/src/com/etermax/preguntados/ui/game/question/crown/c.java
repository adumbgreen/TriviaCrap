// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.crown;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.game.question.crown:
//            a, d

public final class c extends com.etermax.preguntados.ui.game.question.crown.a
    implements a, b
{

    private final org.a.a.b.c f = new org.a.a.b.c();
    private View g;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        d();
        b = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        d = com.etermax.preguntados.c.a.c.a(getActivity());
        c = e.a(getActivity());
        org.a.a.b.c.a(this);
    }

    public static d c()
    {
        return new d();
    }

    private void d()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mGameDTO"))
        {
            e = (GameDTO)bundle.getSerializable("mGameDTO");
        }
    }

    public void a(a a1)
    {
        b();
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
        org.a.a.b.c c1 = org.a.a.b.c.a(f);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (g == null)
        {
            g = layoutinflater.inflate(0x7f0300a5, viewgroup, false);
        }
        return g;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
