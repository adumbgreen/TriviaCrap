// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.ViewSwitcher;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            g, m, j

public final class i extends g
    implements a, b
{

    private final c i = new c();
    private View j;

    public i()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        a = com.etermax.gamescommon.datasource.i.a(getActivity());
        b = com.etermax.gamescommon.achievements.ui.m.a(getActivity());
    }

    public static j f()
    {
        return new j();
    }

    public void a(a a1)
    {
        e = (GridView)a1.findViewById(0x7f0a007b);
        d = (ViewSwitcher)a1.findViewById(0x7f0a0075);
        f = (ViewSwitcher)a1.findViewById(0x7f0a0079);
        c = (ListView)a1.findViewById(0x7f0a007a);
        View view = a1.findViewById(0x7f0a0077);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final i a;

                public void onClick(View view2)
                {
                    a.e();
                }

            
            {
                a = i.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0076);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final i a;

                public void onClick(View view2)
                {
                    a.d();
                }

            
            {
                a = i.this;
                super();
            }
            });
        }
        c();
    }

    public View findViewById(int k)
    {
        if (j == null)
        {
            return null;
        } else
        {
            return j.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(i);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        j = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (j == null)
        {
            j = layoutinflater.inflate(0x7f03001b, viewgroup, false);
        }
        return j;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        i.a(this);
    }
}
