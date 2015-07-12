// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.a;

import android.view.View;
import com.etermax.gamescommon.shop.c;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.tools.j.a;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.a:
//            e

class a
    implements android.view..OnClickListener
{

    final List a;
    final e b;

    public void onClick(View view)
    {
        b.a("buy_live");
        com.etermax.preguntados.ui.dashboard.a.e.a(b, ((ProductDTO)a.get(0)).getProductId(com.etermax.preguntados.ui.dashboard.a.e.a(b).b(), e.b(b).c()));
    }

    (e e1, List list)
    {
        b = e1;
        a = list;
        super();
    }
}
