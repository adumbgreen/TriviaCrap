// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.widget.Toast;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsListDTO;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.SuggestedQuestionsStatsActivity;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.TranslatedQuestionsStatsActivity;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics:
//            b, StatisticsActivity_, a

public class StatisticsActivity extends BaseFragmentActivity
    implements b
{

    UserFactoryStatsListDTO a;

    public StatisticsActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity_);
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.questionsfactory.statistics.a.a();
    }

    public void a(UserFactoryStatsListDTO userfactorystatslistdto)
    {
        a = userfactorystatslistdto;
    }

    public void b()
    {
        if (a != null)
        {
            startActivity(SuggestedQuestionsStatsActivity.a(this, a.getSuggested()));
        }
    }

    public void c()
    {
        Toast.makeText(getApplicationContext(), getString(o.only_count_rate), 0).show();
    }

    public void d()
    {
        if (a != null)
        {
            startActivity(TranslatedQuestionsStatsActivity.a(this, a.getTranslated()));
        }
    }
}
