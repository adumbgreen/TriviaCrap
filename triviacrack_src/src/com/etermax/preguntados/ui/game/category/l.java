// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            k, i

public class l
{

    private Bundle a;

    private l()
    {
        a = new Bundle();
    }

    l(k._cls1 _pcls1)
    {
        this();
    }

    public i a()
    {
        k k1 = new k();
        k1.setArguments(a);
        return k1;
    }

    public l a(GameDTO gamedto)
    {
        a.putSerializable("mGameDTO", gamedto);
        return this;
    }
}
