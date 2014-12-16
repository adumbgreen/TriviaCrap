// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import com.etermax.gamescommon.notification.h;
import com.etermax.o;
import com.etermax.preguntados.notification.services.CommonNotificationActionService_;
import com.etermax.preguntados.notification.services.a;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;

// Referenced classes of package com.etermax.preguntados.notification.a:
//            b

public class n extends b
{

    public n(Context context, Bundle bundle)
    {
        super(context, bundle);
    }

    public void a(android.support.v4.app.NotificationCompat.Builder builder, h h1)
    {
        if (h1 == h.c)
        {
            builder.setContentIntent(g());
        } else
        {
            Intent intent = DashboardActivity.a(a);
            intent.setFlags(0x4000000);
            intent.putExtra("type", c);
            intent.putExtra("gameId", g);
            builder.setContentIntent(PendingIntent.getActivity(a, (int)System.currentTimeMillis(), intent, 0x10000000));
            if (h1 == h.a)
            {
                Intent intent1 = DashboardActivity.a(a);
                intent1.setFlags(0x4000000);
                intent1.putExtra("type", c);
                intent1.putExtra("gameId", g);
                intent1.putExtra("acceptNewGame", true);
                PendingIntent pendingintent = PendingIntent.getActivity(a, (int)System.currentTimeMillis(), intent1, 0x10000000);
                builder.addAction(com.etermax.h.icono_notif_aceptar, a.getString(o.accept), pendingintent);
                Intent intent2 = CommonNotificationActionService_.a(a).a();
                intent2.putExtra("action", 0);
                intent2.putExtra("gameId", g);
                intent2.putExtra("notiId", c());
                PendingIntent pendingintent1 = PendingIntent.getService(a, (int)System.currentTimeMillis(), intent2, 0);
                builder.addAction(com.etermax.h.icono_notif_rechazar, a.getString(o.reject), pendingintent1);
                return;
            }
        }
    }

    public SpannableString d()
    {
        Context context = a;
        int i = o.notification_new_game;
        Object aobj[] = new Object[1];
        aobj[0] = h;
        return SpannableString.valueOf(context.getString(i, aobj));
    }
}
