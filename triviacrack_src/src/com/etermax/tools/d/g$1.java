// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.d;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;

// Referenced classes of package com.etermax.tools.d:
//            g

class LruCache extends LruCache
{

    final g a;

    protected int a(String s, Bitmap bitmap)
    {
        int i = g.a(bitmap) / 1024;
        if (i == 0)
        {
            i = 1;
        }
        return i;
    }

    protected int sizeOf(Object obj, Object obj1)
    {
        return a((String)obj, (Bitmap)obj1);
    }

    LruCache(g g1, int i)
    {
        a = g1;
        super(i);
    }
}
