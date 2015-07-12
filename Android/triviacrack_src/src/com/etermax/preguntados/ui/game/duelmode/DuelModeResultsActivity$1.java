// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            DuelModeResultsActivity, c

class a extends a
{

    final long a;
    final DuelModeResultsActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(DuelModeResultsActivity duelmoderesultsactivity, GameDTO gamedto)
    {
        super.a(duelmoderesultsactivity, gamedto);
        b.e = gamedto;
        android.support.v4.app.Fragment fragment = com.etermax.preguntados.ui.game.duelmode.c.a(gamedto, b.f);
        com.etermax.preguntados.ui.game.duelmode.DuelModeResultsActivity.a(b, fragment, false);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((DuelModeResultsActivity)obj, (GameDTO)obj1);
    }

    public GameDTO b()
    {
        return b.b.d(a);
    }

    (DuelModeResultsActivity duelmoderesultsactivity, String s, long l)
    {
        b = duelmoderesultsactivity;
        a = l;
        super(s);
    }
}
