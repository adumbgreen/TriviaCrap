// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.e;
import java.util.ArrayList;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            e, i

public final class h extends com.etermax.preguntados.ui.questionsfactory.suggestquestion.e
    implements a, b
{

    private final c d = new c();
    private View e;

    public h()
    {
    }

    private void a(Bundle bundle)
    {
        a = com.etermax.preguntados.c.a.c.a(getActivity());
        b = com.etermax.preguntados.datasource.e.a(getActivity());
        b(bundle);
        c.a(this);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            c = (ArrayList)bundle.getSerializable("mCategories");
            return;
        }
    }

    public static i d()
    {
        return new i();
    }

    public void a(a a1)
    {
        c();
    }

    public View findViewById(int j)
    {
        if (e == null)
        {
            return null;
        } else
        {
            return e.findViewById(j);
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

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("mCategories", c);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        d.a(this);
    }
}
