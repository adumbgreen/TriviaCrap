// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.shop.d;
import com.etermax.gamescommon.social.g;
import com.etermax.gamescommon.social.j;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            m, p

public final class o extends m
    implements a, b
{

    private final c i = new c();
    private View j;

    public o()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        f();
        mAppUtils = com.etermax.tools.j.c.a(getActivity());
        mCommonDataSource = com.etermax.gamescommon.datasource.i.a(getActivity());
        mShopManager = d.b(getActivity());
        f = g.a(getActivity());
        c = com.etermax.tools.f.d.c(getActivity());
        b = com.etermax.preguntados.datasource.e.a(getActivity());
        g = com.etermax.preguntados.b.b.a(getActivity());
        d = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        e = com.etermax.gamescommon.social.j.a(getActivity());
    }

    public static p e()
    {
        return new p();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mGameDTO"))
        {
            a = (GameDTO)bundle.getSerializable("mGameDTO");
        }
    }

    public void a(a a1)
    {
        h = (ImageView)a1.findViewById(0x7f0a020d);
        View view = a1.findViewById(0x7f0a020f);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final o a;

                public void onClick(View view2)
                {
                    a.d();
                }

            
            {
                a = o.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0209);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final o a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = o.this;
                super();
            }
            });
        }
        loadProducts();
    }

    public View findViewById(int k)
    {
        if (j == null)
        {
            return null;
        } else
        {
            return j.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(i);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        j = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (j == null)
        {
            j = layoutinflater.inflate(0x7f030097, viewgroup, false);
        }
        return j;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        i.a(this);
    }
}
