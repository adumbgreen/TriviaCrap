// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.e;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;

public class a
{

    private LruCache a;

    public a(int i)
    {
        a = new LruCache(i) {

            final a a;

            protected int a(String s, Bitmap bitmap)
            {
                if (android.os.Build.VERSION.SDK_INT < 12)
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

            
            {
                a = a.this;
                super(i);
            }
        };
    }

    public Bitmap a(String s)
    {
        Bitmap bitmap;
        try
        {
            bitmap = (Bitmap)a.get(s);
        }
        catch (NullPointerException nullpointerexception)
        {
            nullpointerexception.printStackTrace();
            return null;
        }
        return bitmap;
    }

    public void a(String s, Bitmap bitmap)
    {
        try
        {
            a.put(s, bitmap);
            return;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
        }
    }
}
