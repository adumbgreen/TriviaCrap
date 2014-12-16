// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.shop.dto.TransactionInfo;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            e

class a
    implements c
{

    final TransactionInfo a;
    final e b;

    public Void a()
    {
        b.c.a(e.s(b).e(), a);
        return null;
    }

    public Object b()
    {
        return a();
    }

    tionInfo(e e1, TransactionInfo transactioninfo)
    {
        b = e1;
        a = transactioninfo;
        super();
    }
}
