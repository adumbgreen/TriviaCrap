// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.language.Language;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.QuestionRatingDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.ui.questionsfactory.ratequestion.report.ReportQuestionActivity;
import com.etermax.tools.i.a;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            c, RateQuestionActivity_, b, a

public class RateQuestionActivity extends BaseFragmentActivity
    implements c
{

    d a;
    UserSuggestionConfigDTO b;
    QuestionDTO c;

    public RateQuestionActivity()
    {
    }

    public static Intent a(Context context, UserSuggestionConfigDTO usersuggestionconfigdto)
    {
        return (new Intent(context, com/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_)).putExtra("mConfigDTO", usersuggestionconfigdto);
    }

    private void b(QuestionRatingDTO questionratingdto, com.etermax.preguntados.ui.questionsfactory.ratequestion.a a1)
    {
        (new a(getString(o.loading), questionratingdto, a1) {

            final QuestionRatingDTO a;
            final com.etermax.preguntados.ui.questionsfactory.ratequestion.a b;
            final RateQuestionActivity c;

            public Object a()
            {
                return b();
            }

            public void a(RateQuestionActivity ratequestionactivity, Exception exception)
            {
                super.a(ratequestionactivity, exception);
                b.c();
            }

            protected void a(RateQuestionActivity ratequestionactivity, Void void1)
            {
                super.a(ratequestionactivity, void1);
                b.b();
            }

            public volatile void a(Object obj, Exception exception)
            {
                a((RateQuestionActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((RateQuestionActivity)obj, (Void)obj1);
            }

            public Void b()
            {
                c.a.a(a);
                return null;
            }

            
            {
                c = RateQuestionActivity.this;
                a = questionratingdto;
                b = a1;
                super(s);
            }
        }).a(this);
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(b);
    }

    public void a(QuestionDTO questiondto, Language language)
    {
        startActivityForResult(ReportQuestionActivity.a(this, questiondto, language), 123);
    }

    public void a(QuestionRatingDTO questionratingdto, com.etermax.preguntados.ui.questionsfactory.ratequestion.a a1)
    {
        b(questionratingdto, a1);
    }

    public void b()
    {
        a(a(), false);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Fragment fragment;
label0:
        {
            if (i == 123)
            {
                fragment = v();
                if (fragment instanceof com.etermax.preguntados.ui.questionsfactory.ratequestion.a)
                {
                    if (j != -1)
                    {
                        break label0;
                    }
                    ((com.etermax.preguntados.ui.questionsfactory.ratequestion.a)fragment).b();
                }
            }
            return;
        }
        ((com.etermax.preguntados.ui.questionsfactory.ratequestion.a)fragment).c();
    }

    public void onBackPressed()
    {
        String s = v().getTag();
        if (s != null && s.compareTo("answer_fragment_tag") == 0)
        {
            finish();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }
}
