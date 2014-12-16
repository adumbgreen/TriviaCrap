// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.e;
import com.etermax.tools.nationality.Nationality;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.b:
//            b, e

public final class d extends com.etermax.preguntados.ui.dashboard.b.b
    implements a, b
{

    private final c d = new c();
    private View e;

    public d()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        e();
        b = com.etermax.gamescommon.login.datasource.d.b(getActivity());
        a = com.etermax.preguntados.datasource.e.a(getActivity());
    }

    public static com.etermax.preguntados.ui.dashboard.b.e d()
    {
        return new com.etermax.preguntados.ui.dashboard.b.e();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mSelectedCountry"))
        {
            c = (Nationality)bundle.getSerializable("mSelectedCountry");
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a017f);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view2)
                {
                    a.b();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a017d);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = d.this;
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
        c c1 = c.a(d);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
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
