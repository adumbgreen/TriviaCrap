// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            i, j

class a extends a
{

    final i a;

    public Object a()
    {
        return b();
    }

    protected void a(i k, GameDTO gamedto)
    {
        super.a(k, gamedto);
        ((j)i.i(a)).a(gamedto);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((i)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return a.c.a(a.a.getId());
    }

    O(i k, String s)
    {
        a = k;
        super(s);
    }
}
