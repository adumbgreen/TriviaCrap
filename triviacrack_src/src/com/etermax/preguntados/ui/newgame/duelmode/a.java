// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.content.Context;
import android.content.Intent;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.ui.game.duelmode.g;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            NewDuelModeActivity_

public class a
{

    private Context a;
    private final Intent b;

    public a(Context context)
    {
        a = context;
        b = new Intent(context, com/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_);
    }

    public Intent a()
    {
        return b;
    }

    public a a(Language language)
    {
        b.putExtra("mSelectedLanguage", language);
        return this;
    }

    public a a(g g)
    {
        b.putExtra("mTheme", g);
        return this;
    }

    public a a(String s)
    {
        b.putExtra("mDuelName", s);
        return this;
    }

    public a a(ArrayList arraylist)
    {
        b.putExtra("mPreselectedFriends", arraylist);
        return this;
    }
}
