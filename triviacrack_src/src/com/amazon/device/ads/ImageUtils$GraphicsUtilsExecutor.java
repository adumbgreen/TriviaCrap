// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.amazon.device.ads:
//            ImageUtils

public class 
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
                Log.e(ImageUtils.access$000(), "IOException while trying to close the input stream.");
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
        return android.provider.ge(context.getContentResolver(), bitmap, s, s1);
    }

    public ()
    {
    }
}
