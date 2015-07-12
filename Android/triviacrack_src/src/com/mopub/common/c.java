// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.os.AsyncTask;

// Referenced classes of package com.mopub.common:
//            CacheService

class c extends AsyncTask
{

    private final String a;
    private final byte b[];

    c(String s, byte abyte0[])
    {
        a = s;
        b = abyte0;
    }

    protected transient Void a(Void avoid[])
    {
        CacheService.putToDiskCache(a, b);
        return null;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }
}
