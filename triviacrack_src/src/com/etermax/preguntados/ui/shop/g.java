// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            e, h

public final class g extends com.etermax.preguntados.ui.shop.e
    implements a, b
{

    private final c b = new c();
    private View c;

    public g()
    {
    }

    private void a(Bundle bundle)
    {
        a = e.a(getActivity());
        org.a.a.b.c.a(this);
    }

    public static h d()
    {
        return new h();
    }

    public void a(a a1)
    {
        c();
    }

    public View findViewById(int i)
    {
        if (c == null)
        {
            return null;
        } else
        {
            return c.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(b);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        c = super.onCreateView(layoutinflater, viewgroup, bundle);
        return c;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        b.a(this);
    }
}
