// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;

import android.os.Handler;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.g:
//            c, b, i, h, 
//            a

class d
    implements Runnable
{

    final boolean a;
    final List b;
    final Handler c;
    final h d;
    final c e;

    public void run()
    {
        i j = new i(0, "Inventory refresh successful.");
        a a2 = e.a(a, b);
        a a1 = a2;
_L2:
        e.b();
        c.post(new Runnable(j, a1) {

            final i a;
            final a b;
            final c._cls2 c;

            public void run()
            {
                c.d.a(a, b);
            }

            
            {
                c = c._cls2.this;
                a = j;
                b = a1;
                super();
            }
        });
        return;
        b b1;
        b1;
        j = b1.a();
        a1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    _cls1.b(c c1, boolean flag, List list, Handler handler, h h)
    {
        e = c1;
        a = flag;
        b = list;
        c = handler;
        d = h;
        super();
    }
}
