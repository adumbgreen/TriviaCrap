// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.widget;

import android.view.animation.Animation;

// Referenced classes of package com.etermax.preguntados.ui.widget:
//            AnswerButtonView, a

class a
    implements android.view.animation.Listener
{

    final AnswerButtonView a;

    public void onAnimationEnd(Animation animation)
    {
        if (AnswerButtonView.i(a) != null)
        {
            AnswerButtonView.i(a).d();
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        AnswerButtonView.h(a);
    }

    (AnswerButtonView answerbuttonview)
    {
        a = answerbuttonview;
        super();
    }
}
