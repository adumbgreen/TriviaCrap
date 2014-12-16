// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import com.etermax.gamescommon.k;
import com.etermax.gamescommon.login.datasource.a;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            g

class a
    implements k
{

    final g a;

    public String getFacebookId()
    {
        return a.a.j();
    }

    public Long getId()
    {
        return Long.valueOf(a.a.e());
    }

    public String getName()
    {
        return a.a.g();
    }

    public String getPhotoUrl()
    {
        return null;
    }

    public boolean isFbShowPicture()
    {
        return true;
    }

    tasource.a(g g1)
    {
        a = g1;
        super();
    }
}
