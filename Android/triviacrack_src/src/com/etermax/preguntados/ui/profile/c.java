// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.os.Bundle;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            b, a

public class c
{

    private Bundle a;

    private c()
    {
        a = new Bundle();
    }

    c(b._cls1 _pcls1)
    {
        this();
    }

    public a a()
    {
        b b1 = new b();
        b1.setArguments(a);
        return b1;
    }

    public c a(long l)
    {
        a.putLong("mUserId", l);
        return this;
    }
}
