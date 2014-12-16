// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.etermax.gamescommon.social.g;
import com.etermax.gamescommon.social.j;
import com.etermax.preguntados.datasource.e;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.a:
//            a, d

public final class c extends com.etermax.preguntados.ui.dashboard.a.a
    implements a, b
{

    private final org.a.a.b.c h = new org.a.a.b.c();
    private View i;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        a = d.c(getActivity());
        d = j.a(getActivity());
        f = com.etermax.preguntados.b.b.a(getActivity());
        e = com.etermax.preguntados.datasource.e.a(getActivity());
        c = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        b = g.a(getActivity());
    }

    public static com.etermax.preguntados.ui.dashboard.a.d e()
    {
        return new com.etermax.preguntados.ui.dashboard.a.d();
    }

    public void a(a a1)
    {
        g = (ImageView)a1.findViewById(0x7f0a014b);
        View view = a1.findViewById(0x7f0a0147);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0150);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view2)
                {
                    a.d();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
    }

    public View findViewById(int k)
    {
        if (i == null)
        {
            return null;
        } else
        {
            return i.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(h);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        i = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (i == null)
        {
            i = layoutinflater.inflate(0x7f03005f, viewgroup, false);
        }
        return i;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        h.a(this);
    }
}
