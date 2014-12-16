// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.ui.d.j;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            e, h

public final class g extends e
    implements a, b
{

    private final c g = new c();
    private View h;

    public g()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        f();
        c = d.c(getActivity());
        d = com.etermax.preguntados.g.b.a(getActivity());
        e = j.g(getActivity());
    }

    public static h e()
    {
        return new h();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mGameDTO"))
            {
                a = (GameDTO)bundle.getSerializable("mGameDTO");
            }
            if (bundle.containsKey("mExtraShots"))
            {
                b = bundle.getInt("mExtraShots");
            }
        }
    }

    public void a(a a1)
    {
        f = (ImageView)a1.findViewById(0x7f0a01f6);
        View view = a1.findViewById(0x7f0a01ef);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a01f0);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view2)
                {
                    a.d();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        a();
    }

    public View findViewById(int i)
    {
        if (h == null)
        {
            return null;
        } else
        {
            return h.findViewById(i);
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
            h = layoutinflater.inflate(0x7f030093, viewgroup, false);
        }
        return h;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        g.a(this);
    }
}
