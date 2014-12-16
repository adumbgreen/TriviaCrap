// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.resources.RandomImageView;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.sharing.o;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.game.category.a:
//            a, d

public final class c extends com.etermax.preguntados.ui.game.category.a.a
    implements a, b
{

    private final org.a.a.b.c l = new org.a.a.b.c();
    private View m;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        h();
        e = o.a(getActivity());
        c = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        d = com.etermax.preguntados.g.b.a(getActivity());
    }

    public static d g()
    {
        return new d();
    }

    private void h()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mGameDTO"))
            {
                a = (GameDTO)bundle.getSerializable("mGameDTO");
            }
            if (bundle.containsKey("mTieBreakDuel"))
            {
                b = bundle.getBoolean("mTieBreakDuel");
            }
        }
    }

    public void a(a a1)
    {
        g = (ViewSwitcher)a1.findViewById(0x7f0a023f);
        h = (RandomImageView)a1.findViewById(0x7f0a0242);
        i = (TextView)a1.findViewById(0x7f0a023b);
        f = (ViewSwitcher)a1.findViewById(0x7f0a023a);
        j = (TextView)a1.findViewById(0x7f0a0240);
        View view = a1.findViewById(0x7f0a024a);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

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
        View view1 = a1.findViewById(0x7f0a0236);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

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
        View view2 = a1.findViewById(0x7f0a024d);
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
        View view3 = a1.findViewById(0x7f0a024b);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

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
        b();
    }

    public View findViewById(int i)
    {
        if (m == null)
        {
            return null;
        } else
        {
            return m.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(l);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        m = super.onCreateView(layoutinflater, viewgroup, bundle);
        return m;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        l.a(this);
    }
}
