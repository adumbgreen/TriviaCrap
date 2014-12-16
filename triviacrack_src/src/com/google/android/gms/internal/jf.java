// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            a, fz, d

class jf
    implements a
{

    private fz a;

    public jf(fz fz1)
    {
        a = fz1;
    }

    public void a(d d, boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        hashmap.put("isVisible", s);
        a.a("onAdVisibilityChanged", hashmap);
    }
}
