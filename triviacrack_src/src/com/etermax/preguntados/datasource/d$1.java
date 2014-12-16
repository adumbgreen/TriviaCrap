// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.SystemClock;
import com.etermax.preguntados.datasource.dto.LivesConfigDTO;
import com.etermax.preguntados.datasource.dto.LivesDTO;

// Referenced classes of package com.etermax.preguntados.datasource:
//            d

class a
    implements Runnable
{

    final d a;

    public void run()
    {
        d.a(a).setQuantity(d.a(a).getQuantity() + a.r().getIncrement_quantity());
        if (d.a(a).getQuantity() < d.a(a).getMax())
        {
            d.a(a).setNextIncrement(a.r().getIncrement_interval());
            a.k.edit().putLong("DASHBOARD_RECEIVED_TIME", SystemClock.elapsedRealtime()).commit();
            a.k.edit().putLong("NEXT_INCREMENT_INTERVAL", d.a(a).getNextIncrement()).commit();
            a.l.removeCallbacks(a.r);
            a.l.postDelayed(a.r, 1000 * d.a(a).getNextIncrement());
        }
    }

    r(d d1)
    {
        a = d1;
        super();
    }
}
