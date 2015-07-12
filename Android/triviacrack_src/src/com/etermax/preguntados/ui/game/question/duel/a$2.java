// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.duel;

import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.tools.widget.CustomLinearButton;
import java.util.HashMap;

// Referenced classes of package com.etermax.preguntados.ui.game.question.duel:
//            a

class d
    implements android.view..OnClickListener
{

    final View a;
    final QuestionCategory b;
    final int c;
    final int d;
    final a e;

    public void onClick(View view)
    {
        ((FrameLayout)((CustomLinearButton)a.findViewWithTag(e.c.get(b))).getParent()).getChildAt(1).setVisibility(0);
        TextView textview = (TextView)a.findViewById(i.title_category_selected_textview);
        textview.setText(e.b.a(b).getNameResource());
        textview.setTextColor(e.getResources().getColor(e.b.a(b).getHeaderColorResource()));
        if (com.etermax.preguntados.ui.game.question.duel.a.a(e)[c] != null && com.etermax.preguntados.ui.game.question.duel.a.a(e)[c] != b)
        {
            int j = ((Integer)e.c.get(com.etermax.preguntados.ui.game.question.duel.a.a(e)[c])).intValue();
            ((FrameLayout)((CustomLinearButton)a.findViewWithTag(Integer.valueOf(j))).getParent()).getChildAt(1).setVisibility(4);
        }
        com.etermax.preguntados.ui.game.question.duel.a.a(e)[d] = b;
    }

    ionCategory(a a1, View view, QuestionCategory questioncategory, int j, int k)
    {
        e = a1;
        a = view;
        b = questioncategory;
        c = j;
        d = k;
        super();
    }
}
