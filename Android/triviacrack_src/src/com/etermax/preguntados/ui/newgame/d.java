// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.gamescommon.view.FlagsLayout;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.ui.widget.ManualCustomLinearButton;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            b

public final class d extends com.etermax.preguntados.ui.newgame.b
    implements a, b
{

    private final c n = new c();
    private View o;

    public d()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        d = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        c = e.a(getActivity());
    }

    public void a(a a1)
    {
        b = (FlagsLayout)a1.findViewById(0x7f0a0352);
        g = a1.findViewById(0x7f0a0348);
        f = a1.findViewById(0x7f0a0343);
        j = (ManualCustomLinearButton)a1.findViewById(0x7f0a0340);
        k = (ManualCustomLinearButton)a1.findViewById(0x7f0a0342);
        m = (ManualCustomLinearButton)a1.findViewById(0x7f0a0349);
        e = a1.findViewById(0x7f0a0341);
        h = a1.findViewById(0x7f0a034a);
        l = (ManualCustomLinearButton)a1.findViewById(0x7f0a0347);
        i = (TextView)a1.findViewById(0x7f0a0344);
        View view = a1.findViewById(0x7f0a0349);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.d();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0347);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.e();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0349);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.d();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a034c);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.j();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view4 = a1.findViewById(0x7f0a0347);
        if (view4 != null)
        {
            view4.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.e();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view5 = a1.findViewById(0x7f0a0340);
        if (view5 != null)
        {
            view5.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.i();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view6 = a1.findViewById(0x7f0a0342);
        if (view6 != null)
        {
            view6.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.h();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int i)
    {
        if (o == null)
        {
            return null;
        } else
        {
            return o.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(n);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        o = super.onCreateView(layoutinflater, viewgroup, bundle);
        return o;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        n.a(this);
    }
}
