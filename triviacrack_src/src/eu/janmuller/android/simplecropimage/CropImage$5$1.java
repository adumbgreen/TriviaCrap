// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.graphics.Bitmap;
import android.os.Handler;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            CropImage, CropImageView

class b
    implements Runnable
{

    final Bitmap a;
    final CountDownLatch b;
    final b c;

    public void run()
    {
        if (a != CropImage.b(c.c) && a != null)
        {
            CropImage.c(c.c).a(a, true);
            CropImage.b(c.c).recycle();
            CropImage.a(c.c, a);
        }
        if (CropImage.c(c.c).a() == 1.0F)
        {
            CropImage.c(c.c).a(true, true);
        }
        b.countDown();
    }

    ( , Bitmap bitmap, CountDownLatch countdownlatch)
    {
        c = ;
        a = bitmap;
        b = countdownlatch;
        super();
    }

    // Unreferenced inner class eu/janmuller/android/simplecropimage/CropImage$5

/* anonymous class */
    class CropImage._cls5
        implements Runnable
    {

        final CropImage a;

        public void run()
        {
            CountDownLatch countdownlatch = new CountDownLatch(1);
            Bitmap bitmap = CropImage.b(a);
            CropImage.d(a).post(new CropImage._cls5._cls1(this, bitmap, countdownlatch));
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

            
            {
                a = cropimage;
                super();
            }
    }

}
