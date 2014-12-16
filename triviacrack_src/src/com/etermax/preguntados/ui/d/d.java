// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.GameDTO;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            c, a

public class d
{

    private Bundle a;

    private d()
    {
        a = new Bundle();
    }

    d(c._cls1 _pcls1)
    {
        this();
    }

    public a a()
    {
        c c1 = new c();
        c1.setArguments(a);
        return c1;
    }

    public d a(int i)
    {
        a.putInt("mTipType", i);
        return this;
    }

    public d a(GameDTO gamedto)
    {
        a.putSerializable("mGame", gamedto);
        return this;
    }

    public d b(int i)
    {
        a.putInt("mToTypeQuestion", i);
        return this;
    }
}
