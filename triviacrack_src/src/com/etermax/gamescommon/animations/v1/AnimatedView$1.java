// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations.v1;

import android.os.CountDownTimer;

// Referenced classes of package com.etermax.gamescommon.animations.v1:
//            AnimatedView

class a extends CountDownTimer
{

    final AnimatedView a;

    public void onFinish()
    {
    }

    public void onTick(long l)
    {
        AnimatedView.a(a);
    }

    (AnimatedView animatedview, long l, long l1)
    {
        a = animatedview;
        super(l, l1);
    }
}
