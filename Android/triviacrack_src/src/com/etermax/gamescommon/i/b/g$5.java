// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.text.TextUtils;
import android.view.View;
import com.etermax.gamescommon.login.datasource.a;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            g, h, i, l

class a
    implements android.view..OnClickListener
{

    final g a;

    public void onClick(View view)
    {
        g.f(a);
        ((h)g.g(a)).a(1);
        ((h)g.h(a)).b();
        if (a.a.r())
        {
            com.etermax.gamescommon.i.b.i.a(a.getActivity(), (h)g.i(a), a.b, a.d, a.a, a.h).a(a.getFragmentManager());
            return;
        }
        if (a.a.h() || !TextUtils.isEmpty(a.a.j()))
        {
            a.a();
            return;
        } else
        {
            com.etermax.gamescommon.i.b.l.a(a.getActivity(), (h)g.j(a), a.g).a(a.getFragmentManager());
            return;
        }
    }

    tasource.a(g g1)
    {
        a = g1;
        super();
    }
}
