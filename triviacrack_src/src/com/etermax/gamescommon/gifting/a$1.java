// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.view.View;
import android.widget.GridView;
import com.etermax.tools.social.a.c;
import com.etermax.tools.social.a.h;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            a, b

class a
    implements h
{

    final View a;
    final a b;

    public void a(c ac[])
    {
        com.etermax.gamescommon.gifting.a.a(b, ac);
        com.etermax.gamescommon.gifting.a.b(b).post(new Runnable() {

            final a._cls1 a;

            public void run()
            {
                com.etermax.gamescommon.gifting.a.b(a.b).setAdapter(new b(a.b, a.b.getActivity()));
                a.a.setVisibility(0);
            }

            
            {
                a = a._cls1.this;
                super();
            }
        });
    }

    _cls1.a(a a1, View view)
    {
        b = a1;
        a = view;
        super();
    }
}
