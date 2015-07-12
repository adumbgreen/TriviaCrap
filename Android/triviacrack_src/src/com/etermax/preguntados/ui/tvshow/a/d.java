// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow.a;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.tvshow.a:
//            a, e

public final class d extends com.etermax.preguntados.ui.tvshow.a.a
    implements a, b
{

    private final c s = new c();
    private View t;

    public d()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        a = e.a(getActivity());
        b = com.etermax.gamescommon.login.datasource.b.a(getActivity());
    }

    public static com.etermax.preguntados.ui.tvshow.a.e d()
    {
        return new com.etermax.preguntados.ui.tvshow.a.e();
    }

    public void a(a a1)
    {
        r = (TextView)a1.findViewById(0x7f0a0458);
        e = (EditText)a1.findViewById(0x7f0a0454);
        d = (EditText)a1.findViewById(0x7f0a0453);
        f = (EditText)a1.findViewById(0x7f0a045f);
        n = (EditText)a1.findViewById(0x7f0a0464);
        m = (EditText)a1.findViewById(0x7f0a0463);
        l = (EditText)a1.findViewById(0x7f0a0456);
        h = (EditText)a1.findViewById(0x7f0a045b);
        p = (EditText)a1.findViewById(0x7f0a045d);
        c = (EditText)a1.findViewById(0x7f0a0452);
        i = (EditText)a1.findViewById(0x7f0a0457);
        g = (EditText)a1.findViewById(0x7f0a0461);
        q = (ToggleButton)a1.findViewById(0x7f0a0459);
        j = (EditText)a1.findViewById(0x7f0a0455);
        k = (ToggleButton)a1.findViewById(0x7f0a0466);
        o = (TextView)a1.findViewById(0x7f0a0465);
        View view = a1.findViewById(0x7f0a045a);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.a(view7);
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a045b);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.a(view7);
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0451);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.c(view7);
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0467);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.c(view7);
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view4 = a1.findViewById(0x7f0a0465);
        if (view4 != null)
        {
            view4.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.d(view7);
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view5 = a1.findViewById(0x7f0a0460);
        if (view5 != null)
        {
            view5.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.b(view7);
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view6 = a1.findViewById(0x7f0a045c);
        if (view6 != null)
        {
            view6.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view7)
                {
                    a.e(view7);
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        TextView textview = (TextView)a1.findViewById(0x7f0a045b);
        if (textview != null)
        {
            textview.addTextChangedListener(new TextWatcher(textview) {

                final TextView a;
                final d b;

                public void afterTextChanged(Editable editable)
                {
                    b.a(a);
                }

                public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

                public void onTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

            
            {
                b = d.this;
                a = textview;
                super();
            }
            });
        }
        c();
    }

    public View findViewById(int i)
    {
        if (t == null)
        {
            return null;
        } else
        {
            return t.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(s);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        t = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (t == null)
        {
            t = layoutinflater.inflate(0x7f030114, viewgroup, false);
        }
        return t;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        s.a(this);
    }
}
