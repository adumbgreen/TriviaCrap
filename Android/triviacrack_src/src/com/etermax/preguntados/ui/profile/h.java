// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.os.Bundle;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            g, e

public class h
{

    private Bundle a;

    private h()
    {
        a = new Bundle();
    }

    h(g._cls1 _pcls1)
    {
        this();
    }

    public e a()
    {
        g g1 = new g();
        g1.setArguments(a);
        return g1;
    }

    public h a(long l)
    {
        a.putLong("mConsultedUser", l);
        return this;
    }

    public h a(String s)
    {
        a.putString("mFrom", s);
        return this;
    }
}
