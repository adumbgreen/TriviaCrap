// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import com.mopub.common.DownloadResponse;
import com.mopub.common.util.ResponseHeader;

// Referenced classes of package com.mopub.nativeads:
//            MoPubNative, NativeErrorCode, d, NativeResponse, 
//            t

class a
    implements com.mopub.common.ownloadTaskListener
{

    final MoPubNative a;

    public void onComplete(String s, DownloadResponse downloadresponse)
    {
        if (downloadresponse == null)
        {
            MoPubNative.a(a).onNativeFail(NativeErrorCode.UNSPECIFIED);
        } else
        {
            if (downloadresponse.getStatusCode() >= 500 && downloadresponse.getStatusCode() < 600)
            {
                MoPubNative.a(a).onNativeFail(NativeErrorCode.SERVER_ERROR_RESPONSE_CODE);
                return;
            }
            if (downloadresponse.getStatusCode() != 200)
            {
                MoPubNative.a(a).onNativeFail(NativeErrorCode.UNEXPECTED_RESPONSE_CODE);
                return;
            }
            if (downloadresponse.getContentLength() == 0L)
            {
                MoPubNative.a(a).onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                return;
            }
            ive.CustomEventNativeListener customeventnativelistener = new CustomEventNative.CustomEventNativeListener(downloadresponse) {

                final DownloadResponse a;
                final MoPubNative._cls3 b;

                public void onNativeAdFailed(NativeErrorCode nativeerrorcode)
                {
                    b.a.a(a.getFirstHeader(ResponseHeader.FAIL_URL));
                }

                public void onNativeAdLoaded(t t)
                {
                    android.content.Context context1 = b.a.a();
                    if (context1 == null)
                    {
                        return;
                    } else
                    {
                        MoPubNative.a(b.a).onNativeLoad(new NativeResponse(context1, a, MoPubNative.b(b.a), t, MoPubNative.c(b.a)));
                        return;
                    }
                }

            
            {
                b = MoPubNative._cls3.this;
                a = downloadresponse;
                super();
            }
            };
            android.content.Context context = a.a();
            if (context != null)
            {
                d.loadNativeAd(context, MoPubNative.d(a), downloadresponse, customeventnativelistener);
                return;
            }
        }
    }

    _cls1.a(MoPubNative mopubnative)
    {
        a = mopubnative;
        super();
    }
}
