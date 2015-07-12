// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.util.DateAndTime;
import com.mopub.common.util.Strings;

// Referenced classes of package com.mopub.nativeads:
//            RequestParameters

class aa extends AdUrlGenerator
{

    private String e;
    private String f;

    aa(Context context)
    {
        super(context);
    }

    private void c()
    {
        if (!TextUtils.isEmpty(f))
        {
            b("MAGIC_NO", f);
        }
    }

    private void d()
    {
        if (e != null && !Strings.isEmpty(e))
        {
            b("assets", e);
        }
    }

    aa a(int i)
    {
        f = String.valueOf(i);
        return this;
    }

    aa a(RequestParameters requestparameters)
    {
        if (requestparameters != null)
        {
            c = requestparameters.getKeywords();
            d = requestparameters.getLocation();
            e = requestparameters.getDesiredAssets();
        }
        return this;
    }

    protected void b(String s)
    {
        b("nsv", s);
    }

    public String generateUrlString(String s)
    {
        a(s, "/m/ad");
        a(b);
        c(c);
        android.location.Location location = d;
        if (location == null)
        {
            location = LocationService.getLastKnownLocation(a, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
        }
        a(location);
        ClientMetadata clientmetadata = ClientMetadata.getInstance(a);
        b(clientmetadata.getSdkVersion());
        String as[] = new String[3];
        as[0] = clientmetadata.getDeviceManufacturer();
        as[1] = clientmetadata.getDeviceModel();
        as[2] = clientmetadata.getDeviceProduct();
        a(as);
        l(clientmetadata.getAdvertisingId());
        c(clientmetadata.isDoNotTrackSet());
        d(DateAndTime.getTimeZoneOffsetString());
        e(clientmetadata.getOrientationString());
        a(clientmetadata.getDensity());
        String s1 = clientmetadata.getNetworkOperator();
        f(s1);
        g(s1);
        h(clientmetadata.getIsoCountryCode());
        i(clientmetadata.getNetworkOperatorName());
        a(clientmetadata.getActiveNetworkType());
        k(clientmetadata.getAppVersion());
        a();
        d();
        c();
        return b();
    }

    public volatile AdUrlGenerator withAdUnitId(String s)
    {
        return withAdUnitId(s);
    }

    public aa withAdUnitId(String s)
    {
        b = s;
        return this;
    }
}
