// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.language.Language;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.ReportedQuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionDisapprovalReason;
import com.etermax.tools.i.a;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            b, f, ReportQuestionActivity_, e, 
//            a

public class ReportQuestionActivity extends BaseFragmentActivity
    implements b, f
{

    d a;
    QuestionDTO b;
    Language c;

    public ReportQuestionActivity()
    {
    }

    public static Intent a(Context context, QuestionDTO questiondto, Language language)
    {
        return (new Intent(context, com/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity_)).putExtra("mQuestion", questiondto).putExtra("mSelectedLanguage", language);
    }

    private void a(ReportedQuestionDTO reportedquestiondto)
    {
        (new a(getString(o.loading), reportedquestiondto) {

            final ReportedQuestionDTO a;
            final ReportQuestionActivity b;

            public Object a()
            {
                return b();
            }

            public void a(ReportQuestionActivity reportquestionactivity, Void void1)
            {
                super.a(reportquestionactivity, void1);
                Intent intent = b.getIntent();
                b.setResult(-1, intent);
                b.finish();
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((ReportQuestionActivity)obj, (Void)obj1);
            }

            public Void b()
            {
                b.a.a(a);
                return null;
            }

            
            {
                b = ReportQuestionActivity.this;
                a = reportedquestiondto;
                super(s);
            }
        }).a(this);
    }

    protected Fragment a()
    {
        return e.b();
    }

    public void a(QuestionDisapprovalReason questiondisapprovalreason)
    {
        ReportedQuestionDTO reportedquestiondto = new ReportedQuestionDTO();
        reportedquestiondto.setId(b.getId());
        reportedquestiondto.setLanguage(c);
        reportedquestiondto.setErrorType(questiondisapprovalreason);
        a(reportedquestiondto);
    }

    public void a(String s)
    {
        ReportedQuestionDTO reportedquestiondto = new ReportedQuestionDTO();
        reportedquestiondto.setId(b.getId());
        reportedquestiondto.setLanguage(c);
        reportedquestiondto.setErrorType(QuestionDisapprovalReason.OTHER);
        reportedquestiondto.setComment(s);
        a(reportedquestiondto);
    }

    public void b()
    {
        a(com.etermax.preguntados.ui.questionsfactory.ratequestion.report.a.b(), true);
    }
}
