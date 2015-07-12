// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;


public final class n extends Enum
{

    public static final n a;
    public static final n b;
    public static final n c;
    private static final n d[];

    private n(String s, int i)
    {
        super(s, i);
    }

    public static n valueOf(String s)
    {
        return (n)Enum.valueOf(com/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n, s);
    }

    public static n[] values()
    {
        return (n[])d.clone();
    }

    static 
    {
        a = new n("CATEGORY_HEADER", 0);
        b = new n("QUESTION", 1);
        c = new n("VIEW_MORE", 2);
        n an[] = new n[3];
        an[0] = a;
        an[1] = b;
        an[2] = c;
        d = an;
    }
}
