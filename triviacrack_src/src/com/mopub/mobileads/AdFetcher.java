// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.factories.AdFetchTaskFactory;

// Referenced classes of package com.mopub.mobileads:
//            TaskTracker, AdFetchTask, AdViewController

public class AdFetcher
{

    public static final String AD_CONFIGURATION_KEY = "Ad-Configuration";
    public static final String CLICKTHROUGH_URL_KEY = "Clickthrough-Url";
    public static final String HTML_RESPONSE_BODY_KEY = "Html-Response-Body";
    public static final String REDIRECT_URL_KEY = "Redirect-Url";
    public static final String SCROLLABLE_KEY = "Scrollable";
    private int a;
    private AdViewController b;
    private AdFetchTask c;
    private String d;
    private final TaskTracker e = new TaskTracker();

    public AdFetcher(AdViewController adviewcontroller, String s)
    {
        a = 10000;
        b = adviewcontroller;
        d = s;
    }

    private long b()
    {
        return e.getCurrentTaskId();
    }

    void a()
    {
        cancelFetch();
        b = null;
        d = "";
    }

    protected void a(int i)
    {
        a = i;
    }

    public void cancelFetch()
    {
        if (c != null)
        {
            MoPubLog.i((new StringBuilder()).append("Canceling fetch ad for task #").append(b()).toString());
            c.cancel(true);
        }
    }

    public void fetchAdForUrl(String s)
    {
        e.newTaskStarted();
        MoPubLog.i((new StringBuilder()).append("Fetching ad for task #").append(b()).toString());
        if (c != null)
        {
            c.cancel(true);
        }
        c = AdFetchTaskFactory.create(e, b, d, a);
        try
        {
            AsyncTasks.safeExecuteOnExecutor(c, new String[] {
                s
            });
            return;
        }
        catch (Exception exception)
        {
            MoPubLog.d("Error executing AdFetchTask", exception);
        }
    }
}
