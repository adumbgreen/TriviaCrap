// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, ak, fz, ik, 
//            gw, fx

final class 
    implements al
{

    public void a(fz fz1, Map map)
    {
        String s = (String)map.get("tx");
        String s1 = (String)map.get("ty");
        String s2 = (String)map.get("td");
        int i;
        int j;
        int k;
        ik ik1;
        try
        {
            i = Integer.parseInt(s);
            j = Integer.parseInt(s1);
            k = Integer.parseInt(s2);
            ik1 = fz1.g();
        }
        catch (NumberFormatException numberformatexception)
        {
            fx.e("Could not parse touch parameters from gmsg.");
            return;
        }
        if (ik1 == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        ik1.a().a(i, j, k);
    }

    ()
    {
    }
}
