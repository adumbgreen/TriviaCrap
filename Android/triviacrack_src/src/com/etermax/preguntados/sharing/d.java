// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            c

public final class d extends com.etermax.preguntados.sharing.c
    implements a, b
{

    private boolean a;
    private final c b = new c();

    public d(Context context, GameDTO gamedto, g g)
    {
        super(context, gamedto, g);
        a = false;
        c();
    }

    public static com.etermax.preguntados.sharing.c a(Context context, GameDTO gamedto, g g)
    {
        d d1 = new d(context, gamedto, g);
        d1.onFinishInflate();
        return d1;
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(b);
        m = com.etermax.gamescommon.login.datasource.b.a(getContext());
        n = j.a(getContext());
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a();
    }

    public void onFinishInflate()
    {
        if (!a)
        {
            a = true;
            inflate(getContext(), 0x7f03009b, this);
            b.a(this);
        }
        super.onFinishInflate();
    }
}
