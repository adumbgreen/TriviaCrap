// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard;

import android.widget.ViewSwitcher;
import com.b.a.f;

// Referenced classes of package com.etermax.gamescommon.dashboard:
//            b

class b
    implements f
{

    final ViewSwitcher a;
    final String b;
    final b c;

    public void a()
    {
        a.setDisplayedChild(0);
    }

    public void b()
    {
        c.a(a, b);
    }

    (b b1, ViewSwitcher viewswitcher, String s)
    {
        c = b1;
        a = viewswitcher;
        b = s;
        super();
    }
}
