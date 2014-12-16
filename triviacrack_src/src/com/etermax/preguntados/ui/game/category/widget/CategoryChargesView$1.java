// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.widget;

import android.os.Handler;

// Referenced classes of package com.etermax.preguntados.ui.game.category.widget:
//            CategoryChargesView, a

class a
    implements Runnable
{

    final CategoryChargesView a;

    public void run()
    {
        if (CategoryChargesView.a(a) < CategoryChargesView.b(a))
        {
            CategoryChargesView.a(a, CategoryChargesView.c(a));
            a.invalidate();
            CategoryChargesView.e(a).postDelayed(CategoryChargesView.d(a), 15L);
            return;
        } else
        {
            CategoryChargesView.g(a).a(CategoryChargesView.f(a));
            return;
        }
    }

    (CategoryChargesView categorychargesview)
    {
        a = categorychargesview;
        super();
    }
}
