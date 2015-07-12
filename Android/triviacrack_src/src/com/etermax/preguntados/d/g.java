// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.os.Bundle;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.d:
//            f, c

public class g
{

    private Bundle a;

    private g()
    {
        a = new Bundle();
    }

    g(f._cls1 _pcls1)
    {
        this();
    }

    public c a()
    {
        f f1 = new f();
        f1.setArguments(a);
        return f1;
    }

    public g a(ArrayList arraylist)
    {
        a.putSerializable("mInactiveUsers", arraylist);
        return this;
    }
}
