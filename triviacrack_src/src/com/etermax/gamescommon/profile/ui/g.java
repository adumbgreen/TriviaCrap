// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.os.Bundle;
import com.etermax.gamescommon.k;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            f, e

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

    public e a()
    {
        f f1 = new f();
        f1.setArguments(a);
        return f1;
    }

    public g a(k k)
    {
        a.putSerializable("mUser", k);
        return this;
    }
}
