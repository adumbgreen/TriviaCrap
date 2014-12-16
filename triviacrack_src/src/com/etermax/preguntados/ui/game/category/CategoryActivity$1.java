// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import com.etermax.gamescommon.social.a;
import com.etermax.gamescommon.social.c;
import com.etermax.gamescommon.social.d;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            CategoryActivity

class a
    implements c
{

    final GameDTO a;
    final CategoryActivity b;

    public void a()
    {
        b.l.a(b, "finish_duel", new d() {

            final CategoryActivity._cls1 a;

            public void a()
            {
                com.etermax.preguntados.ui.game.category.CategoryActivity.a(a.b, a.a);
            }

            
            {
                a = CategoryActivity._cls1.this;
                super();
            }
        });
    }

    public void b()
    {
        com.etermax.preguntados.ui.game.category.CategoryActivity.a(b, a);
    }

    public void c()
    {
        com.etermax.preguntados.ui.game.category.CategoryActivity.a(b, a);
    }

    _cls1.a(CategoryActivity categoryactivity, GameDTO gamedto)
    {
        b = categoryactivity;
        a = gamedto;
        super();
    }
}
