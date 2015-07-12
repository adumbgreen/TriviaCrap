// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import com.mopub.common.DownloadResponse;
import com.mopub.common.DownloadTask;
import com.mopub.common.GpsHelper;
import com.mopub.common.HttpClient;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.ResponseHeader;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpUriRequest;

// Referenced classes of package com.mopub.nativeads:
//            aa, NativeErrorCode, RequestParameters, r, 
//            NativeResponse, d, t

public class MoPubNative
{

    static final MoPubNativeNetworkListener a = new MoPubNativeNetworkListener() {

        public void onNativeFail(NativeErrorCode nativeerrorcode)
        {
        }

        public void onNativeLoad(NativeResponse nativeresponse)
        {
            nativeresponse.destroy();
        }

    };
    static final MoPubNativeEventListener b = new MoPubNativeEventListener() {

        public void onNativeClick(View view)
        {
        }

        public void onNativeImpression(View view)
        {
        }

    };
    private final WeakReference c;
    private final String d;
    private MoPubNativeNetworkListener e;
    private MoPubNativeEventListener f;
    private Map g;

    public MoPubNative(Context context, String s, MoPubNativeListener mopubnativelistener)
    {
        this(context, s, ((MoPubNativeNetworkListener) (mopubnativelistener)));
        setNativeEventListener(mopubnativelistener);
    }

    public MoPubNative(Context context, String s, MoPubNativeNetworkListener mopubnativenetworklistener)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("Context may not be null.");
        }
        if (s == null)
        {
            throw new IllegalArgumentException("AdUnitId may not be null.");
        }
        if (mopubnativenetworklistener == null)
        {
            throw new IllegalArgumentException("MoPubNativeNetworkListener may not be null.");
        } else
        {
            ManifestUtils.checkNativeActivitiesDeclared(context);
            c = new WeakReference(context);
            d = s;
            e = mopubnativenetworklistener;
            f = b;
            GpsHelper.fetchAdvertisingInfoAsync(context, null);
            return;
        }
    }

    static MoPubNativeNetworkListener a(MoPubNative mopubnative)
    {
        return mopubnative.e;
    }

    static void a(MoPubNative mopubnative, RequestParameters requestparameters, Integer integer)
    {
        mopubnative.a(requestparameters, integer);
    }

    private void a(RequestParameters requestparameters, Integer integer)
    {
        Context context = a();
        if (context == null)
        {
            return;
        }
        aa aa1 = (new aa(context)).withAdUnitId(d).a(requestparameters);
        if (integer != null)
        {
            aa1.a(integer.intValue());
        }
        String s = aa1.generateUrlString("ads.mopub.com");
        if (s != null)
        {
            MoPubLog.d((new StringBuilder()).append("Loading ad from: ").append(s).toString());
        }
        a(s);
    }

    private void a(HttpUriRequest httpurirequest)
    {
        DownloadTask downloadtask = new DownloadTask(new com.mopub.common.DownloadTask.DownloadTaskListener() {

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
                    CustomEventNative.CustomEventNativeListener customeventnativelistener = new CustomEventNative.CustomEventNativeListener(this, downloadresponse) {

                        final DownloadResponse a;
                        final _cls3 b;

                        public void onNativeAdFailed(NativeErrorCode nativeerrorcode)
                        {
                            b.a.a(a.getFirstHeader(ResponseHeader.FAIL_URL));
                        }

                        public void onNativeAdLoaded(t t)
                        {
                            Context context = b.a.a();
                            if (context == null)
                            {
                                return;
                            } else
                            {
                                MoPubNative.a(b.a).onNativeLoad(new NativeResponse(context, a, MoPubNative.b(b.a), t, MoPubNative.c(b.a)));
                                return;
                            }
                        }

            
            {
                b = _pcls3;
                a = downloadresponse;
                super();
            }
                    };
                    Context context = a.a();
                    if (context != null)
                    {
                        com.mopub.nativeads.d.loadNativeAd(context, MoPubNative.d(a), downloadresponse, customeventnativelistener);
                        return;
                    }
                }
            }

            
            {
                a = MoPubNative.this;
                super();
            }
        });
        try
        {
            AsyncTasks.safeExecuteOnExecutor(downloadtask, new HttpUriRequest[] {
                httpurirequest
            });
            return;
        }
        catch (Exception exception)
        {
            MoPubLog.d("Failed to download json", exception);
        }
        e.onNativeFail(NativeErrorCode.UNSPECIFIED);
    }

    static String b(MoPubNative mopubnative)
    {
        return mopubnative.d;
    }

    static MoPubNativeEventListener c(MoPubNative mopubnative)
    {
        return mopubnative.f;
    }

    static Map d(MoPubNative mopubnative)
    {
        return mopubnative.g;
    }

    Context a()
    {
        Context context = (Context)c.get();
        if (context == null)
        {
            destroy();
            MoPubLog.d("Weak reference to Activity Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }

    void a(r r1)
    {
        Context context = a();
        if (context == null)
        {
            return;
        }
        if (!DeviceUtils.isNetworkAvailable(context))
        {
            e.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            return;
        } else
        {
            GpsHelper.fetchAdvertisingInfoAsync(context, r1);
            return;
        }
    }

    void a(String s)
    {
        Context context = a();
        if (context == null)
        {
            return;
        }
        if (s == null)
        {
            e.onNativeFail(NativeErrorCode.INVALID_REQUEST_URL);
            return;
        }
        org.apache.http.client.methods.HttpGet httpget;
        try
        {
            httpget = HttpClient.initializeHttpGet(s, context);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            e.onNativeFail(NativeErrorCode.INVALID_REQUEST_URL);
            return;
        }
        a(((HttpUriRequest) (httpget)));
    }

    public void destroy()
    {
        c.clear();
        e = a;
        f = b;
    }

    public void makeRequest()
    {
        makeRequest((RequestParameters)null);
    }

    public void makeRequest(RequestParameters requestparameters)
    {
        makeRequest(requestparameters, null);
    }

    public void makeRequest(RequestParameters requestparameters, Integer integer)
    {
        a(new r(this, requestparameters, integer));
    }

    public void setLocalExtras(Map map)
    {
        g = new HashMap(map);
    }

    public void setNativeEventListener(MoPubNativeEventListener mopubnativeeventlistener)
    {
        if (mopubnativeeventlistener == null)
        {
            mopubnativeeventlistener = b;
        }
        f = mopubnativeeventlistener;
    }


    private class MoPubNativeNetworkListener
    {

        public abstract void onNativeFail(NativeErrorCode nativeerrorcode);

        public abstract void onNativeLoad(NativeResponse nativeresponse);
    }

}
