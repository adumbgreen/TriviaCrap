// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.a;

import com.etermax.gamescommon.b.l;

public class j extends l
{

    public j()
    {
        e("user_ended_game");
    }

    public void a(Integer integer)
    {
        a("turns_played", String.valueOf(integer));
    }

    public void a(Long long1)
    {
        a("time_elapsed", String.valueOf(long1));
    }

    public void a(String s)
    {
        a("reason", s);
    }
}
