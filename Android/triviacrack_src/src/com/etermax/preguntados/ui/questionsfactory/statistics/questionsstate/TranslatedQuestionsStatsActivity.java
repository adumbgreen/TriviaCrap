// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.content.Context;
import android.content.Intent;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsCountDTO;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            BaseQuestionsStatsActivity, TranslatedQuestionsStatsActivity_

public class TranslatedQuestionsStatsActivity extends BaseQuestionsStatsActivity
{

    public TranslatedQuestionsStatsActivity()
    {
    }

    public static Intent a(Context context, UserFactoryStatsCountDTO userfactorystatscountdto)
    {
        return (new Intent(context, com/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/TranslatedQuestionsStatsActivity_)).putExtra("mQuestionsStatsCountDTO", userfactorystatscountdto);
    }

    protected int b()
    {
        return o.translated_questions;
    }

    protected TranslationOrigin c()
    {
        return TranslationOrigin.TRANSLATION;
    }

    protected int d()
    {
        return o.translate_in_rate;
    }

    protected int e()
    {
        return o.translate_in_rate_txt;
    }

    protected int f()
    {
        return o.translate_approved;
    }

    protected int h()
    {
        return o.translate_approved_txt;
    }

    protected int i()
    {
        return o.translate_disapproved;
    }

    protected int j()
    {
        return o.translate_disapproved_txt;
    }
}
