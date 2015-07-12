// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import com.mopub.common.DownloadResponse;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.mopub.nativeads:
//            g, ai

class h
    implements com.mopub.common.DownloadTask.DownloadTaskListener
{

    final g a;

    private h(g g1)
    {
        a = g1;
        super();
    }

    h(g g1, g._cls1 _pcls1)
    {
        this(g1);
    }

    public void onComplete(String s, DownloadResponse downloadresponse)
    {
        if (downloadresponse == null || downloadresponse.getStatusCode() != 200)
        {
            MoPubLog.d((new StringBuilder()).append("Failed to download image: ").append(s).toString());
            a.b();
        } else
        {
            MoPubLog.d((new StringBuilder()).append("Successfully downloaded image bye array: ").append(s).toString());
            a.c.put(s, downloadresponse);
            if (a.d.incrementAndGet() == a.b)
            {
                a.a.onSuccess(a.c);
                return;
            }
        }
    }
}
