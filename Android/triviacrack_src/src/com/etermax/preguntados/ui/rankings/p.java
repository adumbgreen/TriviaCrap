// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.UserRankDTO;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            o, m

public class p
{

    private Bundle a;

    private p()
    {
        a = new Bundle();
    }

    p(o._cls1 _pcls1)
    {
        this();
    }

    public m a()
    {
        o o1 = new o();
        o1.setArguments(a);
        return o1;
    }

    public p a(UserRankDTO userrankdto)
    {
        a.putSerializable("userRankDTO", userrankdto);
        return this;
    }
}
