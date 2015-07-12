// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.i;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            c, i, j

public class h extends c
{

    String w;
    String x;

    public h()
    {
    }

    public static Fragment a(long l, SpinType spintype, String s, QuestionDTO questiondto, int k, ArrayList arraylist, String s1, 
            String s2)
    {
        return com.etermax.preguntados.ui.game.question.i.i().a(l).a(spintype).a(s).a(f.challenge_color).a(questiondto).a(arraylist).c(s1).b(s2).a();
    }

    protected void a(Integer integer)
    {
        super.a(integer);
        if (r.getOpponentAnswer() != -1)
        {
            ((RelativeLayout)getView().findViewWithTag((new StringBuilder()).append("answerButton").append(r.getOpponentAnswer()).toString())).findViewById(i.opponent_image).setVisibility(0);
        }
    }

    protected void d()
    {
        super.d();
        List list = r.getAnswers();
        b b1 = new b();
        for (int k = 0; k < list.size(); k++)
        {
            b1.a((ViewSwitcher)((RelativeLayout)getView().findViewWithTag((new StringBuilder()).append("answerButton").append(k).toString())).findViewById(i.opponent_image), w, x);
        }

    }
}
