// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import android.os.CountDownTimer;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode.adapter:
//            d, e, f

class a extends CountDownTimer
{

    final d a;

    private void a()
    {
        for (Iterator iterator = d.b(a).iterator(); iterator.hasNext(); ((e)iterator.next()).b()) { }
    }

    private void a(long l)
    {
        for (Iterator iterator = d.a(a).iterator(); iterator.hasNext(); ((f)iterator.next()).a(l)) { }
    }

    public void onFinish()
    {
        a();
    }

    public void onTick(long l)
    {
        a(l);
    }

    (d d1, long l, long l1)
    {
        a = d1;
        super(l, l1);
    }
}
