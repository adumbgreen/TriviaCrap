// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            NewGameActivity

class a extends a
{

    final GameRequestDTO a;
    final NewGameActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(NewGameActivity newgameactivity, GameDTO gamedto)
    {
        super.a(newgameactivity, gamedto);
        b.g.b();
        if (gamedto.getGameType() == null || gamedto.getGameType() == GameType.NORMAL)
        {
            newgameactivity.startActivity(CategoryActivity.a(newgameactivity, gamedto, b.a, b.b, false));
        }
        b.finish();
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((NewGameActivity)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return b.c.a(a);
    }

    (NewGameActivity newgameactivity, String s, GameRequestDTO gamerequestdto)
    {
        b = newgameactivity;
        a = gamerequestdto;
        super(s);
    }
}
