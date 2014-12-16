// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.view:
//            FlagsLayout, d

class a
    implements android.view.stener
{

    final FlagsLayout a;

    public void onClick(View view)
    {
        if (a.c != null)
        {
            a.c.c();
            a.c = null;
        }
        a.c = new d(FlagsLayout.a(a), view, a, FlagsLayout.b(a));
        a.c.b();
    }

    (FlagsLayout flagslayout)
    {
        a = flagslayout;
        super();
    }
}
