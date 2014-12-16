// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.e;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;

// Referenced classes of package com.etermax.tools.e:
//            a

class LruCache extends LruCache
{

    final a a;

    protected int a(String s, Bitmap bitmap)
    {
        if (android.os.d.VERSION.SDK_INT < 12)
        {
            return (bitmap.getRowBytes() * bitmap.getHeight()) / 1024;
        } else
        {
            return bitmap.getByteCount() / 1024;
        }
    }

    protected int sizeOf(Object obj, Object obj1)
    {
        return a((String)obj, (Bitmap)obj1);
    }

    (a a1, int i)
    {
        a = a1;
        super(i);
    }
}
