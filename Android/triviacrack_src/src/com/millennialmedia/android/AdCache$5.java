// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;

// Referenced classes of package com.millennialmedia.android:
//            AdCache, CachedAd, MMLog

final class erator extends erator
{

    final Context a;

    boolean a(CachedAd cachedad)
    {
        Object aobj[] = new Object[1];
        aobj[0] = cachedad.e();
        MMLog.b("AdCache", String.format("Deleting ad %s.", aobj));
        cachedad.c(a);
        return true;
    }

    erator(Context context)
    {
        a = context;
        super();
    }
}
