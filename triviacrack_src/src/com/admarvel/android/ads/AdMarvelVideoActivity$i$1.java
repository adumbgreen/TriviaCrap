// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        if (!a(a))
        {
            return;
        }
        a(a).post(a(a));
        if (a(a))
        {
            a(a, false);
            return;
        } else
        {
            a(a).postDelayed(a(a), a(a));
            return;
        }
    }

    ( )
    {
        a = ;
        super();
    }
}
