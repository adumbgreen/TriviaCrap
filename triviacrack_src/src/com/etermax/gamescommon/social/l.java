// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.tools.social.twitter.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.social:
//            k

public final class l extends k
    implements a
{

    private final c e = new c();
    private View f;

    public l()
    {
    }

    private void a(Bundle bundle)
    {
        b = d.a(getActivity());
        c = b.a(getActivity());
        a = com.etermax.tools.b.c.a(getActivity());
        d = com.etermax.tools.f.d.c(getActivity());
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
