// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.a;

import com.etermax.gamescommon.b.l;

public class b extends l
{

    public b()
    {
        e("duel_created");
    }

    public void a(int i)
    {
        a("invitados", String.valueOf(i));
    }

    public void a(String s)
    {
        a("type", s);
    }

    public void b(String s)
    {
        a("country", s);
    }
}
