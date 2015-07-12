// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.e;
import java.util.ArrayList;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            j, s, m

public final class l extends j
    implements a, b
{

    private final c f = new c();
    private View g;

    public l()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        f();
        a = com.etermax.preguntados.datasource.e.a(getActivity());
        b = com.etermax.preguntados.ui.newgame.duelmode.s.a(getActivity());
        b();
    }

    public static m e()
    {
        return new m();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mDuelName"))
            {
                c = bundle.getString("mDuelName");
            }
            if (bundle.containsKey("mAddedPlayers"))
            {
                e = (ArrayList)bundle.getSerializable("mAddedPlayers");
            }
            if (bundle.containsKey("mFriends"))
            {
                d = (ArrayList)bundle.getSerializable("mFriends");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0331);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view1)
                {
                    a.d();
                }

            
            {
                a = l.this;
                super();
            }
            });
        }
        c();
    }

    public View findViewById(int i)
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(f);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = super.onCreateView(layoutinflater, viewgroup, bundle);
        return g;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
