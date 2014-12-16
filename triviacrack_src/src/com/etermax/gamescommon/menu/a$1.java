// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu;

import android.os.Handler;
import com.etermax.gamescommon.datasource.dto.ChatHeaderDTO;
import com.etermax.gamescommon.menu.a.a.a;
import com.etermax.gamescommon.menu.a.a.g;
import com.etermax.gamescommon.menu.a.a.h;
import com.etermax.gamescommon.menu.a.b;
import com.etermax.tools.navigation.f;

// Referenced classes of package com.etermax.gamescommon.menu:
//            a, b

class a
    implements b
{

    final com.etermax.gamescommon.menu.b a;
    final com.etermax.gamescommon.menu.a b;

    public boolean a(a a1)
    {
        if (a1.a() != g.e)
        {
            ((f)b.a).g();
        }
        b.h.postDelayed(new Runnable(a1) {

            final a a;
            final a._cls1 b;

            public void run()
            {
                h h1;
                switch (com.etermax.gamescommon.menu.a._cls4.b[a.a().ordinal()])
                {
                default:
                    return;

                case 1: // '\001'
                    com.etermax.gamescommon.menu.a.a.b b1 = (com.etermax.gamescommon.menu.a.a.b)a;
                    b.a.a(b1.c().getUser());
                    return;

                case 2: // '\002'
                    h1 = (h)a;
                    break;
                }
                b.a.c(h1.c());
            }

            
            {
                b = a._cls1.this;
                a = a1;
                super();
            }
        }, 250L);
        return false;
    }

    _cls1.a(com.etermax.gamescommon.menu.a a1, com.etermax.gamescommon.menu.b b1)
    {
        b = a1;
        a = b1;
        super();
    }
}
