// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.c;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.promotion.PromotionsManager_;
import com.etermax.gamescommon.shop.d;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.c:
//            b, d

public final class c extends com.etermax.preguntados.ui.c.b
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
        mCommonDataSource = i.a(getActivity());
        mAppUtils = com.etermax.tools.j.c.a(getActivity());
        mPromotionsManager = PromotionsManager_.getInstance_(getActivity());
        mShopManager = com.etermax.gamescommon.shop.d.b(getActivity());
    }

    public static com.etermax.preguntados.ui.c.d c()
    {
        return new com.etermax.preguntados.ui.c.d();
    }

    public void a(a a1)
    {
        c = (TextView)a1.findViewById(0x7f0a03d9);
        a = (Button)a1.findViewById(0x7f0a03de);
        b = (Button)a1.findViewById(0x7f0a03e2);
        View view = a1.findViewById(0x7f0a03d5);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view1)
                {
                    a.b();
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
        if (e == null)
        {
            return null;
        } else
        {
            return e.findViewById(j);
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
