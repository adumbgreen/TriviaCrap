// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.ui.game.duelmode.DuelModeResultsActivity;
import com.etermax.preguntados.ui.game.duelmode.g;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            NewGameActivity

class a extends com.etermax.tools.i.a
{

    final NewGameActivity a;
    private GameDTO b;
    private AnswerListDTO c;

    public a(NewGameActivity newgameactivity, String s, GameDTO gamedto, AnswerListDTO answerlistdto)
    {
        a = newgameactivity;
        super(s);
        b = gamedto;
        c = answerlistdto;
    }

    public Object a()
    {
        return b();
    }

    protected void a(NewGameActivity newgameactivity, Void void1)
    {
        super.a(newgameactivity, void1);
        g g1 = g.a;
        android.content.Intent intent = DuelModeResultsActivity.a(a, b, g1);
        a.startActivity(intent);
        a.finish();
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((NewGameActivity)obj, (Void)obj1);
    }

    public Void b()
    {
        b = a.c.a(b.getId(), c);
        return null;
    }
}
