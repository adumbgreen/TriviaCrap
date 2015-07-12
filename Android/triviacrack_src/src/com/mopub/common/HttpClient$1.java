// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import com.mopub.common.logging.MoPubLog;

// Referenced classes of package com.mopub.common:
//            HttpClient, DownloadResponse, HttpResponses

final class nse
    implements DownloadTaskListener
{

    public void onComplete(String s, DownloadResponse downloadresponse)
    {
        if (downloadresponse == null || downloadresponse.getStatusCode() != 200)
        {
            MoPubLog.d((new StringBuilder()).append("Failed to hit tracking endpoint: ").append(s).toString());
            return;
        }
        if (HttpResponses.asResponseString(downloadresponse) != null)
        {
            MoPubLog.d((new StringBuilder()).append("Successfully hit tracking endpoint: ").append(s).toString());
            return;
        } else
        {
            MoPubLog.d((new StringBuilder()).append("Failed to hit tracking endpoint: ").append(s).toString());
            return;
        }
    }

    nse()
    {
    }
}
