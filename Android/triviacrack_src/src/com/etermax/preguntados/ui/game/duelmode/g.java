// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;


public final class g extends Enum
{

    public static final g a;
    private static final g b[];

    private g(String s, int i)
    {
        super(s, i);
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/etermax/preguntados/ui/game/duelmode/g, s);
    }

    public static g[] values()
    {
        return (g[])b.clone();
    }

    static 
    {
        a = new g("NORMAL", 0);
        g ag[] = new g[1];
        ag[0] = a;
        b = ag;
    }
}
