// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.TranslateQuestionConfigDTO;
import com.etermax.preguntados.ui.questionsfactory.translatequestion.TranslateQuestionActivity;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory:
//            QuestionsFactoryActivity

class a extends a
{

    final QuestionsFactoryActivity a;

    public Object a()
    {
        return b();
    }

    public void a(QuestionsFactoryActivity questionsfactoryactivity, TranslateQuestionConfigDTO translatequestionconfigdto)
    {
        super.a(questionsfactoryactivity, translatequestionconfigdto);
        android.content.Intent intent = TranslateQuestionActivity.a(questionsfactoryactivity, translatequestionconfigdto);
        a.startActivity(intent);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((QuestionsFactoryActivity)obj, (TranslateQuestionConfigDTO)obj1);
    }

    public TranslateQuestionConfigDTO b()
    {
        return a.a.o();
    }

    QuestionActivity(QuestionsFactoryActivity questionsfactoryactivity, String s)
    {
        a = questionsfactoryactivity;
        super(s);
    }
}
