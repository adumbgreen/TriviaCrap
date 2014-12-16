// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.ui.d.j;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            a, d

public final class c extends com.etermax.preguntados.ui.game.category.a
    implements a, b
{

    private final org.a.a.b.c o = new org.a.a.b.c();
    private View p;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        f();
        d = j.g(getActivity());
        a = com.etermax.preguntados.datasource.e.a(getActivity());
        c = com.etermax.preguntados.g.b.a(getActivity());
        e = com.etermax.preguntados.b.b.a(getActivity());
        f = com.etermax.preguntados.c.a.c.a(getActivity());
    }

    public static d e()
    {
        return new d();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mGameDTO"))
        {
            b = (GameDTO)bundle.getSerializable("mGameDTO");
        }
    }

    public void a(a a1)
    {
        i = (TextView)a1.findViewById(0x7f0a01eb);
        g = (RelativeLayout)a1.findViewById(0x7f0a01ec);
        h = (ImageView)a1.findViewById(0x7f0a01ed);
        View view = a1.findViewById(0x7f0a01e9);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

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
        View view1 = a1.findViewById(0x7f0a01e8);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

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
        a();
    }

    public View findViewById(int i)
    {
        if (p == null)
        {
            return null;
        } else
        {
            return p.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(o);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        p = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (p == null)
        {
            p = layoutinflater.inflate(0x7f030092, viewgroup, false);
        }
        return p;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        o.a(this);
    }
}
