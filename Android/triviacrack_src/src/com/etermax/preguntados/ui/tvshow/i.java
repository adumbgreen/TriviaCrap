// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.os.CountDownTimer;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.etermax.preguntados.g.a;
import com.etermax.preguntados.ui.a.c;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            g

class i extends CountDownTimer
{

    final g a;
    private int b;

    public i(g g1, long l, long l1)
    {
        a = g1;
        super(l, l1);
        b = 0;
    }

    public void onFinish()
    {
        a.p = true;
        com.etermax.preguntados.ui.tvshow.g.a(a, false);
        a.a.a(a.i);
        a.s.setProgress(0);
        a.t.setText("0'");
        com.etermax.preguntados.ui.tvshow.g.a(a);
    }

    public void onTick(long l)
    {
        int j = (int)Math.ceil((double)l / 1000D);
        a.s.setProgress((int)l);
        if (j != b)
        {
            b = j;
            a.t.setText((new StringBuilder()).append(j).append("'").toString());
            if (j <= 5)
            {
                a.a.a(a.h);
                a.t.startAnimation(c.a(500L));
            }
        }
    }
}
