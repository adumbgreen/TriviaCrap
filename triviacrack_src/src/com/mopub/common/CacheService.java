// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Utils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.mopub.common:
//            DiskLruCache, a, b, c

public class CacheService
{

    private static DiskLruCache a;
    private static a b;

    public CacheService()
    {
    }

    public static void clearAndNullCaches()
    {
        if (a != null)
        {
            try
            {
                a.delete();
                a = null;
            }
            catch (IOException ioexception)
            {
                a = null;
            }
        }
        if (b != null)
        {
            b.evictAll();
            b = null;
        }
    }

    public static boolean containsKeyDiskCache(String s)
    {
        if (a != null)
        {
            DiskLruCache.Snapshot snapshot;
            try
            {
                snapshot = a.get(createValidDiskCacheKey(s));
            }
            catch (Exception exception)
            {
                return false;
            }
            if (snapshot != null)
            {
                return true;
            }
        }
        return false;
    }

    public static String createValidDiskCacheKey(String s)
    {
        return Utils.sha1(s);
    }

    public static LruCache getBitmapLruCache()
    {
        return b;
    }

    public static File getDiskCacheDirectory(Context context)
    {
        String s = context.getCacheDir().getPath();
        return new File((new StringBuilder()).append(s).append(File.separator).append("mopub-cache").toString());
    }

    public static DiskLruCache getDiskLruCache()
    {
        return a;
    }

    public static String getFilePathDiskCache(String s)
    {
        if (a == null)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(a.getDirectory()).append(File.separator).append(createValidDiskCacheKey(s)).append(".").append(0).toString();
        }
    }

    public static Bitmap getFromBitmapCache(String s)
    {
        if (b == null)
        {
            return null;
        } else
        {
            return (Bitmap)b.get(s);
        }
    }

    public static byte[] getFromDiskCache(String s)
    {
        DiskLruCache disklrucache;
        byte abyte0[];
        disklrucache = a;
        abyte0 = null;
        if (disklrucache != null) goto _L2; else goto _L1
_L1:
        return abyte0;
_L2:
        DiskLruCache.Snapshot snapshot1 = a.get(createValidDiskCacheKey(s));
        DiskLruCache.Snapshot snapshot;
        snapshot = snapshot1;
        if (snapshot != null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        abyte0 = null;
        if (snapshot == null) goto _L1; else goto _L3
_L3:
        snapshot.close();
        return null;
        InputStream inputstream = snapshot.getInputStream(0);
        abyte0 = null;
        if (inputstream == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        byte abyte1[] = new byte[(int)snapshot.getLength(0)];
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        Streams.readStream(bufferedinputstream, abyte1);
        Streams.closeStream(bufferedinputstream);
        abyte0 = abyte1;
        if (snapshot == null) goto _L1; else goto _L4
_L4:
        snapshot.close();
        return abyte0;
        Exception exception3;
        exception3;
        Exception exception;
        Exception exception1;
        Exception exception2;
        try
        {
            Streams.closeStream(bufferedinputstream);
            throw exception3;
        }
        catch (Exception exception4)
        {
            abyte0 = abyte1;
            exception = exception4;
        }
        finally { }
_L6:
        MoPubLog.d("Unable to get from DiskLruCache", exception);
        if (snapshot == null) goto _L1; else goto _L5
_L5:
        snapshot.close();
        return abyte0;
        exception2;
        snapshot = null;
        exception1 = exception2;
        if (snapshot != null)
        {
            snapshot.close();
        }
        throw exception1;
        exception;
        abyte0 = null;
        snapshot = null;
          goto _L6
        exception;
        abyte0 = null;
          goto _L6
    }

    public static void getFromDiskCacheAsync(String s, DiskLruCacheGetListener disklrucachegetlistener)
    {
        (new b(s, disklrucachegetlistener)).execute(new Void[0]);
    }

    public static void initialize(Context context)
    {
        initializeBitmapCache(context);
        initializeDiskCache(context);
    }

    public static boolean initializeBitmapCache(Context context)
    {
        if (context == null)
        {
            return false;
        }
        if (b == null)
        {
            b = new a(DeviceUtils.memoryCacheSizeBytes(context));
        }
        return true;
    }

    public static boolean initializeDiskCache(Context context)
    {
        boolean flag = true;
        if (context == null)
        {
            flag = false;
        } else
        if (a == null)
        {
            File file = getDiskCacheDirectory(context);
            long l = DeviceUtils.diskCacheSizeBytes(file);
            try
            {
                a = DiskLruCache.open(file, 1, 1, l);
            }
            catch (IOException ioexception)
            {
                MoPubLog.d("Unable to create DiskLruCache", ioexception);
                return flag;
            }
            return flag;
        }
        return flag;
    }

    public static void putToBitmapCache(String s, Bitmap bitmap)
    {
        if (b == null)
        {
            return;
        } else
        {
            b.put(s, bitmap);
            return;
        }
    }

    public static boolean putToDiskCache(String s, InputStream inputstream)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        DiskLruCache.Editor editor = null;
        editor = a.edit(createValidDiskCacheKey(s));
        if (editor == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(editor.newOutputStream(0));
        Streams.copyContent(inputstream, bufferedoutputstream);
        bufferedoutputstream.flush();
        bufferedoutputstream.close();
        a.flush();
        editor.commit();
        return true;
        Exception exception;
        exception;
        MoPubLog.d("Unable to put to DiskLruCache", exception);
        if (editor != null)
        {
            try
            {
                editor.abort();
            }
            catch (IOException ioexception)
            {
                return false;
            }
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static boolean putToDiskCache(String s, byte abyte0[])
    {
        return putToDiskCache(s, ((InputStream) (new ByteArrayInputStream(abyte0))));
    }

    public static void putToDiskCacheAsync(String s, byte abyte0[])
    {
        (new c(s, abyte0)).execute(new Void[0]);
    }
}
