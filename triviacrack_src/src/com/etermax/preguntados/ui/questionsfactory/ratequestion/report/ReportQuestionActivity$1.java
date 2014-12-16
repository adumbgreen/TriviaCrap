// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.ReportedQuestionDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            ReportQuestionActivity

class a extends a
{

    final ReportedQuestionDTO a;
    final ReportQuestionActivity b;

    public Object a()
    {
        return b();
    }

    public void a(ReportQuestionActivity reportquestionactivity, Void void1)
    {
        super.a(reportquestionactivity, void1);
        android.content.Intent intent = b.getIntent();
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

    (ReportQuestionActivity reportquestionactivity, String s, ReportedQuestionDTO reportedquestiondto)
    {
        b = reportquestionactivity;
        a = reportedquestiondto;
        super(s);
    }
}
