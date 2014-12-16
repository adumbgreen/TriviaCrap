// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller;

import com.smartadserver.android.library.d.a;

// Referenced classes of package com.smartadserver.android.library.controller:
//            a, b

class b
    implements Runnable
{

    final b a;
    final a b;
    final com.smartadserver.android.library.controller.a c;

    public void run()
    {
        a.adLoadingCompleted(b);
    }

    (com.smartadserver.android.library.controller.a a1, b b1, a a2)
    {
        c = a1;
        a = b1;
        b = a2;
        super();
    }
}
