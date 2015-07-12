// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import org.json.JSONArray;

// Referenced classes of package com.millennialmedia.android:
//            BridgeMMCachedVideo, VideoAd, CachedAd

class > extends >
{

    final Context a;
    final JSONArray b;
    final BridgeMMCachedVideo c;

    boolean a(CachedAd cachedad)
    {
        if ((cachedad instanceof VideoAd) && cachedad.d(a) && !cachedad.a())
        {
            b.put(cachedad.e());
        }
        return true;
    }

    (BridgeMMCachedVideo bridgemmcachedvideo, Context context, JSONArray jsonarray)
    {
        c = bridgemmcachedvideo;
        a = context;
        b = jsonarray;
        super();
    }
}
