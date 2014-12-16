// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import com.etermax.o;
import com.etermax.preguntados.datasource.dto.enums.QuestionDisapprovalReason;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            j

public class i
{

    public static final List a;

    public static int a(QuestionDisapprovalReason questiondisapprovalreason)
    {
        if (questiondisapprovalreason == QuestionDisapprovalReason.DISLIKED)
        {
            return o.report_type_13;
        }
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            j j1 = (j)iterator.next();
            if (j1.a() == questiondisapprovalreason)
            {
                return j1.b();
            }
        }

        return 0;
    }

    public static List a()
    {
        return a;
    }

    static 
    {
        a = new ArrayList();
        a.add(new j(QuestionDisapprovalReason.WRONG_SPELLING_OR_GRAMMAR, o.report_type_01, o.report_type_01_hint));
        a.add(new j(QuestionDisapprovalReason.WRONG_ANSWER, o.report_type_02, o.report_type_02_hint));
        a.add(new j(QuestionDisapprovalReason.WRONG_CATEGORY, o.report_type_03, o.report_type_03_hint));
        a.add(new j(QuestionDisapprovalReason.WRONG_REGION, o.report_type_04, o.report_type_04_hint));
        a.add(new j(QuestionDisapprovalReason.WRONG_LANGUAGE, o.report_type_05, o.report_type_05_hint));
        a.add(new j(QuestionDisapprovalReason.MISSPELLED, o.report_type_06_, o.report_type_06_hint));
        a.add(new j(QuestionDisapprovalReason.REPEATED, o.report_type_07, o.report_type_07_hint));
        a.add(new j(QuestionDisapprovalReason.VERY_SPECIFIC, o.report_type_08, o.report_type_08_hint));
        a.add(new j(QuestionDisapprovalReason.OFFENSIVE_CONTENT, o.report_type_09, o.report_type_09_hint));
        a.add(new j(QuestionDisapprovalReason.FUTURE_CHANGES, o.report_type_10, o.report_type_10_hint));
        a.add(new j(QuestionDisapprovalReason.SPAM, o.report_type_11, o.report_type_11_hint));
        a.add(new j(QuestionDisapprovalReason.OTHER, o.report_type_12, o.report_type_12_hint));
    }
}
