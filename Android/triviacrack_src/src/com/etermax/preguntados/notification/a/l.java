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
import com.etermax.gamescommon.notification.h;
import com.etermax.m;
import com.etermax.o;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;

// Referenced classes of package com.etermax.preguntados.notification.a:
//            b

public class l extends com.etermax.preguntados.notification.a.b
{

    final long j;
    final String k;

    public l(Context context, Bundle bundle)
    {
        super(context, bundle);
        j = a(b, "data.NID");
        k = a(b(b, "data.UNM"));
    }

    public transient SpannableString a(h h1, Object aobj[])
    {
        if (h1 == h.c)
        {
            return SpannableString.valueOf(a.getString(o.new_messages_conversations, aobj));
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
        b1.a(Integer.valueOf(c())).a(d()).b(Long.valueOf(j)).a(k);
        return b1;
    }

    public void a(android.support.v4.app.NotificationCompat.Builder builder, h h1)
    {
        builder.setContentIntent(i());
        if (h1 == h.a)
        {
            builder.addAction(com.etermax.h.icono_notif_perfil, a.getString(o.view_profile), h());
        }
    }

    public boolean b()
    {
        return true;
    }

    public int c()
    {
        return com.etermax.preguntados.notification.b.c.a();
    }

    public SpannableString d()
    {
        Context context = a;
        int i1 = o.notification_user_joined;
        Object aobj[] = new Object[1];
        aobj[0] = k;
        return SpannableString.valueOf(context.getString(i1, aobj));
    }

    public SpannableString e()
    {
        return null;
    }

    public PendingIntent h()
    {
        Intent intent = DashboardActivity.a(a);
        intent.setFlags(0x4000000);
        intent.putExtra("type", c);
        intent.putExtra("go_to_profile", true);
        if (j != -1L)
        {
            intent.putExtra("opponentId", j);
        }
        return PendingIntent.getActivity(a, (int)System.currentTimeMillis(), intent, 0x10000000);
    }

    public PendingIntent i()
    {
        return PendingIntent.getActivity(a, (int)System.currentTimeMillis(), DashboardActivity.a(a).setFlags(0x4000000), 0x10000000);
    }
}
