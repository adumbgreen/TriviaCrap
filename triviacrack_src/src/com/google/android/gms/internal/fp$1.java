// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Process;

// Referenced classes of package com.google.android.gms.internal:
//            fp

final class a
    implements Runnable
{

    final Runnable a;

    public void run()
    {
        Process.setThreadPriority(10);
        a.run();
    }

    (Runnable runnable)
    {
        a = runnable;
        super();
    }
}
