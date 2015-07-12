// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Bundle;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            h, f

public class i
{

    private Bundle a;

    private i()
    {
        a = new Bundle();
    }

    i(h._cls1 _pcls1)
    {
        this();
    }

    public f a()
    {
        h h1 = new h();
        h1.setArguments(a);
        return h1;
    }

    public i a(String s)
    {
        a.putString("mDuelName", s);
        return this;
    }

    public i a(ArrayList arraylist)
    {
        a.putSerializable("mPreselectedFriends", arraylist);
        return this;
    }
}
