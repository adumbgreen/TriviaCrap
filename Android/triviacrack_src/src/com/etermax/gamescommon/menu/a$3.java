// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu;

import android.os.Handler;
import com.etermax.gamescommon.menu.navigation.b;
import com.etermax.gamescommon.menu.navigation.c;
import com.etermax.tools.navigation.f;

// Referenced classes of package com.etermax.gamescommon.menu:
//            a, c

class a
    implements b
{

    final com.etermax.gamescommon.menu.c a;
    final a b;

    public boolean a(c c)
    {
        ((f)b.a).g();
        b.h.postDelayed(new Runnable(c) {

            final c a;
            final a._cls3 b;

            public void run()
            {
                switch (a._cls4.a[a.c().ordinal()])
                {
                default:
                    return;

                case 1: // '\001'
                    b.a.e();
                    return;

                case 2: // '\002'
                    b.a.c();
                    return;

                case 3: // '\003'
                    b.a.b();
                    return;

                case 4: // '\004'
                    b.a.d();
                    return;

                case 6: // '\006'
                    b.a.f();
                    return;

                case 7: // '\007'
                    b.a.i_();
                    return;

                case 5: // '\005'
                    b.a.i();
                    return;

                case 8: // '\b'
                    b.a.j();
                    return;

                case 9: // '\t'
                    b.a.h();
                    return;

                case 10: // '\n'
                    b.a.k();
                    return;

                case 11: // '\013'
                    b.a.l();
                    break;
                }
            }

            
            {
                b = a._cls3.this;
                a = c1;
                super();
            }
        }, 300L);
        return false;
    }

    _cls1.a(a a1, com.etermax.gamescommon.menu.c c)
    {
        b = a1;
        a = c;
        super();
    }
}
