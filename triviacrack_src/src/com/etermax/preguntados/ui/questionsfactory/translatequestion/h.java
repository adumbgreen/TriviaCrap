// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.os.Bundle;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.TranslateQuestionConfigDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            g, e

public class h
{

    private Bundle a;

    private h()
    {
        a = new Bundle();
    }

    h(g._cls1 _pcls1)
    {
        this();
    }

    public e a()
    {
        g g1 = new g();
        g1.setArguments(a);
        return g1;
    }

    public h a(Language language)
    {
        a.putSerializable("mLanguageFrom", language);
        return this;
    }

    public h a(TranslateQuestionConfigDTO translatequestionconfigdto)
    {
        a.putSerializable("mConfig", translatequestionconfigdto);
        return this;
    }

    public h b(Language language)
    {
        a.putSerializable("mLanguageTo", language);
        return this;
    }
}
