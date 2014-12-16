// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.view.View;
import android.widget.Toast;
import com.etermax.gamescommon.language.Language;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.datasource.a.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            e

class b extends a
{

    final Language a;
    final Language b;
    final e c;

    public Object a()
    {
        return b();
    }

    public void a(e e1, QuestionDTO questiondto)
    {
        super.a(e1, questiondto);
        c.a(questiondto);
    }

    public void a(e e1, Exception exception)
    {
        if ((exception instanceof b) && ((b)exception).c() == 416)
        {
            Toast.makeText(e.f(c), c.getString(o.no_more_questions_translate), 1).show();
            c.getView().findViewById(i.translation_scroll).setVisibility(4);
            b(false);
        }
        super.a(e1, exception);
    }

    public volatile void a(Object obj, Exception exception)
    {
        a((e)obj, exception);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((e)obj, (QuestionDTO)obj1);
    }

    public QuestionDTO b()
    {
        return c.a.a(a, b);
    }

    (e e1, String s, Language language, Language language1)
    {
        c = e1;
        a = language;
        b = language1;
        super(s);
    }
}
