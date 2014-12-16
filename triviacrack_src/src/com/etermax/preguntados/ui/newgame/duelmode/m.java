// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Bundle;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            l, j

public class m
{

    private Bundle a;

    private m()
    {
        a = new Bundle();
    }

    m(l._cls1 _pcls1)
    {
        this();
    }

    public j a()
    {
        l l1 = new l();
        l1.setArguments(a);
        return l1;
    }

    public m a(String s)
    {
        a.putString("mDuelName", s);
        return this;
    }

    public m a(ArrayList arraylist)
    {
        a.putSerializable("mAddedPlayers", arraylist);
        return this;
    }

    public m b(ArrayList arraylist)
    {
        a.putSerializable("mFriends", arraylist);
        return this;
    }
}
