// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.view.View;
import com.etermax.gamescommon.shop.c;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.tools.j.a;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            m

class b
    implements android.view..OnClickListener
{

    final List a;
    final int b;
    final m c;

    public void onClick(View view)
    {
        c.a("buy");
        c.a(((ProductDTO)a.get(b)).getQuantity());
        com.etermax.preguntados.ui.game.category.m.a(c, ((ProductDTO)a.get(b)).getProductId(com.etermax.preguntados.ui.game.category.m.a(c).b(), m.b(c).c()));
        com.etermax.preguntados.ui.game.category.m.a(c, ((ProductDTO)a.get(b)).getQuantity());
    }

    (m m1, List list, int i)
    {
        c = m1;
        a = list;
        b = i;
        super();
    }
}
