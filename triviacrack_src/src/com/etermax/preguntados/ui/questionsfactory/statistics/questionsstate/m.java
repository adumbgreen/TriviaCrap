// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            l, j

public class m
{

    private Bundle a;

    private m()
    {
        a = new Bundle();
    }

    m(l._cls1 _pcls1)
    {
        this();
    }

    public j a()
    {
        l l1 = new l();
        l1.setArguments(a);
        return l1;
    }

    public m a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        a.putSerializable("mQuestionDTO", userfactorytranslationstatdto);
        return this;
    }

    public m a(UserSuggestionConfigDTO usersuggestionconfigdto)
    {
        a.putSerializable("mConfigDTO", usersuggestionconfigdto);
        return this;
    }
}
