// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import com.mopub.common.DownloadResponse;
import com.mopub.common.HttpResponses;
import com.mopub.common.logging.MoPubLog;
import org.json.JSONException;

// Referenced classes of package com.mopub.nativeads:
//            ae

class a
    implements com.mopub.common.oadTask.DownloadTaskListener
{

    final ae a;

    public void onComplete(String s, DownloadResponse downloadresponse)
    {
        if (downloadresponse == null)
        {
            return;
        }
        ae.a(a, null);
        if (downloadresponse.getStatusCode() != 200)
        {
            MoPubLog.e("Invalid positioning download response ");
            ae.b(a);
            return;
        }
        String s1 = HttpResponses.asResponseString(downloadresponse);
        NativeAdPositioning.MoPubClientPositioning mopubclientpositioning;
        try
        {
            mopubclientpositioning = a.a(s1);
        }
        catch (JSONException jsonexception)
        {
            MoPubLog.e("Error parsing JSON: ", jsonexception);
            ae.b(a);
            return;
        }
        ae.a(a, mopubclientpositioning);
    }

    Response(ae ae1)
    {
        a = ae1;
        super();
    }
}
