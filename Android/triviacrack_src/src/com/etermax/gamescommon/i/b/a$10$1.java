// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.view.View;
import android.widget.TextView;
import com.etermax.widget.a;
import com.etermax.widget.c;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            c, a

class a
    implements c
{

    final a a;

    public void a(com.etermax.gamescommon.i.b.c c1)
    {
        a.a.i = c1.a;
        com.etermax.gamescommon.i.b.a.l(a.a).setText(c1.c);
        com.etermax.gamescommon.i.b.a.j(a.a).setVisibility(0);
        com.etermax.gamescommon.i.b.a.a(a.a, true);
    }

    public volatile void a(Object obj)
    {
        a((com.etermax.gamescommon.i.b.c)obj);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/etermax/gamescommon/i/b/a$10

/* anonymous class */
    class a._cls10
        implements android.view.View.OnClickListener
    {

        final List a;
        final com.etermax.gamescommon.i.b.a b;

        public void onClick(View view)
        {
            (new a(view.getContext(), a, new a._cls10._cls1(this), true)).a();
        }

            
            {
                b = a1;
                a = list;
                super();
            }
    }

}
