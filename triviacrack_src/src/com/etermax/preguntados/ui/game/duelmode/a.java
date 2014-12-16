// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.content.Context;
import android.content.Intent;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            DuelModeActivity_, g

public class a
{

    private Context a;
    private final Intent b;

    public a(Context context)
    {
        a = context;
        b = new Intent(context, com/etermax/preguntados/ui/game/duelmode/DuelModeActivity_);
    }

    public Intent a()
    {
        return b;
    }

    public a a(GameDTO gamedto)
    {
        b.putExtra("mGameDTO", gamedto);
        return this;
    }

    public a a(g g)
    {
        b.putExtra("mTheme", g);
        return this;
    }
}
