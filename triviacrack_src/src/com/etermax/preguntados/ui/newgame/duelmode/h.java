// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.e;
import java.util.ArrayList;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            f, s, i

public final class h extends f
    implements a, b
{

    private final c g = new c();
    private View h;

    public h()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        h();
        d = com.etermax.gamescommon.h.a(getActivity());
        a = e.a(getActivity());
        b = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        c = com.etermax.preguntados.ui.newgame.duelmode.s.a(getActivity());
        b();
    }

    public static i g()
    {
        return new i();
    }

    private void h()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mPreselectedFriends"))
            {
                e = (ArrayList)bundle.getSerializable("mPreselectedFriends");
            }
            if (bundle.containsKey("mDuelName"))
            {
                f = bundle.getString("mDuelName");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0331);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final h a;

                public void onClick(View view2)
                {
                    a.e();
                }

            
            {
                a = h.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0337);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final h a;

                public void onClick(View view2)
                {
                    a.f();
                }

            
            {
                a = h.this;
                super();
            }
            });
        }
        c();
    }

    public View findViewById(int j)
    {
        if (h == null)
        {
            return null;
        } else
        {
            return h.findViewById(j);
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
