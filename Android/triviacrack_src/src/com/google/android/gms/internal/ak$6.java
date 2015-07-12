// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, ak, fx, fv, 
//            fz, ew

final class 
    implements al
{

    public void a(fz fz1, Map map)
    {
        String s = (String)map.get("u");
        if (s == null)
        {
            fx.e("URL missing from httpTrack GMSG.");
            return;
        } else
        {
            (new fv(fz1.getContext(), fz1.h().b, s)).e();
            return;
        }
    }

    ()
    {
    }
}
