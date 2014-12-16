// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification;

import android.content.Context;
import com.etermax.gamescommon.notification.a.a;
import com.etermax.gamescommon.notification.g;
import org.a.a.b;

// Referenced classes of package com.etermax.preguntados.notification:
//            PreguntadosNotificationReceiver_

class c extends b
{

    final Context a;
    final a b;
    final g c;
    final PreguntadosNotificationReceiver_ d;

    public void a()
    {
        try
        {
            com.etermax.preguntados.notification.PreguntadosNotificationReceiver_.a(d, a, b, c);
            return;
        }
        catch (Throwable throwable)
        {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
        }
    }

    (PreguntadosNotificationReceiver_ preguntadosnotificationreceiver_, String s, int i, String s1, Context context, a a1, g g)
    {
        d = preguntadosnotificationreceiver_;
        a = context;
        b = a1;
        c = g;
        super(s, i, s1);
    }
}
