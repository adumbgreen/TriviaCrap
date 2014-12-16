// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.view.View;
import android.widget.AdapterView;
import com.etermax.gamescommon.menu.a.a.a;
import com.etermax.gamescommon.menu.a.a.e;
import com.etermax.gamescommon.menu.a.a.g;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            a, l, b, o

class a
    implements android.widget.terView.OnItemClickListener
{

    final com.etermax.gamescommon.menu.a.a a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        a a1 = (a)a(a).getItem(i);
        a(a, a1);
        if (!com.etermax.gamescommon.menu.a.a.b(a).a(a1))
        {
            e e1;
            switch (b[a1.a().ordinal()])
            {
            default:
                return;

            case 1: // '\001'
                e1 = (e)a1;
                break;
            }
            if (!e1.c())
            {
                e1.a(true);
                if (view instanceof com.etermax.gamescommon.menu.a.b.g)
                {
                    ((com.etermax.gamescommon.menu.a.b.g)view).c();
                }
                switch (com.etermax.gamescommon.menu.a.a[e1.b().ordinal()])
                {
                default:
                    return;

                case 1: // '\001'
                    com.etermax.gamescommon.menu.a.a.c(a);
                    com.etermax.gamescommon.menu.a.a.d(a);
                    return;

                case 2: // '\002'
                    e(a);
                    com.etermax.gamescommon.menu.a.a.f(a);
                    return;

                case 3: // '\003'
                    g(a);
                    break;
                }
                com.etermax.gamescommon.menu.a.a.h(a);
                return;
            }
        }
    }

    ickListener(com.etermax.gamescommon.menu.a.a a1)
    {
        a = a1;
        super();
    }
}
