// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.location.Location;

// Referenced classes of package com.amazon.device.ads:
//            Configuration, AdRequest, AdTargetingOptions, AdLocation

class > extends >
{

    protected volatile Object getDerivedValue(> >)
    {
        return getDerivedValue(>);
    }

    protected String getDerivedValue(getDerivedValue getderivedvalue)
    {
        Location location;
label0:
        {
            if (Configuration.getInstance().getBoolean(O) && _mth200(getderivedvalue).getAdTargetingOptions().isGeoLocationEnabled())
            {
                location = (new AdLocation()).getLocation();
                if (location != null)
                {
                    break label0;
                }
            }
            return null;
        }
        return (new StringBuilder()).append(location.getLatitude()).append(",").append(location.getLongitude()).toString();
    }

    ()
    {
        super("geoloc", "debug.geoloc");
    }
}
