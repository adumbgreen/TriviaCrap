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
    implements d
{

    final a a;

    public void a()
    {
        com.etermax.preguntados.ui.game.category.CategoryActivity.a(a.a, a.a);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/etermax/preguntados/ui/game/category/CategoryActivity$1

/* anonymous class */
    class CategoryActivity._cls1
        implements c
    {

        final GameDTO a;
        final CategoryActivity b;

        public void a()
        {
            b.l.a(b, "finish_duel", new CategoryActivity._cls1._cls1(this));
        }

        public void b()
        {
            com.etermax.preguntados.ui.game.category.CategoryActivity.a(b, a);
        }

        public void c()
        {
            com.etermax.preguntados.ui.game.category.CategoryActivity.a(b, a);
        }

            
            {
                b = categoryactivity;
                a = gamedto;
                super();
            }
    }

}
