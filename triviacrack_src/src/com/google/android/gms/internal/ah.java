// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, fx, ai, fz

public final class ah
    implements al
{

    private final ai a;

    public ah(ai ai1)
    {
        a = ai1;
    }

    public void a(fz fz, Map map)
    {
        String s = (String)map.get("name");
        if (s == null)
        {
            fx.e("App event with no name parameter.");
            return;
        } else
        {
            a.a(s, (String)map.get("info"));
            return;
        }
    }
}
