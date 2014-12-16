// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.view.animation.Animation;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            n

class a
    implements android.view.animation.ation.AnimationListener
{

    final n a;

    public void onAnimationEnd(Animation animation)
    {
        n n1 = a;
        n1.g = 1 + n1.g;
        n.a(a);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    stener(n n1)
    {
        a = n1;
        super();
    }
}
