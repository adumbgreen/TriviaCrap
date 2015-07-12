// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            f, i

public final class h extends f
    implements a, b
{

    private final c a = new c();
    private View b;

    public h()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
    }

    public static i f()
    {
        return new i();
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a044a);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final h a;

                public void onClick(View view3)
                {
                    a.e();
                }

            
            {
                a = h.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a044f);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final h a;

                public void onClick(View view3)
                {
                    a.c();
                }

            
            {
                a = h.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0449);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final h a;

                public void onClick(View view3)
                {
                    a.d();
                }

            
            {
                a = h.this;
                super();
            }
            });
        }
    }

    public View findViewById(int j)
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.findViewById(j);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(a);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = super.onCreateView(layoutinflater, viewgroup, bundle);
        return b;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        a.a(this);
    }
}
