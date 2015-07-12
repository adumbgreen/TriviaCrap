// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.content.Context;
import android.content.Intent;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            DuelModeResultsActivity_, g

public class b
{

    private Context a;
    private final Intent b;

    public b(Context context)
    {
        a = context;
        b = new Intent(context, com/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_);
    }

    public Intent a()
    {
        return b;
    }

    public b a(GameDTO gamedto)
    {
        b.putExtra("mGameDTO", gamedto);
        return this;
    }

    public b a(g g)
    {
        b.putExtra("mTheme", g);
        return this;
    }
}
