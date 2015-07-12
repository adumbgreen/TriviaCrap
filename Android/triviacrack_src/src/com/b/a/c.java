// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;

// Referenced classes of package com.b.a:
//            d, ai, au, ae, 
//            aa, k, e, am, 
//            a

class c extends d
{

    private static final int o = "file:///android_asset/".length();
    private final AssetManager p;

    public c(Context context, aa aa, k k, e e, am am, a a1)
    {
        super(aa, k, e, am, a1);
        p = context.getAssets();
    }

    Bitmap a(ai ai1)
    {
        return a(ai1.c.toString().substring(o));
    }

    Bitmap a(String s)
    {
        java.io.InputStream inputstream;
        android.graphics.BitmapFactory.Options options;
        inputstream = null;
        options = c(f);
        if (!a(options))
        {
            break MISSING_BLOCK_LABEL_55;
        }
        inputstream = p.open(s);
        BitmapFactory.decodeStream(inputstream, null, options);
        au.a(inputstream);
        a(f.f, f.g, options);
        java.io.InputStream inputstream1 = p.open(s);
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

    ae a()
    {
        return ae.b;
    }

}
