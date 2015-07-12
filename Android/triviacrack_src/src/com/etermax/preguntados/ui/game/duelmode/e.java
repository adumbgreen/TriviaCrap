// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.GameDTO;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            c, f, g

public final class e extends com.etermax.preguntados.ui.game.duelmode.c
    implements a, b
{

    private final c e = new c();
    private View f;

    public e()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        i();
        b = com.etermax.preguntados.g.b.a(getActivity());
        a = com.etermax.gamescommon.login.datasource.b.a(getActivity());
    }

    public static f h()
    {
        return new f();
    }

    private void i()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mTheme"))
            {
                d = (g)bundle.getSerializable("mTheme");
            }
            if (bundle.containsKey("mGameDTO"))
            {
                c = (GameDTO)bundle.getSerializable("mGameDTO");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0196);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final e a;

                public void onClick(View view2)
                {
                    a.d();
                }

            
            {
                a = e.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0195);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final e a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = e.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int j)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.findViewById(j);
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
        return f;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        e.a(this);
    }
}
