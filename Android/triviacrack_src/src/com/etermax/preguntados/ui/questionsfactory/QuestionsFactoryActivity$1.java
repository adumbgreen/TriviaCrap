// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.ui.questionsfactory.ratequestion.RateQuestionActivity;
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

    public void a(QuestionsFactoryActivity questionsfactoryactivity, UserSuggestionConfigDTO usersuggestionconfigdto)
    {
        super.a(questionsfactoryactivity, usersuggestionconfigdto);
        android.content.Intent intent = RateQuestionActivity.a(questionsfactoryactivity, usersuggestionconfigdto);
        a.startActivity(intent);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((QuestionsFactoryActivity)obj, (UserSuggestionConfigDTO)obj1);
    }

    public UserSuggestionConfigDTO b()
    {
        return a.a.n();
    }

    tivity(QuestionsFactoryActivity questionsfactoryactivity, String s)
    {
        a = questionsfactoryactivity;
        super(s);
    }
}
