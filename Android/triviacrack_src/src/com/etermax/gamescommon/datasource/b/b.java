// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.b;

import android.util.SparseIntArray;
import com.etermax.o;

public class b extends com.etermax.tools.a.c.b
{

    private static final SparseIntArray a;

    public b(org.b.e.a.b b1)
    {
        super(b1);
    }

    public int a()
    {
        return o.error_connection;
    }

    public final int b()
    {
        return a.get(c());
    }

    static 
    {
        a = new SparseIntArray();
        a.put(305, o.chat_game_deleted);
    }
}
