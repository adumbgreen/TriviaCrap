// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import com.etermax.gamescommon.notification.a.a;
import com.etermax.gamescommon.notification.h;
import com.etermax.o;
import com.etermax.preguntados.notification.b;
import com.etermax.preguntados.ui.questionsfactory.statistics.StatisticsActivity;

public class p extends a
{

    public p(Context context, Bundle bundle)
    {
        super(context, bundle);
    }

    public transient SpannableString a(h h, Object aobj[])
    {
        return null;
    }

    public void a(android.support.v4.app.NotificationCompat.Builder builder, h h)
    {
        builder.setContentIntent(PendingIntent.getActivity(a, (int)System.currentTimeMillis(), StatisticsActivity.a(a).setFlags(0x4000000), 0x10000000));
    }

    public boolean b()
    {
        return true;
    }

    public int c()
    {
        return b.c.a();
    }

    public SpannableString d()
    {
        return SpannableString.valueOf(a.getString(o.notification_approved_question));
    }

    public SpannableString e()
    {
        return null;
    }
}
