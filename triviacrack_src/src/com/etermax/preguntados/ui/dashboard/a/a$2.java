// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.a;

import android.os.CountDownTimer;
import android.view.View;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.h.c;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.a:
//            a

class a extends CountDownTimer
{

    final a a;

    public void onFinish()
    {
        ((TextView)a.getView().findViewById(i.get_more_lives_remaining_time_textview)).setText(a.getString(o.full));
    }

    public void onTick(long l)
    {
        String s = c.a(l);
        ((TextView)a.getView().findViewById(i.get_more_lives_remaining_time_textview)).setText(s);
    }

    (a a1, long l, long l1)
    {
        a = a1;
        super(l, l1);
    }
}
