// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.widget.CustomFontTextView;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.newgame.b:
//            a, d

public final class c extends com.etermax.preguntados.ui.newgame.b.a
    implements a, b
{

    private final org.a.a.b.c e = new org.a.a.b.c();
    private View f;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        d();
    }

    public static d c()
    {
        return new d();
    }

    private void d()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mGameDTO"))
        {
            a = (GameDTO)bundle.getSerializable("mGameDTO");
        }
    }

    public void a(a a1)
    {
        b = (GridView)a1.findViewById(0x7f0a010d);
        d = (CustomFontTextView)a1.findViewById(0x7f0a010c);
        c = (CustomFontTextView)a1.findViewById(0x7f0a010b);
        View view = a1.findViewById(0x7f0a0108);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view1)
                {
                    a.a(view1);
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int i)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(e);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        f = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (f == null)
        {
            f = layoutinflater.inflate(0x7f030052, viewgroup, false);
        }
        return f;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        e.a(this);
    }
}
