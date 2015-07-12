// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Context;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import java.util.Iterator;
import org.apache.http.client.methods.HttpUriRequest;

// Referenced classes of package com.mopub.common:
//            HttpClient, DownloadTask

final class c
    implements Runnable
{

    final Iterable a;
    final Context b;
    final DownloadTaskListener c;

    public void run()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            try
            {
                org.apache.http.client.methods.HttpGet httpget = HttpClient.initializeHttpGet(s, b);
                AsyncTasks.safeExecuteOnExecutor(new DownloadTask(c), new HttpUriRequest[] {
                    httpget
                });
            }
            catch (Exception exception)
            {
                MoPubLog.d((new StringBuilder()).append("Failed to hit tracking endpoint: ").append(s).toString());
            }
        }

    }

    DownloadTaskListener(Iterable iterable, Context context, DownloadTaskListener downloadtasklistener)
    {
        a = iterable;
        b = context;
        c = downloadtasklistener;
        super();
    }
}
