// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.etermax.preguntados.datasource.dto.RanksDTO;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            i, l

public final class k extends i
    implements a, b
{

    private final c f = new c();
    private View g;

    public k()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        f();
        c();
    }

    public static l e()
    {
        return new l();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mRanksDTO"))
            {
                a = (RanksDTO)bundle.getSerializable("mRanksDTO");
            }
            if (bundle.containsKey("mRankingType"))
            {
                b = bundle.getInt("mRankingType");
            }
        }
    }

    public void a(a a1)
    {
        c = (ListView)a1.findViewById(0x7f0a0434);
        d();
    }

    public View findViewById(int j)
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.findViewById(j);
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
        if (g == null)
        {
            g = layoutinflater.inflate(0x7f03010d, viewgroup, false);
        }
        return g;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
