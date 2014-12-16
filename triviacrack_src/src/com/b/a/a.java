// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

// Referenced classes of package com.b.a:
//            b, aa, ai, ae

abstract class a
{

    final aa a;
    final ai b;
    final WeakReference c;
    final boolean d;
    final boolean e;
    final int f;
    final Drawable g;
    final String h;
    boolean i;
    boolean j;

    a(aa aa1, Object obj, ai ai, boolean flag, boolean flag1, int k, Drawable drawable, 
            String s)
    {
        a = aa1;
        b = ai;
        c = new b(this, obj, aa1.i);
        d = flag;
        e = flag1;
        f = k;
        g = drawable;
        h = s;
    }

    abstract void a();

    abstract void a(Bitmap bitmap, ae ae);

    void b()
    {
        j = true;
    }

    ai c()
    {
        return b;
    }

    Object d()
    {
        return c.get();
    }

    String e()
    {
        return h;
    }

    boolean f()
    {
        return j;
    }

    boolean g()
    {
        return i;
    }

    aa h()
    {
        return a;
    }
}
