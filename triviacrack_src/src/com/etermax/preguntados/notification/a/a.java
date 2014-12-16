// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.etermax.gamescommon.notification.h;
import com.etermax.o;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;

// Referenced classes of package com.etermax.preguntados.notification.a:
//            b

public abstract class a extends b
{

    public a(Context context, Bundle bundle)
    {
        super(context, bundle);
    }

    public void a(android.support.v4.app.NotificationCompat.Builder builder, h h1)
    {
        super.a(builder, h1);
        if (h1 == h.a)
        {
            Intent intent = DashboardActivity.a(a);
            intent.setFlags(0x4000000);
            intent.putExtra("type", c);
            intent.putExtra("gameId", g);
            intent.putExtra("userId", i);
            intent.putExtra("opponentName", h);
            intent.putExtra("rematchGame", true);
            PendingIntent pendingintent = PendingIntent.getActivity(a, (int)System.currentTimeMillis(), intent, 0x10000000);
            builder.addAction(com.etermax.h.icono_notif_play, a.getString(o.play_again), pendingintent);
        }
    }
}
