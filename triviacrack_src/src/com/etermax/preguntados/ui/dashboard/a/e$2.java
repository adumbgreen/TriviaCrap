// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.a;

import android.os.CountDownTimer;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.preguntados.h.c;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.a:
//            e, a

class a extends CountDownTimer
{

    final e a;

    public void onFinish()
    {
        a.getActivity().getSupportFragmentManager().beginTransaction().remove(a).commit();
        android.support.v4.app.Fragment fragment = com.etermax.preguntados.ui.dashboard.a.a.a();
        ((BaseFragmentActivity)a.getActivity()).a(fragment, "get_more_lives_fragment", true);
    }

    public void onTick(long l)
    {
        String s = c.a(l);
        ((TextView)a.getView().findViewById(i.out_of_lives_remaining_time_textview)).setText(s);
    }

    tivity(e e1, long l, long l1)
    {
        a = e1;
        super(l, l1);
    }
}
