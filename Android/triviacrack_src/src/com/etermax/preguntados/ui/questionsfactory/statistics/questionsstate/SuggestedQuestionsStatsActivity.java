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
//            BaseQuestionsStatsActivity, SuggestedQuestionsStatsActivity_

public class SuggestedQuestionsStatsActivity extends BaseQuestionsStatsActivity
{

    public SuggestedQuestionsStatsActivity()
    {
    }

    public static Intent a(Context context, UserFactoryStatsCountDTO userfactorystatscountdto)
    {
        return (new Intent(context, com/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/SuggestedQuestionsStatsActivity_)).putExtra("mQuestionsStatsCountDTO", userfactorystatscountdto);
    }

    protected int b()
    {
        return o.suggested_questions;
    }

    protected TranslationOrigin c()
    {
        return TranslationOrigin.ORIGINAL;
    }

    protected int d()
    {
        return o.suggested_in_rate;
    }

    protected int e()
    {
        return o.suggested_in_rate_txt;
    }

    protected int f()
    {
        return o.suggested_approved;
    }

    protected int h()
    {
        return o.suggested_approved_txt;
    }

    protected int i()
    {
        return o.suggested_disapproved;
    }

    protected int j()
    {
        return o.suggested_disapproved_txt;
    }
}
