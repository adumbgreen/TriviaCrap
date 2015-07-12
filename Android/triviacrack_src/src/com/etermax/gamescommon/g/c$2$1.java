// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;

import android.os.Handler;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.g:
//            h, i, a, c, 
//            b

class b
    implements Runnable
{

    final i a;
    final a b;
    final b c;

    public void run()
    {
        c.c.a(a, b);
    }

    ( , i i, a a1)
    {
        c = ;
        a = i;
        b = a1;
        super();
    }

    // Unreferenced inner class com/etermax/gamescommon/g/c$2

/* anonymous class */
    class c._cls2
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
            c.post(new c._cls2._cls1(this, j, a1));
            return;
            b b1;
            b1;
            j = b1.a();
            a1 = null;
            if (true) goto _L2; else goto _L1
_L1:
        }

            
            {
                e = c1;
                a = flag;
                b = list;
                c = handler;
                d = h1;
                super();
            }
    }

}
