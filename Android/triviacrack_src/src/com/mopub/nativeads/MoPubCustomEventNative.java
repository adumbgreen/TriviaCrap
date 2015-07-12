// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import java.util.Map;
import org.json.JSONException;

// Referenced classes of package com.mopub.nativeads:
//            CustomEventNative, q, NativeErrorCode, z

public class MoPubCustomEventNative extends CustomEventNative
{

    public MoPubCustomEventNative()
    {
    }

    protected void a(Context context, CustomEventNative.CustomEventNativeListener customeventnativelistener, Map map, Map map1)
    {
        q q1 = new q(context.getApplicationContext(), (String)map1.get("response_body_key"), customeventnativelistener);
        try
        {
            q1.a();
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            customeventnativelistener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            return;
        }
        catch (JSONException jsonexception)
        {
            customeventnativelistener.onNativeAdFailed(NativeErrorCode.INVALID_JSON);
        }
    }

    // Unreferenced inner class com/mopub/nativeads/MoPubCustomEventNative$1

/* anonymous class */
    class _cls1
    {

        static final int a[];

        static 
        {
            a = new int[z.values().length];
            try
            {
                a[z.MAIN_IMAGE.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[z.ICON_IMAGE.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[z.IMPRESSION_TRACKER.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[z.CLICK_TRACKER.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[z.CLICK_DESTINATION.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                a[z.CALL_TO_ACTION.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                a[z.TITLE.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                a[z.TEXT.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror7) { }
            try
            {
                a[z.STAR_RATING.ordinal()] = 9;
            }
            catch (NoSuchFieldError nosuchfielderror8)
            {
                return;
            }
        }
    }

}
