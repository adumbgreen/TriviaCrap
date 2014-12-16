// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.shop.d;
import com.etermax.gamescommon.social.j;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.a:
//            e, h

public final class g extends com.etermax.preguntados.ui.dashboard.a.e
    implements a, b
{

    private final c h = new c();
    private View i;

    public g()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        mShopManager = d.b(getActivity());
        mCommonDataSource = com.etermax.gamescommon.datasource.i.a(getActivity());
        mAppUtils = com.etermax.tools.j.c.a(getActivity());
        f = com.etermax.preguntados.b.b.a(getActivity());
        e = com.etermax.preguntados.datasource.e.a(getActivity());
        a = com.etermax.tools.f.d.c(getActivity());
        d = j.a(getActivity());
        b = com.etermax.gamescommon.social.g.a(getActivity());
        c = com.etermax.gamescommon.login.datasource.b.a(getActivity());
    }

    public static h e()
    {
        return new h();
    }

    public void a(a a1)
    {
        g = (ImageView)a1.findViewById(0x7f0a0166);
        View view = a1.findViewById(0x7f0a0150);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view2)
                {
                    a.d();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0162);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        loadProducts();
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
        c c1 = c.a(h);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        i = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (i == null)
        {
            i = layoutinflater.inflate(0x7f030064, viewgroup, false);
        }
        return i;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        h.a(this);
    }
}
