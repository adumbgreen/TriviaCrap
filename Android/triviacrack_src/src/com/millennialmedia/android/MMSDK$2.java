// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;

// Referenced classes of package com.millennialmedia.android:
//            MMSDK, CachedAd, MMLog

final class Iterator extends Iterator
{

    final Context a;

    boolean a(CachedAd cachedad)
    {
        Object aobj[] = new Object[4];
        aobj[0] = cachedad.d();
        aobj[1] = cachedad.e();
        String s;
        String s1;
        if (cachedad.d(a))
        {
            s = "";
        } else
        {
            s = "not ";
        }
        aobj[2] = s;
        if (cachedad.a())
        {
            s1 = "";
        } else
        {
            s1 = "not ";
        }
        aobj[3] = s1;
        MMLog.c("MMSDK", String.format("%s %s is %son disk. Is %sexpired.", aobj));
        return true;
    }

    (Context context)
    {
        a = context;
        super();
    }
}
