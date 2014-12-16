// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            m, p

public final class o extends m
    implements a, b
{

    private final c e = new c();
    private View f;

    public o()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        f();
    }

    public static p e()
    {
        return new p();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("userRankDTO"))
        {
            a = (UserRankDTO)bundle.getSerializable("userRankDTO");
        }
    }

    public void a(a a1)
    {
        b = (TextView)a1.findViewById(0x7f0a04b9);
        c = (TextView)a1.findViewById(0x7f0a04b7);
        d = (ImageView)a1.findViewById(0x7f0a056a);
        View view = a1.findViewById(0x7f0a0567);
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
        View view1 = a1.findViewById(0x7f0a0568);
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
        b();
    }

    public View findViewById(int i)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(e);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        f = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (f == null)
        {
            f = layoutinflater.inflate(0x7f03014c, viewgroup, false);
        }
        return f;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        e.a(this);
    }
}
