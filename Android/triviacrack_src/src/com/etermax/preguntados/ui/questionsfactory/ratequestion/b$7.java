// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.view.animation.Animation;
import android.widget.Button;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            b

class a
    implements android.view.animation.ation.AnimationListener
{

    final Button a;
    final b b;

    public void onAnimationEnd(Animation animation)
    {
        a.setEnabled(true);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        com.etermax.preguntados.ui.questionsfactory.ratequestion.b.a(b, a);
        a.setEnabled(false);
    }

    (b b1, Button button)
    {
        b = b1;
        a = button;
        super();
    }
}
