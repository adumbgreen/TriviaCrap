// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

// Referenced classes of package com.b.a:
//            d, ai, au, ae, 
//            aa, k, e, am, 
//            a

class al extends d
{

    private final Context o;

    al(Context context, aa aa, k k, e e, am am, a a1)
    {
        super(aa, k, e, am, a1);
        o = context;
    }

    private Bitmap a(Resources resources, int i, ai ai1)
    {
        android.graphics.BitmapFactory.Options options = c(ai1);
        if (a(options))
        {
            BitmapFactory.decodeResource(resources, i, options);
            a(ai1.f, ai1.g, options);
        }
        return BitmapFactory.decodeResource(resources, i, options);
    }

    Bitmap a(ai ai1)
    {
        Resources resources = au.a(o, ai1);
        return a(resources, au.a(resources, ai1), ai1);
    }

    ae a()
    {
        return ae.b;
    }
}
