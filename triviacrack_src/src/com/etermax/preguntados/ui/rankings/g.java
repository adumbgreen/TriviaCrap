// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.e;
import com.etermax.tools.social.a.j;
import com.etermax.widget.slidingtab.SlidingTabLayout;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            e, h

public final class g extends com.etermax.preguntados.ui.rankings.e
    implements a, b
{

    private final c g = new c();
    private View h;

    public g()
    {
    }

    private void b(Bundle bundle)
    {
        c.a(this);
        c = j.a(getActivity());
        b = com.etermax.gamescommon.social.g.a(getActivity());
        a = com.etermax.preguntados.datasource.e.a(getActivity());
    }

    public static h e()
    {
        return new h();
    }

    public void a(a a1)
    {
        d = (SlidingTabLayout)a1.findViewById(0x7f0a0427);
        e = (ViewPager)a1.findViewById(0x7f0a0428);
        View view = a1.findViewById(0x7f0a0426);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view1)
                {
                    a.d();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        c();
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
        b(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        h = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (h == null)
        {
            h = layoutinflater.inflate(0x7f030109, viewgroup, false);
        }
        return h;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        g.a(this);
    }
}
