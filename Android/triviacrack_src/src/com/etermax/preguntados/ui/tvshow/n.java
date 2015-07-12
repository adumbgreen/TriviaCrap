// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.ui.widget.PreguntadosLoading;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            l, o

public final class n extends l
    implements a, b
{

    private final c c = new c();
    private View d;

    public n()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
    }

    public static o d()
    {
        return new o();
    }

    public void a(a a1)
    {
        a = a1.findViewById(0x7f0a03f7);
        b = (PreguntadosLoading)a1.findViewById(0x7f0a054e);
        c();
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
        if (d == null)
        {
            d = layoutinflater.inflate(0x7f030142, viewgroup, false);
        }
        return d;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        c.a(this);
    }
}
