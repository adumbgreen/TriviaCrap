// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.graphics.Bitmap;
import java.io.InputStream;

class ImageUtils
{

    private static final String LOGTAG = com/amazon/device/ads/ImageUtils.getSimpleName();
    private static GraphicsUtilsExecutor executor = new GraphicsUtilsExecutor();

    ImageUtils()
    {
    }

    public static Bitmap createBitmapImage(InputStream inputstream)
    {
        return executor.createBitmapImage(inputstream);
    }

    public static String insertImageInMediaStore(Context context, Bitmap bitmap, String s, String s1)
    {
        return executor.insertImageInMediaStore(context, bitmap, s, s1);
    }



    private class GraphicsUtilsExecutor
    {

        public Bitmap createBitmapImage(InputStream inputstream)
        {
            if (inputstream != null)
            {
                BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream, 32768);
                bufferedinputstream.mark(32768);
                Bitmap bitmap = BitmapFactory.decodeStream(bufferedinputstream);
                try
                {
                    bufferedinputstream.close();
                }
                catch (IOException ioexception)
                {
                    Log.e(ImageUtils.LOGTAG, "IOException while trying to close the input stream.");
                    return bitmap;
                }
                return bitmap;
            } else
            {
                return null;
            }
        }

        public String insertImageInMediaStore(Context context, Bitmap bitmap, String s, String s1)
        {
            return android.provider.MediaStore.Images.Media.insertImage(context.getContentResolver(), bitmap, s, s1);
        }

        public GraphicsUtilsExecutor()
        {
        }
    }

}
