// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import java.util.Set;

// Referenced classes of package com.millennialmedia.android:
//            AdCache, CachedAd

final class erator extends erator
{

    final Context a;
    final Set b;

    boolean a(CachedAd cachedad)
    {
        if (cachedad.a != null && cachedad.c() == 1 && cachedad.d(a))
        {
            b.add(cachedad.a);
        }
        return true;
    }

    erator(Context context, Set set)
    {
        a = context;
        b = set;
        super();
    }
}
