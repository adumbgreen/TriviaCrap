// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.os.Handler;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            ImageViewTouchBase

class f
    implements Runnable
{

    final float a;
    final long b;
    final float c;
    final float d;
    final float e;
    final float f;
    final ImageViewTouchBase g;

    public void run()
    {
        long l = System.currentTimeMillis();
        float f1 = Math.min(a, l - b);
        float f2 = c + f1 * d;
        g.a(f2, e, f);
        if (f1 < a)
        {
            g.p.post(this);
        }
    }

    (ImageViewTouchBase imageviewtouchbase, float f1, long l, float f2, float f3, float f4, 
            float f5)
    {
        g = imageviewtouchbase;
        a = f1;
        b = l;
        c = f2;
        d = f3;
        e = f4;
        f = f5;
        super();
    }
}
