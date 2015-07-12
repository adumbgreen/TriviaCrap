// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            a, j, d

public final class c extends com.etermax.preguntados.ui.d.a
    implements a, b
{

    private final org.a.a.b.c j = new org.a.a.b.c();
    private View k;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        i();
        e = e.a(getActivity());
        d = com.etermax.preguntados.ui.d.j.g(getActivity());
    }

    public static d h()
    {
        return new d();
    }

    private void i()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mTipType"))
            {
                c = bundle.getInt("mTipType");
            }
            if (bundle.containsKey("mGame"))
            {
                b = (GameDTO)bundle.getSerializable("mGame");
            }
            if (bundle.containsKey("mToTypeQuestion"))
            {
                a = bundle.getInt("mToTypeQuestion");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a028f);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view5)
                {
                    a.e();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a028c);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view5)
                {
                    a.d();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0295);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view5)
                {
                    a.g();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0292);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view5)
                {
                    a.f();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view4 = a1.findViewById(0x7f0a0505);
        if (view4 != null)
        {
            view4.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view5)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int l)
    {
        if (k == null)
        {
            return null;
        } else
        {
            return k.findViewById(l);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(j);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        k = super.onCreateView(layoutinflater, viewgroup, bundle);
        return k;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        j.a(this);
    }
}
