// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu;

import android.os.Handler;
import com.etermax.gamescommon.menu.navigation.b;
import com.etermax.gamescommon.menu.navigation.c;
import com.etermax.gamescommon.menu.navigation.f;

// Referenced classes of package com.etermax.gamescommon.menu:
//            c, a

class a
    implements Runnable
{

    final c a;
    final tion.c b;

    public void run()
    {
        switch (a[a.c().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            b.b.e();
            return;

        case 2: // '\002'
            b.b.c();
            return;

        case 3: // '\003'
            b.b.b();
            return;

        case 4: // '\004'
            b.b.d();
            return;

        case 6: // '\006'
            b.b.f();
            return;

        case 7: // '\007'
            b.b.i_();
            return;

        case 5: // '\005'
            b.b.i();
            return;

        case 8: // '\b'
            b.b.j();
            return;

        case 9: // '\t'
            b.b.h();
            return;

        case 10: // '\n'
            b.b.k();
            return;

        case 11: // '\013'
            b.b.l();
            break;
        }
    }

    tion.c(tion.c c1, c c2)
    {
        b = c1;
        a = c2;
        super();
    }

    // Unreferenced inner class com/etermax/gamescommon/menu/a$3

/* anonymous class */
    class a._cls3
        implements b
    {

        final com.etermax.gamescommon.menu.c a;
        final a b;

        public boolean a(c c1)
        {
            ((com.etermax.tools.navigation.f)b.a).g();
            b.h.postDelayed(new a._cls3._cls1(this, c1), 300L);
            return false;
        }

            
            {
                b = a1;
                a = c1;
                super();
            }
    }

}
