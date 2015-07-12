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
import com.etermax.gamescommon.notification.a.a;
import com.etermax.gamescommon.notification.h;
import com.etermax.m;
import com.etermax.o;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;

public abstract class b extends a
{

    protected long g;
    protected String h;
    protected long i;

    public b(Context context, Bundle bundle)
    {
        super(context, bundle);
        g = a(b, "data.GID");
        h = a(b(b, "data.OPP"));
        i = a(b, "data.U");
    }

    public transient SpannableString a(h h1, Object aobj[])
    {
        if (h1 == h.c)
        {
            return SpannableString.valueOf(a.getString(o.x_game_notifications, aobj));
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

    public com.etermax.gamescommon.f.b.b a()
    {
        com.etermax.gamescommon.f.b.b b1 = super.a();
        b1.a(Long.valueOf(g)).b(Long.valueOf(i)).a(h);
        return b1;
    }

    public void a(android.support.v4.app.NotificationCompat.Builder builder, h h1)
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.etermax.gamescommon.notification.h.values().length];
                try
                {
                    a[h.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[h.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[h.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (com.etermax.preguntados.notification.a._cls1.a[h1.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
        case 2: // '\002'
            builder.setContentIntent(f());
            return;

        case 3: // '\003'
            builder.setContentIntent(g());
            break;
        }
    }

    public boolean b()
    {
        return true;
    }

    public int c()
    {
        return com.etermax.preguntados.notification.b.a.a();
    }

    public SpannableString e()
    {
        return null;
    }

    public PendingIntent f()
    {
        Intent intent = DashboardActivity.a(a);
        intent.setFlags(0x4000000);
        intent.putExtra("type", c);
        intent.putExtra("gameId", g);
        return PendingIntent.getActivity(a, (int)System.currentTimeMillis(), intent, 0x10000000);
    }

    public PendingIntent g()
    {
        return PendingIntent.getActivity(a, (int)System.currentTimeMillis(), DashboardActivity.a(a).setFlags(0x4000000), 0x10000000);
    }
}
