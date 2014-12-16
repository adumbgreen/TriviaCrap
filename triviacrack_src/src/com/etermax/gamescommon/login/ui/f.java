// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ToggleButton;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.tools.a.a.k;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            d

public final class f extends com.etermax.gamescommon.login.ui.d
    implements a, b
{

    private final c g = new c();
    private View h;

    public f()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        b = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        c = k.a(getActivity());
        a = d.b(getActivity());
        d = i.a(getActivity());
        e = com.etermax.gamescommon.datasource.k.a(getActivity());
    }

    public void a(a a1)
    {
        f = (ToggleButton)a1.findViewById(0x7f0a0316);
        View view = a1.findViewById(0x7f0a030e);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.f();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0317);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.c(view10);
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a030d);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.e();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0318);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.a(view10);
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view4 = a1.findViewById(0x7f0a0315);
        if (view4 != null)
        {
            view4.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.b(view10);
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view5 = a1.findViewById(0x7f0a0310);
        if (view5 != null)
        {
            view5.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.h();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view6 = a1.findViewById(0x7f0a0314);
        if (view6 != null)
        {
            view6.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.j();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view7 = a1.findViewById(0x7f0a030c);
        if (view7 != null)
        {
            view7.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.d();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view8 = a1.findViewById(0x7f0a0311);
        if (view8 != null)
        {
            view8.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.i();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        View view9 = a1.findViewById(0x7f0a030f);
        if (view9 != null)
        {
            view9.setOnClickListener(new android.view.View.OnClickListener() {

                final f a;

                public void onClick(View view10)
                {
                    a.g();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        CompoundButton compoundbutton = (CompoundButton)a1.findViewById(0x7f0a0316);
        if (compoundbutton != null)
        {
            compoundbutton.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

                final f a;

                public void onCheckedChanged(CompoundButton compoundbutton1, boolean flag)
                {
                    a.a(compoundbutton1, flag);
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
        a();
    }

    public View findViewById(int j)
    {
        if (h == null)
        {
            return null;
        } else
        {
            return h.findViewById(j);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(g);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        h = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (h == null)
        {
            h = layoutinflater.inflate(0x7f0300c6, viewgroup, false);
        }
        return h;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        g.a(this);
    }
}
