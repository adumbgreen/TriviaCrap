// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.util.DateAndTime;
import com.mopub.mobileads.util.Mraids;

public class WebViewAdUrlGenerator extends AdUrlGenerator
{

    public WebViewAdUrlGenerator(Context context)
    {
        super(context);
    }

    private boolean c()
    {
        try
        {
            Class.forName("com.mopub.mobileads.MraidView");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return false;
        }
        return true;
    }

    public String generateUrlString(String s)
    {
        a(s, "/m/ad");
        ClientMetadata clientmetadata = ClientMetadata.getInstance(a);
        j("6");
        a(b);
        b(clientmetadata.getSdkVersion());
        String as[] = new String[3];
        as[0] = clientmetadata.getDeviceManufacturer();
        as[1] = clientmetadata.getDeviceModel();
        as[2] = clientmetadata.getDeviceProduct();
        a(as);
        l(clientmetadata.getAdvertisingId());
        c(clientmetadata.isDoNotTrackSet());
        c(c);
        android.location.Location location = d;
        if (location == null)
        {
            location = LocationService.getLastKnownLocation(a, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
        }
        a(location);
        d(DateAndTime.getTimeZoneOffsetString());
        e(clientmetadata.getOrientationString());
        a(clientmetadata.getDensity());
        a(c());
        String s1 = clientmetadata.getNetworkOperator();
        f(s1);
        g(s1);
        h(clientmetadata.getIsoCountryCode());
        i(clientmetadata.getNetworkOperatorName());
        a(clientmetadata.getActiveNetworkType());
        k(clientmetadata.getAppVersion());
        b(Mraids.isStorePictureSupported(a));
        a();
        return b();
    }
}
