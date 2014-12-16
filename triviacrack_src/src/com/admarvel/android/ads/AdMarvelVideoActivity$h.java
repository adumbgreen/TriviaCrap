// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity, p

class a extends BroadcastReceiver
{

    final AdMarvelVideoActivity a;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF"))
        {
            if (a.h != null)
            {
                a a1 = (a)a.h.get();
                if (a1 != null && a1.a() && !AdMarvelVideoActivity.s(a))
                {
                    a1.d();
                    a.c();
                }
            }
            if (AdMarvelVideoActivity.t(a) && a.i == g && AdMarvelVideoActivity.a(a) != null)
            {
                a.i = b;
                AdMarvelVideoActivity.d(a, false);
            }
            if (AdMarvelVideoActivity.u(a) && a.i == g && AdMarvelVideoActivity.a(a) != null)
            {
                AdMarvelVideoActivity.a(a).pause();
                a.i = c;
                AdMarvelVideoActivity.e(a, false);
            }
        }
    }

    (AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
