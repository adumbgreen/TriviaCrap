// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import android.content.Context;

// Referenced classes of package com.admarvel.android.util:
//            e, Logging

public class b
    implements Runnable
{

    final e a;
    private final Context b;

    public void run()
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        e.d(b);
        return;
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append("FetchAndroidAdvertisingIdUsingIntentRunnable error ").append(exception.getMessage()).toString());
        return;
    }

    public ing(e e1, Context context)
    {
        a = e1;
        super();
        b = context;
    }
}
