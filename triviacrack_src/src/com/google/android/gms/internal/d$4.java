// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, d, b, fx, 
//            fz

class a
    implements al
{

    final d a;

    public void a(fz fz, Map map)
    {
        if (map.containsKey("pingType") && "unloadPing".equals(map.get("pingType")))
        {
            a.c(d.a(a));
            fx.c((new StringBuilder()).append("Unregistered GMSG handlers for: ").append(d.b(a).d()).toString());
        }
    }

    (d d1)
    {
        a = d1;
        super();
    }
}
