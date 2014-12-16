// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class f
{

    public static void a(Context context, Bundle bundle)
    {
        if (bundle.containsKey("content"))
        {
            String as[] = bundle.getString("content").split("&");
            Intent intent = new Intent("com.etermax.DISPLAY_MESSAGE");
            int i = as.length;
            for (int j = 0; j < i; j++)
            {
                String as1[] = as[j].split("=");
                intent.putExtra(as1[0], as1[1]);
            }

            context.sendBroadcast(intent, null);
        }
    }
}
