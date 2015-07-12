// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewTreeObserver;
import com.etermax.gamescommon.k.a;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            a

class b
    implements android.view.TreeObserver.OnGlobalLayoutListener
{

    final ViewTreeObserver a;
    final View b;
    final com.etermax.preguntados.ui.game.category.a c;

    public void onGlobalLayout()
    {
        if (android.os.d.VERSION.SDK_INT < 16)
        {
            a.removeGlobalOnLayoutListener(this);
        } else
        {
            a.removeOnGlobalLayoutListener(this);
        }
        c.j = new a(c.getActivity(), b);
        c.j.a();
        c.j.a(c.getResources().getString(o.tutotial_tooltip_spin));
        c.j.a(0, -20, false, false, false);
    }

    istener(com.etermax.preguntados.ui.game.category.a a1, ViewTreeObserver viewtreeobserver, View view)
    {
        c = a1;
        a = viewtreeobserver;
        b = view;
        super();
    }
}
