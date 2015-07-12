// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.CacheService;
import com.mopub.common.DownloadResponse;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.VersionCode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.mopub.nativeads:
//            l, e, j

class i
{

    private static int a = -1;

    static int a()
    {
        return a;
    }

    static Bitmap a(String s)
    {
        return CacheService.getFromBitmapCache(s);
    }

    static List a(List list, Map map)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Bitmap bitmap = a(s);
            if (bitmap != null)
            {
                map.put(s, bitmap);
            } else
            {
                arraylist.add(s);
            }
        }

        return arraylist;
    }

    static void a(Context context)
    {
        if (a == -1)
        {
            Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            if (VersionCode.currentApiLevel().isBelow(VersionCode.HONEYCOMB_MR2))
            {
                point.set(display.getWidth(), display.getHeight());
            } else
            {
                display.getSize(point);
            }
            a = Math.min(point.x, point.y);
        }
    }

    static void a(Context context, List list, l l1)
    {
        a(context);
        CacheService.initialize(context);
        a(list, l1);
    }

    static void a(String s, Bitmap bitmap)
    {
        CacheService.putToBitmapCache(s, bitmap);
    }

    static void a(String s, Bitmap bitmap, byte abyte0[])
    {
        CacheService.putToBitmapCache(s, bitmap);
        CacheService.putToDiskCacheAsync(s, abyte0);
    }

    static void a(List list, l l1)
    {
        HashMap hashmap = new HashMap(list.size());
        List list1 = a(list, ((Map) (hashmap)));
        if (list1.isEmpty())
        {
            l1.onSuccess(hashmap);
            return;
        }
        e e1;
        try
        {
            e1 = new e(list1, new j(l1, hashmap), a);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            MoPubLog.d("Unable to initialize ImageDiskTaskManager", illegalargumentexception);
            l1.onFail();
            return;
        }
        e1.a();
    }

    public static Bitmap asBitmap(DownloadResponse downloadresponse, int k)
    {
        if (downloadresponse == null)
        {
            return null;
        } else
        {
            return byteArrayToBitmap(downloadresponse.getByteArray(), k);
        }
    }

    public static Bitmap byteArrayToBitmap(byte abyte0[], int k)
    {
        if (k > 0)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
            for (options.inSampleSize = calculateInSampleSize(options.outWidth, k); getMemBytes(options) > 0x200000L; options.inSampleSize = 2 * options.inSampleSize) { }
            options.inJustDecodeBounds = false;
            Bitmap bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
            if (bitmap != null)
            {
                if (bitmap.getWidth() > k)
                {
                    Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, k, (int)(((double)bitmap.getHeight() * (double)k) / (double)bitmap.getWidth()), true);
                    bitmap.recycle();
                    return bitmap1;
                } else
                {
                    return bitmap;
                }
            }
        }
        return null;
    }

    public static int calculateInSampleSize(int k, int i1)
    {
        int j1 = 1;
        if (k > i1)
        {
            for (int k1 = k / 2; k1 / j1 >= i1; j1 *= 2) { }
        }
        return j1;
    }

    public static long getMemBytes(android.graphics.BitmapFactory.Options options)
    {
        return (4L * (long)options.outWidth * (long)options.outHeight) / (long)options.inSampleSize / (long)options.inSampleSize;
    }

}
