// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            ce, cd

class a
    implements Runnable
{

    final cd a;
    final ce b;
    private final WeakReference c;

    public void run()
    {
        cd cd1 = (cd)c.get();
        if (!ce.a(b) && cd1 != null)
        {
            cd1.e();
            b.b();
        }
    }

    (ce ce1, cd cd1)
    {
        b = ce1;
        a = cd1;
        super();
        c = new WeakReference(a);
    }
}
