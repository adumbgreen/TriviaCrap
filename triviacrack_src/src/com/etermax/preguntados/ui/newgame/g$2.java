// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.os.CountDownTimer;
import android.widget.TextView;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            g

class a extends CountDownTimer
{

    final g a;

    public void onFinish()
    {
        a.b = 0L;
        g.a(a);
    }

    public void onTick(long l)
    {
        a.f.setText((new StringBuilder()).append(Integer.toString((int)(l / 1000L))).append("\"").toString());
        a.b = l;
    }

    (g g1, long l, long l1)
    {
        a = g1;
        super(l, l1);
    }
}
