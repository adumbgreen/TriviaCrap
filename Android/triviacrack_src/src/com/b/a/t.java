// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.b.a:
//            a, f, aa, ag, 
//            ai, ae

class t extends a
{

    f k;

    t(aa aa1, ImageView imageview, ai ai, boolean flag, boolean flag1, int i, Drawable drawable, 
            String s, f f1)
    {
        super(aa1, imageview, ai, flag, flag1, i, drawable, s);
        k = f1;
    }

    public void a()
    {
        ImageView imageview = (ImageView)c.get();
        if (imageview != null)
        {
            if (f != 0)
            {
                imageview.setImageResource(f);
            } else
            if (g != null)
            {
                imageview.setImageDrawable(g);
            }
            if (k != null)
            {
                k.b();
                return;
            }
        }
    }

    public void a(Bitmap bitmap, ae ae)
    {
        if (bitmap == null)
        {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] {
                this
            }));
        }
        ImageView imageview = (ImageView)c.get();
        if (imageview != null)
        {
            android.content.Context context = a.c;
            boolean flag = a.j;
            ag.a(imageview, context, bitmap, ae, e, flag);
            if (k != null)
            {
                k.a();
                return;
            }
        }
    }

    void b()
    {
        super.b();
        if (k != null)
        {
            k = null;
        }
    }
}
