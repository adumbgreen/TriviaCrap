// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.os.CountDownTimer;
import android.view.View;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.LivesDTO;
import com.etermax.preguntados.h.c;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            e

class a extends CountDownTimer
{

    final e a;

    public void onFinish()
    {
        e.h(a);
        if (a.c.q().getQuantity() < a.c.q().getMax() && !a.c.q().isUnlimited())
        {
            com.etermax.preguntados.ui.dashboard.e.c(a);
        }
    }

    public void onTick(long l)
    {
        String s = c.b(1000 * a.c.q().getNextIncrement());
        ((TextView)a.getView().findViewById(i.lives_remaining_time)).setText(s);
    }

    vesDTO(e e1, long l, long l1)
    {
        a = e1;
        super(l, l1);
    }
}
