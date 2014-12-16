// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user.b;

import com.etermax.gamescommon.h.a.e;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.user.b:
//            a, c

public class d extends a
{

    List c;
    int d;

    public d(e e, int i)
    {
        super(c.b, e);
        c = new ArrayList();
        d = i;
    }

    public void a(UserDTO userdto)
    {
        c.add(userdto);
    }

    public List c()
    {
        return c;
    }

    public int d()
    {
        return d;
    }
}
