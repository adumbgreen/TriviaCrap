// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.help;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.help:
//            a

public final class c extends com.etermax.preguntados.ui.help.a
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

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a02c7);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view8)
                {
                    a.d();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a02c8);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view8)
                {
                    a.e();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a02cc);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view8)
                {
                    a.i();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a02cb);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view8)
                {
                    a.h();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view4 = a1.findViewById(0x7f0a02c9);
        if (view4 != null)
        {
            view4.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view8)
                {
                    a.f();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view5 = a1.findViewById(0x7f0a02c6);
        if (view5 != null)
        {
            view5.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view8)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view6 = a1.findViewById(0x7f0a02cd);
        if (view6 != null)
        {
            view6.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view8)
                {
                    a.j();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view7 = a1.findViewById(0x7f0a02ca);
        if (view7 != null)
        {
            view7.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view8)
                {
                    a.g();
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
