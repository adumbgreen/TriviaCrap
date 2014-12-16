// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification;

import android.content.Context;
import android.content.Intent;
import com.etermax.gamescommon.datasource.m;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.notification.NotificationReceiver;
import com.etermax.gamescommon.notification.e;
import com.etermax.gamescommon.notification.g;
import org.a.a.a;
import org.a.a.b;

// Referenced classes of package com.etermax.preguntados.notification:
//            PreguntadosNotificationReceiver

public final class PreguntadosNotificationReceiver_ extends PreguntadosNotificationReceiver
{

    private Context e;

    public PreguntadosNotificationReceiver_()
    {
    }

    static void a(PreguntadosNotificationReceiver_ preguntadosnotificationreceiver_, Context context, com.etermax.gamescommon.notification.a.a a1, g g)
    {
        preguntadosnotificationreceiver_.NotificationReceiver.a(context, a1, g);
    }

    private void b()
    {
        b = m.a(e);
        c = com.etermax.gamescommon.notification.e.a(e);
        a = h.a(e);
        d = com.etermax.preguntados.datasource.e.a(e);
    }

    public void a(Context context, com.etermax.gamescommon.notification.a.a a1, g g)
    {
        org.a.a.a.a(new b("", 0, "", context, a1, g) {

            final Context a;
            final com.etermax.gamescommon.notification.a.a b;
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

            
            {
                d = PreguntadosNotificationReceiver_.this;
                a = context;
                b = a1;
                c = g;
                super(s, i, s1);
            }
        });
    }

    public void onReceive(Context context, Intent intent)
    {
        e = context;
        b();
        super.onReceive(context, intent);
    }
}
