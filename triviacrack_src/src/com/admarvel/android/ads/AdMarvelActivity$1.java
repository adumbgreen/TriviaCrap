// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity

class a
    implements Runnable
{

    final AdMarvelActivity a;

    public void run()
    {
        AdMarvelActivity.a(a, false);
        if (a.a == null) goto _L2; else goto _L1
_L1:
        a a1 = (a)a.a.get();
_L4:
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        a1.setCancelable(true);
        return;
_L2:
        a1 = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append("Exception in disable Back press button ").append(exception.getMessage()).toString());
        return;
    }

    (AdMarvelActivity admarvelactivity)
    {
        a = admarvelactivity;
        super();
    }
}
