// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.withoutcoins;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.shop.d;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.withoutcoins:
//            a, f

public final class e extends com.etermax.preguntados.ui.withoutcoins.a
    implements a, b
{

    private final c f = new c();
    private View g;

    public e()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        mAppUtils = com.etermax.tools.j.c.a(getActivity());
        mShopManager = com.etermax.gamescommon.shop.d.b(getActivity());
        mCommonDataSource = i.a(getActivity());
        a = com.etermax.preguntados.datasource.e.a(getActivity());
        b = com.etermax.tools.f.d.c(getActivity());
    }

    public static f d()
    {
        return new f();
    }

    public void a(a a1)
    {
        c = (LinearLayout)a1.findViewById(0x7f0a056c);
        View view = a1.findViewById(0x7f0a056d);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final e a;

                public void onClick(View view1)
                {
                    a.c();
                }

            
            {
                a = e.this;
                super();
            }
            });
        }
        loadProducts();
    }

    public View findViewById(int j)
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.findViewById(j);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(f);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (g == null)
        {
            g = layoutinflater.inflate(0x7f03014d, viewgroup, false);
        }
        return g;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
