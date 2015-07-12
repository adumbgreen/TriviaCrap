// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            g, h

class a
    implements android.view..OnClickListener
{

    final g a;

    public void onClick(View view)
    {
        ((h)g.c(a)).onHelpSectionClicked(view);
    }

    r(g g1)
    {
        a = g1;
        super();
    }
}
