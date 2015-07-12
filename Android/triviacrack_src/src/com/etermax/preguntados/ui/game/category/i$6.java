// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            i

class a extends a
{

    final long a;
    final i b;

    public Object a()
    {
        return b();
    }

    protected void a(i j, GameDTO gamedto)
    {
        super.a(j, gamedto);
        b.a = gamedto;
        b.c();
        b.b();
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((i)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return b.c.d(a);
    }

    O(i j, String s, long l)
    {
        b = j;
        a = l;
        super(s);
    }
}
