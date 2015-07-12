// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.widget;

import android.content.res.Resources;
import android.view.View;
import com.etermax.f;
import com.etermax.preguntados.g.a;
import com.etermax.tools.widget.CustomFontButton;

// Referenced classes of package com.etermax.preguntados.ui.widget:
//            AnswerButtonView, b

class a
    implements android.view.r
{

    final AnswerButtonView a;

    public void onClick(View view)
    {
        if (com.etermax.preguntados.ui.widget.AnswerButtonView.a(a))
        {
            a.a.a(AnswerButtonView.b(a), AnswerButtonView.c(a));
            a.c.a(a.c);
        } else
        {
            a.a.a(AnswerButtonView.d(a), AnswerButtonView.e(a));
            a.c.a(a.d);
        }
        a.a.setTextColor(a.getResources().getColor(f.white));
        if (com.etermax.preguntados.ui.widget.AnswerButtonView.f(a) != null)
        {
            com.etermax.preguntados.ui.widget.AnswerButtonView.f(a).a(AnswerButtonView.g(a));
        }
        a.setEnabled(false);
    }

    (AnswerButtonView answerbuttonview)
    {
        a = answerbuttonview;
        super();
    }
}
