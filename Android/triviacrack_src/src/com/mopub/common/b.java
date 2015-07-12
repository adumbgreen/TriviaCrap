// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.os.AsyncTask;

// Referenced classes of package com.mopub.common:
//            CacheService

class b extends AsyncTask
{

    private final CacheService.DiskLruCacheGetListener a;
    private final String b;

    b(String s, CacheService.DiskLruCacheGetListener disklrucachegetlistener)
    {
        a = disklrucachegetlistener;
        b = s;
    }

    protected void a(byte abyte0[])
    {
        if (isCancelled())
        {
            onCancelled();
        } else
        if (a != null)
        {
            a.onComplete(b, abyte0);
            return;
        }
    }

    protected transient byte[] a(Void avoid[])
    {
        return CacheService.getFromDiskCache(b);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onCancelled()
    {
        if (a != null)
        {
            a.onComplete(b, null);
        }
    }

    protected void onPostExecute(Object obj)
    {
        a((byte[])obj);
    }
}
