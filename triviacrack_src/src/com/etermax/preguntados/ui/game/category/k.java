// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.achievements.ui.m;
import com.etermax.gamescommon.social.g;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.sharing.o;
import com.etermax.preguntados.ui.d.j;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            i, l

public final class k extends i
    implements a, b
{

    private final c r = new c();
    private View s;

    public k()
    {
    }

    private void b(Bundle bundle)
    {
        c.a(this);
        j();
        d = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        f = com.etermax.preguntados.ui.d.j.g(getActivity());
        h = d.c(getActivity());
        c = e.a(getActivity());
        g = com.etermax.preguntados.ui.game.a.b.a(getActivity());
        j = com.etermax.preguntados.ui.a.b.a(getActivity());
        m = com.etermax.gamescommon.notification.e.a(getActivity());
        k = m.a(getActivity());
        e = com.etermax.preguntados.g.b.a(getActivity());
        n = com.etermax.gamescommon.login.datasource.d.b(getActivity());
        l = com.etermax.preguntados.c.a.c.a(getActivity());
        b = com.etermax.tools.b.c.a(getActivity());
        p = o.a(getActivity());
        i = g.a(getActivity());
        o = com.etermax.gamescommon.datasource.m.a(getActivity());
        b();
    }

    public static l i()
    {
        return new l();
    }

    private void j()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mGameDTO"))
        {
            a = (GameDTO)bundle.getSerializable("mGameDTO");
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0200);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final k a;

                public void onClick(View view4)
                {
                    a.h();
                }

            
            {
                a = k.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0207);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final k a;

                public void onClick(View view4)
                {
                    a.e();
                }

            
            {
                a = k.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0203);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final k a;

                public void onClick(View view4)
                {
                    a.g();
                }

            
            {
                a = k.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0202);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final k a;

                public void onClick(View view4)
                {
                    a.f();
                }

            
            {
                a = k.this;
                super();
            }
            });
        }
        c();
    }

    public View findViewById(int i1)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.findViewById(i1);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(r);
        b(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        s = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (s == null)
        {
            s = layoutinflater.inflate(0x7f030096, viewgroup, false);
        }
        return s;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        r.a(this);
    }
}
