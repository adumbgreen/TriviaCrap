// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.a;

import com.etermax.gamescommon.b.l;

public class e extends l
{

    public e()
    {
        e("duel_played");
    }

    public void a(int i)
    {
        a("correct", String.valueOf(i));
    }

    public void a(long l1)
    {
        a("time_elapsed", String.valueOf(l1));
    }

    public void a(String s)
    {
        a("user", s);
    }

    public void b(String s)
    {
        a("type", s);
    }
}
