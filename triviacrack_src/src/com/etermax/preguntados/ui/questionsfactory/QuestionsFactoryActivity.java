// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.app.Fragment;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.TranslateQuestionConfigDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.ui.questionsfactory.ratequestion.RateQuestionActivity;
import com.etermax.preguntados.ui.questionsfactory.ratequestion.f;
import com.etermax.preguntados.ui.questionsfactory.ratequestion.g;
import com.etermax.preguntados.ui.questionsfactory.statistics.StatisticsActivity;
import com.etermax.preguntados.ui.questionsfactory.suggestquestion.SuggestQuestionActivity;
import com.etermax.preguntados.ui.questionsfactory.suggestquestion.k;
import com.etermax.preguntados.ui.questionsfactory.suggestquestion.l;
import com.etermax.preguntados.ui.questionsfactory.translatequestion.TranslateQuestionActivity;
import com.etermax.tools.i.a;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory:
//            b, QuestionsFactoryActivity_, a

public class QuestionsFactoryActivity extends BaseFragmentActivity
    implements b, g, k
{

    d a;

    public QuestionsFactoryActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity_);
    }

    private void k()
    {
        (new a(getString(o.loading)) {

            final QuestionsFactoryActivity a;

            public Object a()
            {
                return b();
            }

            public void a(QuestionsFactoryActivity questionsfactoryactivity, UserSuggestionConfigDTO usersuggestionconfigdto)
            {
                super.a(questionsfactoryactivity, usersuggestionconfigdto);
                Intent intent = RateQuestionActivity.a(questionsfactoryactivity, usersuggestionconfigdto);
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

            
            {
                a = QuestionsFactoryActivity.this;
                super(s);
            }
        }).a(this);
    }

    private void l()
    {
        (new a(getString(o.loading)) {

            final QuestionsFactoryActivity a;

            public Object a()
            {
                return b();
            }

            public void a(QuestionsFactoryActivity questionsfactoryactivity, TranslateQuestionConfigDTO translatequestionconfigdto)
            {
                super.a(questionsfactoryactivity, translatequestionconfigdto);
                Intent intent = TranslateQuestionActivity.a(questionsfactoryactivity, translatequestionconfigdto);
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

            
            {
                a = QuestionsFactoryActivity.this;
                super(s);
            }
        }).a(this);
    }

    private boolean m()
    {
        SharedPreferences sharedpreferences = getApplicationContext().getSharedPreferences(com/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity.toString(), 0);
        if (sharedpreferences.getBoolean("firstSuggestQuestion", true))
        {
            sharedpreferences.edit().putBoolean("firstSuggestQuestion", false).commit();
            return true;
        } else
        {
            return false;
        }
    }

    private boolean n()
    {
        return getApplicationContext().getSharedPreferences(com/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity.toString(), 0).getBoolean("under_age", true);
    }

    private boolean o()
    {
        SharedPreferences sharedpreferences = getApplicationContext().getSharedPreferences(com/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity.toString(), 0);
        if (sharedpreferences.getBoolean("first_rate", true))
        {
            sharedpreferences.edit().putBoolean("first_rate", false).commit();
            return true;
        } else
        {
            return false;
        }
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.questionsfactory.a.a();
    }

    public void b()
    {
        if (m())
        {
            a(com.etermax.preguntados.ui.questionsfactory.suggestquestion.l.b(), "fragment_suggest_warning", true);
            return;
        } else
        {
            startActivity(SuggestQuestionActivity.a(this));
            return;
        }
    }

    public void c()
    {
        if (o() || n())
        {
            a(com.etermax.preguntados.ui.questionsfactory.ratequestion.f.b(), "fragment_rate_warning", true);
            return;
        } else
        {
            k();
            return;
        }
    }

    public void d()
    {
        l();
    }

    public void e()
    {
        startActivity(StatisticsActivity.a(this));
    }

    public void f()
    {
        onBackPressed();
        startActivity(SuggestQuestionActivity.a(this));
    }

    public void h()
    {
        onBackPressed();
    }

    public void i()
    {
        onBackPressed();
        getApplicationContext().getSharedPreferences(com/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity.toString(), 0).edit().putBoolean("under_age", false).commit();
        k();
    }

    public void j()
    {
        onBackPressed();
    }
}
