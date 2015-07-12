// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            k, m

public final class l extends k
    implements a, b
{

    private final c f = new c();
    private View g;

    public l()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        d();
        d = com.etermax.preguntados.b.b.a(getActivity());
        e = com.etermax.preguntados.c.a.c.a(getActivity());
    }

    public static m c()
    {
        return new m();
    }

    private void d()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mSelectedCrown"))
        {
            a = (QuestionCategory)bundle.getSerializable("mSelectedCrown");
        }
    }

    public void a(a a1)
    {
        b = (ImageView)a1.findViewById(0x7f0a01ed);
        c = (RelativeLayout)a1.findViewById(0x7f0a01ec);
        View view = a1.findViewById(0x7f0a0540);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view1)
                {
                    a.b();
                }

            
            {
                a = l.this;
                super();
            }
            });
        }
        a();
    }

    public View findViewById(int i)
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(f);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (g == null)
        {
            g = layoutinflater.inflate(0x7f03013f, viewgroup, false);
        }
        return g;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
