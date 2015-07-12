// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.social.j;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.d:
//            h

public final class k extends h
    implements a
{

    private final c p = new c();
    private View q;

    public k()
    {
    }

    private void a(Bundle bundle)
    {
        b = i.a(getActivity());
        a = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        d = j.a(getActivity());
        c = com.etermax.tools.social.a.j.a(getActivity());
        e = d.c(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            h = (GiftsDTO)bundle.getSerializable("mInbox");
            return;
        }
    }

    public View findViewById(int l)
    {
        if (q == null)
        {
            return null;
        } else
        {
            return q.findViewById(l);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(p);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        q = super.onCreateView(layoutinflater, viewgroup, bundle);
        return q;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("mInbox", h);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        p.a(this);
    }
}
