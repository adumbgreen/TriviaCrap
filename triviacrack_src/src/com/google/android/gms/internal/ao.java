// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, aq, fz

public class ao
    implements al
{

    private final aq a;

    public ao(aq aq1)
    {
        a = aq1;
    }

    public void a(fz fz, Map map)
    {
        boolean flag = "1".equals(map.get("transparentBackground"));
        a.a(flag);
    }
}
