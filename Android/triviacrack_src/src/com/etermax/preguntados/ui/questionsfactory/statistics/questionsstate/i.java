// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            h, f

public class i
{

    private Bundle a;

    private i()
    {
        a = new Bundle();
    }

    i(h._cls1 _pcls1)
    {
        this();
    }

    public f a()
    {
        h h1 = new h();
        h1.setArguments(a);
        return h1;
    }

    public i a(int j)
    {
        a.putInt("mSubtitleResourceId", j);
        return this;
    }

    public i a(TranslationOrigin translationorigin)
    {
        a.putSerializable("mQuestionType", translationorigin);
        return this;
    }

    public i b(int j)
    {
        a.putInt("mTitleResourceId", j);
        return this;
    }
}
