// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewTreeObserver;
import com.etermax.gamescommon.k.a;
import com.etermax.o;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinDTO;
import com.etermax.preguntados.datasource.dto.SpinQuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinsDataDTO;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            a

class b
    implements android.view.TreeObserver.OnGlobalLayoutListener
{

    final ViewTreeObserver a;
    final View b;
    final com.etermax.preguntados.ui.game.category.a c;

    public void onGlobalLayout()
    {
        com.etermax.preguntados.datasource.dto.enums.QuestionCategory questioncategory;
        int i;
        String s;
        if (android.os.d.VERSION.SDK_INT < 16)
        {
            a.removeGlobalOnLayoutListener(this);
        } else
        {
            a.removeOnGlobalLayoutListener(this);
        }
        c.k = new a(c.getActivity(), b);
        questioncategory = ((SpinQuestionDTO)((SpinDTO)c.b.getSpins_data().getSpins().get(0)).getQuestions().get(0)).getQuestion().getCategory();
        i = c.f.a(questioncategory).getNameResource();
        s = c.getResources().getString(i);
        c.k.a();
        c.k.a(c.getResources().getString(o.tutotial_tooltip_play, new Object[] {
            s
        }));
        c.k.a(1, 0, false, false, false);
    }

    onDTO(com.etermax.preguntados.ui.game.category.a a1, ViewTreeObserver viewtreeobserver, View view)
    {
        c = a1;
        a = viewtreeobserver;
        b = view;
        super();
    }
}
