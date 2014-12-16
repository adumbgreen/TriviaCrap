// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            t, r

public class u
{

    private Bundle a;

    private u()
    {
        a = new Bundle();
    }

    u(t._cls1 _pcls1)
    {
        this();
    }

    public r a()
    {
        t t1 = new t();
        t1.setArguments(a);
        return t1;
    }

    public u a(int i)
    {
        a.putInt("mSubtitleResourceId", i);
        return this;
    }

    public u a(TranslationOrigin translationorigin)
    {
        a.putSerializable("mQuestionType", translationorigin);
        return this;
    }

    public u b(int i)
    {
        a.putInt("mTitleResourceId", i);
        return this;
    }
}
