// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.etermax.gamescommon.social.c;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            e

class a
    implements c
{

    final e a;

    public void a()
    {
        e.b(a);
    }

    public void b()
    {
        Toast.makeText(com.etermax.preguntados.ui.rankings.e.c(a), a.getString(o.facebook_link_failed), 1).show();
    }

    public void c()
    {
        a.getActivity().finish();
    }

    (e e1)
    {
        a = e1;
        super();
    }
}
