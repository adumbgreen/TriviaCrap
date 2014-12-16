// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import com.mopub.common.DownloadResponse;
import com.mopub.common.HttpResponses;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.ResponseHeader;
import com.mopub.nativeads.factories.CustomEventNativeFactory;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.mopub.nativeads:
//            CustomEventNative, NativeErrorCode

final class d
{

    public static void loadNativeAd(Context context, Map map, DownloadResponse downloadresponse, CustomEventNative.CustomEventNativeListener customeventnativelistener)
    {
        String s;
        s = downloadresponse.getFirstHeader(ResponseHeader.CUSTOM_EVENT_DATA);
        String s1 = downloadresponse.getFirstHeader(ResponseHeader.CUSTOM_EVENT_NAME);
        CustomEventNative customeventnative;
        Object obj;
        Map map1;
        try
        {
            customeventnative = CustomEventNativeFactory.create(s1);
        }
        catch (Exception exception)
        {
            MoPubLog.w((new StringBuilder()).append("Failed to load Custom Event Native class: ").append(s1).toString());
            customeventnativelistener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
            return;
        }
        obj = new HashMap();
        map1 = Json.jsonStringToMap(s);
        obj = map1;
_L2:
        ((Map) (obj)).put("response_body_key", HttpResponses.asResponseString(downloadresponse));
        customeventnative.a(context, customeventnativelistener, map, ((Map) (obj)));
        return;
        Exception exception1;
        exception1;
        MoPubLog.w((new StringBuilder()).append("Failed to create Map from JSON: ").append(s).toString(), exception1);
        if (true) goto _L2; else goto _L1
_L1:
    }
}
