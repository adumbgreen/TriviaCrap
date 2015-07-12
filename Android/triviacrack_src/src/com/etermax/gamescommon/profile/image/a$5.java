// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.image;

import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.j.c;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.tools.social.a.b;

// Referenced classes of package com.etermax.gamescommon.profile.image:
//            a, c

class  extends c
{

    final com.etermax.gamescommon.profile.image.a a;

    protected void a(FragmentActivity fragmentactivity)
    {
        super.a(fragmentactivity);
        a.e.c(true);
        if (com.etermax.gamescommon.profile.image.a.b(a) != null)
        {
            com.etermax.gamescommon.profile.image.a.b(a).a(null);
        }
    }

    protected void b()
    {
        super.b();
        a.e.c(true);
        if (com.etermax.gamescommon.profile.image.a.b(a) != null)
        {
            com.etermax.gamescommon.profile.image.a.b(a).a(null);
        }
    }

    (com.etermax.gamescommon.profile.image.a a1, String s, b b1, com.etermax.gamescommon.login.datasource.c c1, a a2, com.etermax.tools.f.a a3, String s1)
    {
        a = a1;
        super(s, b1, c1, a2, a3, s1);
    }
}
