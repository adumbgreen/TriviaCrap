// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

// Referenced classes of package com.b.a:
//            d, ae, ai, au, 
//            aa, k, e, am, 
//            a

class i extends d
{

    final Context o;

    i(Context context, aa aa, k k, e e, am am, a a1)
    {
        super(aa, k, e, am, a1);
        o = context;
    }

    Bitmap a(ai ai1)
    {
        return d(ai1);
    }

    ae a()
    {
        return ae.b;
    }

    protected Bitmap d(ai ai1)
    {
        java.io.InputStream inputstream;
        ContentResolver contentresolver;
        android.graphics.BitmapFactory.Options options;
        inputstream = null;
        contentresolver = o.getContentResolver();
        options = c(ai1);
        if (!a(options))
        {
            break MISSING_BLOCK_LABEL_58;
        }
        inputstream = contentresolver.openInputStream(ai1.c);
        BitmapFactory.decodeStream(inputstream, null, options);
        au.a(inputstream);
        a(ai1.f, ai1.g, options);
        java.io.InputStream inputstream1 = contentresolver.openInputStream(ai1.c);
        Bitmap bitmap = BitmapFactory.decodeStream(inputstream1, null, options);
        au.a(inputstream1);
        return bitmap;
        Exception exception1;
        exception1;
        au.a(inputstream);
        throw exception1;
        Exception exception;
        exception;
        au.a(inputstream1);
        throw exception;
    }
}
