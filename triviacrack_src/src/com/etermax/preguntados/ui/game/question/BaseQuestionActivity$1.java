// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.widget.Toast;
import com.etermax.o;
import com.etermax.preguntados.datasource.a.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.enums.EndedReason;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.tools.i.a;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            BaseQuestionActivity, k, c

class b extends a
{

    final AnswerListDTO a;
    final boolean b;
    final BaseQuestionActivity c;

    public Object a()
    {
        return b();
    }

    protected void a(BaseQuestionActivity basequestionactivity, GameDTO gamedto)
    {
        super.a(basequestionactivity, gamedto);
        c.j.t();
        c.j.s();
        long l = ((new Date()).getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
        if (GameType.DUEL_GAME.equals(gamedto.getGameType()))
        {
            com.etermax.preguntados.ui.game.question.BaseQuestionActivity.a(c, l, c.i.e(), gamedto.getDuelCreator(), gamedto.getDuelPlayers());
        }
        if (gamedto.isEnded() && gamedto.getEnded_reason() == EndedReason.NORMAL)
        {
            if (gamedto.getGameType() == GameType.NORMAL)
            {
                long l2 = (gamedto.getEnded_date().getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
                com.etermax.preguntados.ui.game.question.BaseQuestionActivity.a(c, "completed", Integer.valueOf(gamedto.getRound_number()), l2);
            } else
            {
                long l1 = (gamedto.getEnded_date().getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
                com.etermax.preguntados.ui.game.question.BaseQuestionActivity.a(c, gamedto.getDuelPlayers().size(), l1, gamedto.getExpiration_date(), gamedto.getEnded_date(), gamedto.getDuelCreator(), (DuelPlayerDTO)gamedto.getDuelPlayers().get(0));
            }
        }
        if (b)
        {
            c.finish();
        }
        if (com.etermax.preguntados.ui.game.question.BaseQuestionActivity.a(c) instanceof k)
        {
            ((k)com.etermax.preguntados.ui.game.question.BaseQuestionActivity.b(c)).a(gamedto);
        } else
        if (BaseQuestionActivity.c(c) instanceof c)
        {
            c.a(gamedto);
            return;
        }
    }

    protected void a(BaseQuestionActivity basequestionactivity, Exception exception)
    {
        if (exception instanceof b)
        {
            if (((b)exception).c() == 305)
            {
                b(false);
                Toast.makeText(basequestionactivity, c.getString(o.opponent_removed_game), 1).show();
                c.j.t();
                c.j.s();
                c.finish();
                return;
            } else
            {
                c.a(c.c.getId(), exception);
                return;
            }
        } else
        {
            super.a(basequestionactivity, exception);
            return;
        }
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((BaseQuestionActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((BaseQuestionActivity)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return c.g.a(c.c.getId(), a);
    }

    (BaseQuestionActivity basequestionactivity, String s, AnswerListDTO answerlistdto, boolean flag)
    {
        c = basequestionactivity;
        a = answerlistdto;
        b = flag;
        super(s);
    }
}
