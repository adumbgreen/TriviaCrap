// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.tools.widget.a.g;

public class c extends g
{

    private int a;

    public c(DuelPlayerDTO duelplayerdto, int i, int j)
    {
        super(duelplayerdto, i);
        a = j;
    }

    public int a()
    {
        return a;
    }
}
