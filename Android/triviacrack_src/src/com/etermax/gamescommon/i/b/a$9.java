// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.view.View;
import android.widget.Spinner;
import com.etermax.tools.widget.CustomFontTextView;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a

class a
    implements android.view..OnClickListener
{

    final a a;

    public void onClick(View view)
    {
        com.etermax.gamescommon.i.b.a.k(a).setVisibility(4);
        if (com.etermax.gamescommon.i.b.a.i(a).getVisibility() == 4)
        {
            com.etermax.gamescommon.i.b.a.i(a).setVisibility(0);
            com.etermax.gamescommon.i.b.a.i(a).performClick();
            if (!a.j)
            {
                com.etermax.gamescommon.i.b.a.j(a).setVisibility(0);
                com.etermax.gamescommon.i.b.a.a(a, true);
            }
            a.j = false;
        }
    }

    ontTextView(a a1)
    {
        a = a1;
        super();
    }
}
