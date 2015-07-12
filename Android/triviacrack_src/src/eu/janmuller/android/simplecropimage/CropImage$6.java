// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.graphics.Bitmap;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            CropImage

class a
    implements Runnable
{

    final Bitmap a;
    final CropImage b;

    public void run()
    {
        if (CropImage.e(b))
        {
            CropImage.b(b, a);
            return;
        } else
        {
            CropImage.c(b, a);
            return;
        }
    }

    (CropImage cropimage, Bitmap bitmap)
    {
        b = cropimage;
        a = bitmap;
        super();
    }
}
