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
//            e

class b
    implements android.view.TreeObserver.OnGlobalLayoutListener
{

    final ViewTreeObserver a;
    final View b;
    final e c;

    public void onGlobalLayout()
    {
        if (android.os.d.VERSION.SDK_INT < 16)
        {
            a.removeGlobalOnLayoutListener(this);
        } else
        {
            a.removeOnGlobalLayoutListener(this);
        }
        e.b(c, new a(c.getActivity(), b));
        e.b(c).a();
        e.b(c).a(c.getResources().getString(o.tutotial_tooltip_challenge));
        e.b(c).a(1, 20, false, false, false);
    }

    istener(e e1, ViewTreeObserver viewtreeobserver, View view)
    {
        c = e1;
        a = viewtreeobserver;
        b = view;
        super();
    }
}
