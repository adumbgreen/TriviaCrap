// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.net.http.HttpResponseCache;

// Referenced classes of package com.b.a:
//            au

class at
{

    static Object a(Context context)
    {
        java.io.File file = au.b(context);
        HttpResponseCache httpresponsecache = HttpResponseCache.getInstalled();
        if (httpresponsecache == null)
        {
            httpresponsecache = HttpResponseCache.install(file, au.a(file));
        }
        return httpresponsecache;
    }
}
