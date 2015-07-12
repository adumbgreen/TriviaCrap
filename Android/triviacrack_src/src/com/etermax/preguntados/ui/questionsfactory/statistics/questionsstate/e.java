// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            d, b

public class e
{

    private Bundle a;

    private e()
    {
        a = new Bundle();
    }

    e(d._cls1 _pcls1)
    {
        this();
    }

    public b a()
    {
        d d1 = new d();
        d1.setArguments(a);
        return d1;
    }

    public e a(int i)
    {
        a.putInt("mTitleResourceId", i);
        return this;
    }

    public e a(TranslationOrigin translationorigin)
    {
        a.putSerializable("mQuestionType", translationorigin);
        return this;
    }

    public e b(int i)
    {
        a.putInt("mSubtitleResourceId", i);
        return this;
    }
}
