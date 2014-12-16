// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

// Referenced classes of package com.b.a:
//            a, ap, aa, ai, 
//            ae

final class aq extends a
{

    aq(aa aa1, ap ap1, ai ai, boolean flag, int i, Drawable drawable, String s)
    {
        super(aa1, ap1, ai, flag, false, i, drawable, s);
    }

    void a()
    {
        ap ap1;
label0:
        {
            ap1 = (ap)d();
            if (ap1 != null)
            {
                if (f == 0)
                {
                    break label0;
                }
                ap1.a(a.c.getResources().getDrawable(f));
            }
            return;
        }
        ap1.a(g);
    }

    void a(Bitmap bitmap, ae ae)
    {
        if (bitmap == null)
        {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] {
                this
            }));
        }
        ap ap1 = (ap)d();
        if (ap1 != null)
        {
            ap1.a(bitmap, ae);
            if (bitmap.isRecycled())
            {
                throw new IllegalStateException("Target callback must not recycle bitmap!");
            }
        }
    }
}
