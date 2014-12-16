// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.e;

import android.content.Context;
import com.etermax.gamescommon.datasource.dto.AppConfigDTO;
import com.etermax.gamescommon.datasource.j;
import com.etermax.gamescommon.login.datasource.c;

public class a
{

    AppConfigDTO a;
    long b;
    int c;
    c d;
    j e;

    public a()
    {
        a = null;
    }

    public long a()
    {
        return b;
    }

    public AppConfigDTO a(AppConfigDTO appconfigdto, Class class1)
    {
        if (a == null)
        {
            a = (AppConfigDTO)e.a("com.etermax.common.appConfig", class1);
            if (a == null)
            {
                return appconfigdto;
            } else
            {
                return a;
            }
        } else
        {
            return a;
        }
    }

    public void a(int i)
    {
        c = i;
    }

    public void a(long l)
    {
        b = l;
    }

    public void a(Context context, String s)
    {
        String s1 = com.google.android.gcm.a.d(context);
        if (s1.length() > 0 && !s1.equals(s))
        {
            d.d(s1);
        }
    }

    public void a(AppConfigDTO appconfigdto)
    {
        a = appconfigdto;
        e.a("com.etermax.common.appConfig", appconfigdto);
    }
}
