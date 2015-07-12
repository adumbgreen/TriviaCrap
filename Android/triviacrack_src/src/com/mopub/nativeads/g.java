// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import com.mopub.common.DownloadTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;

// Referenced classes of package com.mopub.nativeads:
//            ah, h, ai

class g extends ah
{

    private final Map f;
    private final int g;

    g(List list, ai ai1, int i)
    {
        super(list, ai1);
        g = i;
        h h1 = new h(this);
        f = new HashMap(list.size());
        HttpGet httpget;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); f.put(httpget, new DownloadTask(h1)))
        {
            httpget = new HttpGet((String)iterator.next());
        }

    }

    void a()
    {
        if (f.isEmpty())
        {
            a.onSuccess(c);
        }
        for (Iterator iterator = f.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            HttpUriRequest httpurirequest = (HttpUriRequest)entry.getKey();
            DownloadTask downloadtask = (DownloadTask)entry.getValue();
            try
            {
                AsyncTasks.safeExecuteOnExecutor(downloadtask, new HttpUriRequest[] {
                    httpurirequest
                });
            }
            catch (Exception exception)
            {
                MoPubLog.d("Failed to download image", exception);
                a.onFail();
            }
        }

    }

    void b()
    {
        if (e.compareAndSet(false, true))
        {
            for (Iterator iterator = f.values().iterator(); iterator.hasNext(); ((DownloadTask)iterator.next()).cancel(true)) { }
            a.onFail();
        }
    }
}
