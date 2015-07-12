// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            e, c, g

public class f
{

    private Bundle a;

    private f()
    {
        a = new Bundle();
    }

    f(e._cls1 _pcls1)
    {
        this();
    }

    public c a()
    {
        e e1 = new e();
        e1.setArguments(a);
        return e1;
    }

    public f a(GameDTO gamedto)
    {
        a.putSerializable("mGameDTO", gamedto);
        return this;
    }

    public f a(g g)
    {
        a.putSerializable("mTheme", g);
        return this;
    }
}
