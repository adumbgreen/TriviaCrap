// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.a;

import com.etermax.gamescommon.b.l;

public class c extends l
{

    public c()
    {
        e("duel_ended");
    }

    public void a(int i)
    {
        a("participantes", String.valueOf(i));
    }

    public void a(long l1)
    {
        a("time_elapsed", String.valueOf(l1));
    }

    public void a(String s)
    {
        a("tipo", s);
    }

    public void b(String s)
    {
        a("motivo", s);
    }

    public void c(String s)
    {
        a("ganador", s);
    }
}
