// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.graphics.Bitmap;
import android.os.Handler;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            CropImage, CropImageView

class a
    implements Runnable
{

    final CropImage a;

    public void run()
    {
        CountDownLatch countdownlatch = new CountDownLatch(1);
        Bitmap bitmap = CropImage.b(a);
        CropImage.d(a).post(new Runnable(bitmap, countdownlatch) {

            final Bitmap a;
            final CountDownLatch b;
            final CropImage._cls5 c;

            public void run()
            {
                if (a != CropImage.b(c.a) && a != null)
                {
                    CropImage.c(c.a).a(a, true);
                    CropImage.b(c.a).recycle();
                    CropImage.a(c.a, a);
                }
                if (CropImage.c(c.a).a() == 1.0F)
                {
                    CropImage.c(c.a).a(true, true);
                }
                b.countDown();
            }

            
            {
                c = CropImage._cls5.this;
                a = bitmap;
                b = countdownlatch;
                super();
            }
        });
        try
        {
            countdownlatch.await();
        }
        catch (InterruptedException interruptedexception)
        {
            throw new RuntimeException(interruptedexception);
        }
        a.e.run();
    }

    _cls1.b(CropImage cropimage)
    {
        a = cropimage;
        super();
    }
}
