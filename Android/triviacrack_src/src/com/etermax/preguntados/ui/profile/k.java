// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.os.Bundle;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            j, i

public class k
{

    private Bundle a;

    private k()
    {
        a = new Bundle();
    }

    k(j._cls1 _pcls1)
    {
        this();
    }

    public i a()
    {
        j j1 = new j();
        j1.setArguments(a);
        return j1;
    }

    public k a(long l)
    {
        a.putLong("mUserId", l);
        return this;
    }

    public k a(String s)
    {
        a.putString("mUsername", s);
        return this;
    }
}
