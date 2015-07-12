// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory:
//            a, d

public final class c extends com.etermax.preguntados.ui.questionsfactory.a
    implements a, b
{

    private final org.a.a.b.c a = new org.a.a.b.c();
    private View b;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
    }

    public static d g()
    {
        return new d();
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0418);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a041a);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.e();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a041b);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.f();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0419);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.d();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
    }

    public View findViewById(int i)
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(a);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
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
