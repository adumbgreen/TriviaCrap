// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            Settings, GooglePlayServicesAdapter, Log, ReflectionUtils

class GooglePlayServices
{

    private static final String GPS_AVAILABLE_SETTING = "gps-available";
    private static final String LOG_TAG = com/amazon/device/ads/GooglePlayServices.getSimpleName();

    GooglePlayServices()
    {
    }

    private boolean isGPSAvailable()
    {
        return Settings.getInstance().getBoolean("gps-available", true);
    }

    private boolean isGPSAvailableSet()
    {
        return Settings.getInstance().containsKey("gps-available");
    }

    private void setGooglePlayServicesAvailable(boolean flag)
    {
        Settings.getInstance().putTransientBoolean("gps-available", flag);
    }

    protected GooglePlayServicesAdapter createGooglePlayServicesAdapter()
    {
        return new GooglePlayServicesAdapter();
    }

    public AdvertisingInfo getAdvertisingIdentifierInfo()
    {
        if (!isGPSAvailable())
        {
            Log.v(LOG_TAG, "The Google Play Services Advertising Identifier feature is not available.");
            return AdvertisingInfo.createNotAvailable();
        }
        if (!isGPSAvailableSet() && !ReflectionUtils.isClassAvailable("com.google.android.gms.ads.identifier.AdvertisingIdClient"))
        {
            Log.v(LOG_TAG, "The Google Play Services Advertising Identifier feature is not available.");
            setGooglePlayServicesAvailable(false);
            return AdvertisingInfo.createNotAvailable();
        } else
        {
            AdvertisingInfo advertisinginfo = createGooglePlayServicesAdapter().getAdvertisingIdentifierInfo();
            setGooglePlayServicesAvailable(advertisinginfo.isGPSAvailable());
            return advertisinginfo;
        }
    }


    private class AdvertisingInfo
    {

        private String advertisingIdentifier;
        private boolean gpsAvailable;
        private boolean limitAdTrackingEnabled;

        static AdvertisingInfo createNotAvailable()
        {
            return (new AdvertisingInfo()).setGPSAvailable(false);
        }

        private AdvertisingInfo setGPSAvailable(boolean flag)
        {
            gpsAvailable = flag;
            return this;
        }

        String getAdvertisingIdentifier()
        {
            return advertisingIdentifier;
        }

        boolean hasAdvertisingIdentifier()
        {
            return getAdvertisingIdentifier() != null;
        }

        boolean isGPSAvailable()
        {
            return gpsAvailable;
        }

        boolean isLimitAdTrackingEnabled()
        {
            return limitAdTrackingEnabled;
        }

        AdvertisingInfo setAdvertisingIdentifier(String s)
        {
            advertisingIdentifier = s;
            return this;
        }

        AdvertisingInfo setLimitAdTrackingEnabled(boolean flag)
        {
            limitAdTrackingEnabled = flag;
            return this;
        }

        protected AdvertisingInfo()
        {
            gpsAvailable = true;
        }
    }

}
