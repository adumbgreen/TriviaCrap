// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import android.view.View;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode.adapter:
//            b, g

class b
    implements android.view..OnClickListener
{

    final g a;
    final DuelPlayerDTO b;
    final b c;

    public void onClick(View view)
    {
        a.a(b.getId());
    }

    (b b1, g g1, DuelPlayerDTO duelplayerdto)
    {
        c = b1;
        a = g1;
        b = duelplayerdto;
        super();
    }
}
