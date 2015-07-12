// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.GameDTO;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.category.a:
//            e, h

public final class g extends e
    implements a, b
{

    private final c c = new c();
    private View d;

    public g()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        e();
    }

    public static h d()
    {
        return new h();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mGameDTO"))
        {
            a = (GameDTO)bundle.getSerializable("mGameDTO");
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a024e);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view1)
                {
                    a.c();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int i)
    {
        if (d == null)
        {
            return null;
        } else
        {
            return d.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(c);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        d = super.onCreateView(layoutinflater, viewgroup, bundle);
        return d;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        c.a(this);
    }
}
