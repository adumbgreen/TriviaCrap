// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            a, d

public final class c extends com.etermax.preguntados.ui.dashboard.a
    implements a, b
{

    private final org.a.a.b.c d = new org.a.a.b.c();
    private View e;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        f();
        b = com.etermax.tools.f.d.c(getActivity());
        a = com.etermax.preguntados.c.a.c.a(getActivity());
    }

    public static com.etermax.preguntados.ui.dashboard.d e()
    {
        return new com.etermax.preguntados.ui.dashboard.d();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mGameDTO"))
        {
            c = (GameDTO)bundle.getSerializable("mGameDTO");
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0137);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view3)
                {
                    a.b();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0131);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view3)
                {
                    a.d();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0136);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view3)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
    }

    public View findViewById(int i)
    {
        if (e == null)
        {
            return null;
        } else
        {
            return e.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(d);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        e = super.onCreateView(layoutinflater, viewgroup, bundle);
        return e;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        d.a(this);
    }
}
