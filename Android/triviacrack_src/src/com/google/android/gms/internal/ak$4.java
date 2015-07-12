// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, ak, fz, fx, 
//            bx

final class 
    implements al
{

    public void a(fz fz1, Map map)
    {
        bx bx1 = fz1.d();
        if (bx1 == null)
        {
            fx.e("A GMSG tried to close something that wasn't an overlay.");
            return;
        } else
        {
            bx1.a();
            return;
        }
    }

    ()
    {
    }
}
