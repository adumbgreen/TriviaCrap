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
//            a, c

class a
    implements android.view.OnClickListener
{

    final List a;
    final com.etermax.gamescommon.i.b.a b;

    public void onClick(View view)
    {
        (new a(view.getContext(), a, new c() {

            final a._cls10 a;

            public void a(com.etermax.gamescommon.i.b.c c1)
            {
                a.b.i = c1.a;
                com.etermax.gamescommon.i.b.a.l(a.b).setText(c1.c);
                com.etermax.gamescommon.i.b.a.j(a.b).setVisibility(0);
                com.etermax.gamescommon.i.b.a.a(a.b, true);
            }

            public volatile void a(Object obj)
            {
                a((com.etermax.gamescommon.i.b.c)obj);
            }

            
            {
                a = a._cls10.this;
                super();
            }
        }, true)).a();
    }

    _cls1.a(com.etermax.gamescommon.i.b.a a1, List list)
    {
        b = a1;
        a = list;
        super();
    }
}
