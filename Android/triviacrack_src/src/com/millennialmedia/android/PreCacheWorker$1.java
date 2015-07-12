// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            PreCacheWorker, AdCache, DTOCachedVideo, CachedAd

class a
    implements skListener
{

    final DTOCachedVideo a;
    final PreCacheWorker b;

    public void downloadCompleted(CachedAd cachedad, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        AdCache.a(PreCacheWorker.a(b), cachedad);
        PreCacheWorker.a(b, true);
        b(a.c);
_L1:
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        a(a.b);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public void downloadStart(CachedAd cachedad)
    {
        a(a.a);
    }

    skListener(PreCacheWorker precacheworker, DTOCachedVideo dtocachedvideo)
    {
        b = precacheworker;
        a = dtocachedvideo;
        super();
    }
}
