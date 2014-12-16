// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;

class a extends LruCache
{

    public a(int i)
    {
        super(i);
    }

    protected int a(String s, Bitmap bitmap)
    {
        if (bitmap != null)
        {
            return bitmap.getRowBytes() * bitmap.getHeight();
        } else
        {
            return super.sizeOf(s, bitmap);
        }
    }

    protected int sizeOf(Object obj, Object obj1)
    {
        return a((String)obj, (Bitmap)obj1);
    }
}
