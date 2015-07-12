// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.gamescommon.promotion.PromotionsManager_;
import com.etermax.gamescommon.version.VersionManager_;
import com.etermax.preguntados.datasource.e;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            e

public final class g extends com.etermax.preguntados.ui.dashboard.e
    implements a, b
{

    private final c r = new c();
    private View s;

    public g()
    {
    }

    private void b(Bundle bundle)
    {
        c.a(this);
        a = com.etermax.gamescommon.e.b.a(getActivity());
        l = com.etermax.gamescommon.social.g.a(getActivity());
        b = PromotionsManager_.getInstance_(getActivity());
        o = VersionManager_.getInstance_(getActivity());
        h = com.etermax.preguntados.ui.game.a.b.a(getActivity());
        c = e.a(getActivity());
        f = d.b(getActivity());
        k = com.etermax.preguntados.g.b.a(getActivity());
        n = h.a(getActivity());
        i = com.etermax.gamescommon.notification.e.a(getActivity());
        j = j.a(getActivity());
        p = com.etermax.tools.b.c.a(getActivity());
        e = com.etermax.gamescommon.menu.a.j.a(getActivity());
        g = com.etermax.tools.f.d.c(getActivity());
        m = com.etermax.gamescommon.c.b.b(getActivity());
        l = com.etermax.gamescommon.social.g.a(getActivity());
        d = com.etermax.gamescommon.login.datasource.b.a(getActivity());
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a013a);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view5)
                {
                    a.x();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0172);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view5)
                {
                    a.u();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a013e);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view5)
                {
                    a.y();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0174);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view5)
                {
                    a.v();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view4 = a1.findViewById(0x7f0a0173);
        if (view4 != null)
        {
            view4.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view5)
                {
                    a.w();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        AdapterView adapterview = (AdapterView)a1.findViewById(0x102000a);
        if (adapterview != null)
        {
            adapterview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final g a;

                public void onItemClick(AdapterView adapterview2, View view5, int i, long l)
                {
                    a.a(adapterview2.getAdapter().getItem(i));
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        AdapterView adapterview1 = (AdapterView)a1.findViewById(0x102000a);
        if (adapterview1 != null)
        {
            adapterview1.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final g a;

                public void onItemClick(AdapterView adapterview2, View view5, int i, long l)
                {
                    a.a(adapterview2.getAdapter().getItem(i));
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        p();
    }

    public View findViewById(int i)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.findViewById(i);
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
        return s;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        r.a(this);
    }
}
