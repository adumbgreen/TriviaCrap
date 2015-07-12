// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.ui.game.duelmode.g;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            b, e

public final class d extends com.etermax.preguntados.ui.newgame.duelmode.b
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
        a = com.etermax.gamescommon.login.datasource.b.a(getActivity());
    }

    public static e d()
    {
        return new e();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mDuelName"))
            {
                b = bundle.getString("mDuelName");
            }
            if (bundle.containsKey("mTheme"))
            {
                c = (g)bundle.getSerializable("mTheme");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0331);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view1)
                {
                    a.c();
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
