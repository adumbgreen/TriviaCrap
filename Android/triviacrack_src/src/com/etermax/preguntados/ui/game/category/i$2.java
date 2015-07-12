// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import com.etermax.gamescommon.achievements.ui.k;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameUserDTO;
import com.etermax.preguntados.ui.game.category.widget.a;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            i, j

class a
    implements a
{

    final i a;

    public void a(int l)
    {
        boolean flag = true;
        if (a.a.isMyTurn())
        {
            com.etermax.preguntados.ui.game.category.i.a(a, flag);
        }
        boolean flag1 = com.etermax.preguntados.ui.game.category.i.a(a, l);
        boolean flag2 = false;
        if (flag1)
        {
            flag2 = flag;
        }
        if (!com.etermax.preguntados.ui.game.category.i.a(a))
        {
            flag = flag2;
        }
        if (!flag)
        {
            if (a.a.isLevelUp() && !i.q && a.a.getMyPlayerInfo().getCharges() != 3)
            {
                ((j)i.b(a)).j();
            } else
            if (a.a.hasNewAchievements() && a.a.getMyPlayerInfo().getCharges() != 3 && !i.q)
            {
                a.k.a();
                return;
            }
        }
    }

    erDTO(i l)
    {
        a = l;
        super();
    }
}
