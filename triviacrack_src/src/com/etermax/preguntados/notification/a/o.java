// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import com.etermax.gamescommon.f.b.b;
import com.etermax.gamescommon.notification.ChatNotificationCleanningService_;
import com.etermax.gamescommon.notification.a.a;
import com.etermax.gamescommon.notification.h;
import com.etermax.m;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;

public class o extends a
{

    protected long g;
    protected String h;
    protected long i;
    protected String j;
    protected Integer k;

    public o(Context context, Bundle bundle)
    {
        super(context, bundle);
        g = a(b, "data.GID");
        h = a(b(b, "data.OPP"));
        i = a(b, "data.U");
        k = a(b, "data.MID", null);
        j = a(b.getString("data.M"));
    }

    public transient SpannableString a(h h1, Object aobj[])
    {
        if (h1 == h.c)
        {
            return SpannableString.valueOf(a.getString(com.etermax.o.new_messages_conversations, aobj));
        }
        if (h1 == h.b)
        {
            Integer integer = (Integer)aobj[0];
            return SpannableString.valueOf(a.getResources().getQuantityString(m.new_messages, integer.intValue(), aobj));
        } else
        {
            return null;
        }
    }

    public b a()
    {
        b b1 = super.a();
        b1.b(Long.valueOf(i)).a(h).b(k);
        return b1;
    }

    public void a(android.support.v4.app.NotificationCompat.Builder builder, h h1)
    {
        Intent intent;
        PendingIntent pendingintent;
        if (h1 == h.c)
        {
            builder.setContentIntent(g());
        } else
        {
            builder.setContentIntent(f());
        }
        intent = ChatNotificationCleanningService_.a(a).();
        intent.putExtra("notiId", c());
        pendingintent = PendingIntent.getService(a, (int)System.currentTimeMillis(), intent, 0);
        builder.addAction(com.etermax.h.icono_notif_leido, a.getString(com.etermax.o.message_read), pendingintent);
    }

    public boolean b()
    {
        return true;
    }

    public int c()
    {
        return com.etermax.preguntados.notification.b.b.a();
    }

    public SpannableString d()
    {
        return SpannableString.valueOf(j);
    }

    public SpannableString e()
    {
        Context context = a;
        int l = com.etermax.o.notification_new_message;
        Object aobj[] = new Object[2];
        aobj[0] = h;
        aobj[1] = j;
        return SpannableString.valueOf(context.getString(l, aobj));
    }

    public PendingIntent f()
    {
        Intent intent = DashboardActivity.a(a);
        intent.setFlags(0x4000000);
        intent.putExtra("type", c);
        intent.putExtra("gameId", g);
        intent.putExtra("data.U", i);
        intent.putExtra("data.OPP", h);
        intent.putExtra("go_to_chat", true);
        return PendingIntent.getActivity(a, (int)System.currentTimeMillis(), intent, 0x10000000);
    }

    public PendingIntent g()
    {
        return PendingIntent.getActivity(a, (int)System.currentTimeMillis(), DashboardActivity.a(a).setFlags(0x4000000), 0x10000000);
    }
}
