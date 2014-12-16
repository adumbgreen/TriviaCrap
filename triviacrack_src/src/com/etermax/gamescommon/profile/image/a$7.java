// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.image;

import android.support.v4.app.Fragment;
import com.etermax.gamescommon.datasource.e;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.profile.image:
//            a, c

class a extends a
{

    final com.etermax.gamescommon.profile.image.a a;

    public Object a()
    {
        return a.a.a(com.etermax.gamescommon.profile.image.a.c(a));
    }

    protected void a(Fragment fragment, Exception exception)
    {
        super.a(fragment, exception);
    }

    protected void a(Fragment fragment, String s)
    {
        super.a(fragment, s);
        if (com.etermax.gamescommon.profile.image.a.b(a) != null)
        {
            com.etermax.gamescommon.profile.image.a.b(a).a(s);
        }
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((Fragment)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((Fragment)obj, (String)obj1);
    }

    (com.etermax.gamescommon.profile.image.a a1, String s)
    {
        a = a1;
        super(s);
    }
}
