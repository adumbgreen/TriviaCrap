// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import java.util.Date;

public class i extends LinearLayout
{

    d a;
    TextView b;
    TextView c;
    TextView d;

    public i(Context context)
    {
        super(context);
    }

    public void a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        long l = 0L;
        b.setText(userfactorytranslationstatdto.getText());
        Date date = userfactorytranslationstatdto.getModificationDate();
        long l1 = (long)(((double)(new Date()).getTime() - (double)date.getTime()) / 86400000D);
        long l2 = (long)a.s().getRejectedQuestionsExpirationTime() - l1;
        int j;
        if (l2 >= l)
        {
            l = l2;
        }
        c.setText((new StringBuilder()).append(l).append(" d").toString());
        j = com.etermax.preguntados.ui.questionsfactory.ratequestion.report.i.a(userfactorytranslationstatdto.getDisapprovalReason());
        if (j != 0)
        {
            d.setText(j);
        }
    }
}
