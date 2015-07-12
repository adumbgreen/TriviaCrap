// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsCountDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            x, v

public class y
{

    private Bundle a;

    private y()
    {
        a = new Bundle();
    }

    y(x._cls1 _pcls1)
    {
        this();
    }

    public v a()
    {
        x x1 = new x();
        x1.setArguments(a);
        return x1;
    }

    public y a(int i)
    {
        a.putInt("mTitleResourceId", i);
        return this;
    }

    public y a(UserFactoryStatsCountDTO userfactorystatscountdto)
    {
        a.putSerializable("mQuestionsStats", userfactorystatscountdto);
        return this;
    }
}
