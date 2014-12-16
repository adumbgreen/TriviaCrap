// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.tools.f.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            a

public final class c extends com.etermax.gamescommon.login.ui.a
    implements a, b
{

    private final org.a.a.b.c f = new org.a.a.b.c();
    private View g;

    public c()
    {
    }

    private void c(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        b = com.etermax.tools.b.c.a(getActivity());
        e = d.c(getActivity());
        c = j.a(getActivity());
        a = com.etermax.gamescommon.login.datasource.d.b(getActivity());
        d = com.etermax.gamescommon.login.datasource.b.a(getActivity());
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0308);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a01be);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.f();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0306);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.e();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a030a);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.d();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
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
        c(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = super.onCreateView(layoutinflater, viewgroup, bundle);
        return g;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
