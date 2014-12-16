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
import com.etermax.preguntados.ui.dashboard.DashboardActivity;

// Referenced classes of package com.etermax.preguntados.notification.a:
//            b

public class m extends b
{

    public m(Context context, Bundle bundle)
    {
        super(context, bundle);
    }

    public void a(android.support.v4.app.NotificationCompat.Builder builder, h h1)
    {
        if (h1 == h.c)
        {
            builder.setContentIntent(g());
            return;
        } else
        {
            Intent intent = DashboardActivity.a(a);
            intent.setFlags(0x4000000);
            intent.putExtra("type", c);
            intent.putExtra("gameId", g);
            builder.setContentIntent(PendingIntent.getActivity(a, (int)System.currentTimeMillis(), intent, 0x10000000));
            return;
        }
    }

    public SpannableString d()
    {
        Context context = a;
        int i = o.DUEL_STARTED;
        Object aobj[] = new Object[1];
        aobj[0] = h;
        return SpannableString.valueOf(context.getString(i, aobj));
    }
}
