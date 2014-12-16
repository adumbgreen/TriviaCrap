// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.a.c;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.dashboard.a.c:
//            a, c

class e
    implements android.view.View.OnClickListener
{

    final a a;
    private Long b;

    public e(a a1, Long long1)
    {
        a = a1;
        super();
        b = long1;
    }

    public void onClick(View view)
    {
        if (com.etermax.gamescommon.dashboard.a.c.a.b(a) != null)
        {
            com.etermax.gamescommon.dashboard.a.c.a.b(a).a(b);
        }
    }
}
