// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.view.View;
import android.widget.ToggleButton;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            g, m

class a
    implements android.view..OnClickListener
{

    final ToggleButton a;
    final g b;

    public void onClick(View view)
    {
        (new m(b, a)).a(b);
    }

    r(g g1, ToggleButton togglebutton)
    {
        b = g1;
        a = togglebutton;
        super();
    }
}
