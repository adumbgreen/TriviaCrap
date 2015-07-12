// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import com.etermax.gamescommon.social.a;
import com.etermax.gamescommon.social.c;
import com.etermax.gamescommon.social.d;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            CategoryActivity

class a
    implements c
{

    final CategoryActivity a;

    public void a()
    {
        a.l.a(a, "finish_game", new d() {

            final CategoryActivity._cls2 a;

            public void a()
            {
                a.a.finish();
            }

            
            {
                a = CategoryActivity._cls2.this;
                super();
            }
        });
    }

    public void b()
    {
        a.finish();
    }

    public void c()
    {
        a.finish();
    }

    _cls1.a(CategoryActivity categoryactivity)
    {
        a = categoryactivity;
        super();
    }
}
