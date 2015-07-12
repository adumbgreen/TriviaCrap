// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.shop.d;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            a, d

public final class c extends com.etermax.preguntados.ui.shop.a
    implements a, b
{

    private final org.a.a.b.c e = new org.a.a.b.c();
    private View f;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        c();
        mShopManager = d.b(getActivity());
        mCommonDataSource = i.a(getActivity());
        mAppUtils = com.etermax.tools.j.c.a(getActivity());
        c = com.etermax.preguntados.datasource.e.a(getActivity());
        d = com.etermax.tools.f.d.c(getActivity());
    }

    public static com.etermax.preguntados.ui.shop.d b()
    {
        return new com.etermax.preguntados.ui.shop.d();
    }

    private void c()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mCoins"))
            {
                a = bundle.getInt("mCoins");
            }
            if (bundle.containsKey("mExtraShots"))
            {
                b = bundle.getInt("mExtraShots");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a04c3);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view1)
                {
                    a.a();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        loadProducts();
    }

    public View findViewById(int j)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.findViewById(j);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(e);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        f = super.onCreateView(layoutinflater, viewgroup, bundle);
        return f;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        e.a(this);
    }
}
