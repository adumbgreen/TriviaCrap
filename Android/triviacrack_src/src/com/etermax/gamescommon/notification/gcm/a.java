// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification.gcm;

import android.content.Context;
import com.etermax.gamescommon.notification.c;

// Referenced classes of package com.etermax.gamescommon.notification.gcm:
//            b

public class a
    implements c
{

    public a()
    {
    }

    public String a(Context context)
    {
        return com.google.android.gcm.a.d(context);
    }

    public void a(Context context, com.etermax.gamescommon.login.datasource.c c1)
    {
        String s;
        com.google.android.gcm.a.a(context);
        s = com.google.android.gcm.a.d(context);
        if (s.length() == 0)
        {
            String as[] = new String[1];
            as[0] = ((b)context).i();
            com.google.android.gcm.a.a(context, as);
            return;
        }
        try
        {
            if (!com.google.android.gcm.a.g(context))
            {
                c1.d(s);
                return;
            }
        }
        catch (UnsupportedOperationException unsupportedoperationexception) { }
        return;
    }

    public void a(Context context, boolean flag)
    {
        com.google.android.gcm.a.a(context, flag);
    }
}
