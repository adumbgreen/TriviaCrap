// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;

import android.text.TextUtils;
import com.etermax.tools.f.a.a;
import com.etermax.tools.f.c;

public class q extends a
{

    public q(boolean flag, String s)
    {
        if (flag)
        {
            e("publish_action_skip");
        } else
        {
            e("publish_action_accept");
        }
        if (!TextUtils.isEmpty(s))
        {
            a("from", s);
        }
    }

    public c[] b()
    {
        return P;
    }
}
