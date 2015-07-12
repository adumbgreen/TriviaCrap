// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import com.etermax.gamescommon.notification.a.a;
import com.etermax.gamescommon.notification.h;
import com.etermax.o;
import com.etermax.preguntados.notification.b;

public class s extends a
{

    private String g;
    private String h;
    private String i;

    public s(Context context, Bundle bundle)
    {
        super(context, bundle);
        g = a(b(bundle, "data.NME"));
        h = a(b(bundle, "data.ANME"));
        i = a(b(bundle, "data.LNK"));
    }

    private Intent f()
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(i));
        return intent;
    }

    public transient SpannableString a(h h1, Object aobj[])
    {
        return null;
    }

    public void a(android.support.v4.app.NotificationCompat.Builder builder, h h1)
    {
        builder.setContentIntent(PendingIntent.getActivity(a, 0, f(), 0));
    }

    public boolean b()
    {
        return false;
    }

    public int c()
    {
        return b.c.a();
    }

    public SpannableString d()
    {
        Context context = a;
        int j = o.notification_user_invitation;
        Object aobj[] = new Object[2];
        aobj[0] = g;
        aobj[1] = h;
        return SpannableString.valueOf(context.getString(j, aobj));
    }

    public SpannableString e()
    {
        return null;
    }
}
