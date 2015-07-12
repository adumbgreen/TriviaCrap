// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;

// Referenced classes of package com.amazon.device.ads:
//            MetricsCollector

class AdUtils
{

    public static final String LOG_TAG = com/amazon/device/ads/AdUtils.getSimpleName();
    public static final String REQUIRED_ACTIVITY = "com.amazon.device.ads.AdActivity";
    private static AdUtilsExecutor executor = new AdUtilsExecutor();

    private AdUtils()
    {
    }

    public static double calculateScalingMultiplier(int i, int j, int k, int l)
    {
        return executor.calculateScalingMultiplier(i, j, k, l);
    }

    static boolean checkDefinedActivities(Context context)
    {
        return executor.checkDefinedActivities(context);
    }

    public static int deviceIndependentPixelToPixel(int i)
    {
        return executor.deviceIndependentPixelToPixel(i);
    }

    public static float getScalingFactorAsFloat()
    {
        return executor.getScalingFactorAsFloat();
    }

    public static double getViewportInitialScale(double d)
    {
        return executor.getViewportInitialScale(d);
    }

    public static int pixelToDeviceIndependentPixel(int i)
    {
        return executor.pixelToDeviceIndependentPixel(i);
    }

    static void setConnectionMetrics(String s, MetricsCollector metricscollector)
    {
        executor.setConnectionMetrics(s, metricscollector);
    }


    private class AdUtilsExecutor
    {

        private boolean hasRequiredActivities;
        private final HashSet requiredActivities = new HashSet();

        double calculateScalingMultiplier(int i, int j, int k, int l)
        {
            double d = (double)k / (double)i;
            double d1 = (double)l / (double)j;
            if ((d1 < d || d == 0.0D) && d1 != 0.0D)
            {
                d = d1;
            }
            if (d == 0.0D)
            {
                d = 1.0D;
            }
            return d;
        }

        boolean checkDefinedActivities(Context context)
        {
            HashSet hashset;
            if (hasRequiredActivities)
            {
                return true;
            }
            hashset = new HashSet();
            ActivityInfo aactivityinfo[];
            int i;
            if (!AndroidTargetUtils.isAtLeastAndroidAPI(8))
            {
                break MISSING_BLOCK_LABEL_102;
            }
            String s = AndroidTargetUtils.getPackageCodePath(context);
            aactivityinfo = context.getPackageManager().getPackageArchiveInfo(s, 1).activities;
            i = aactivityinfo.length;
            int j = 0;
_L2:
            if (j >= i)
            {
                break; /* Loop/switch isn't completed */
            }
            hashset.add(aactivityinfo[j].name);
            j++;
            if (true) goto _L2; else goto _L1
_L1:
            boolean flag;
            hasRequiredActivities = hashset.containsAll(requiredActivities);
            flag = hasRequiredActivities;
            return flag;
            Exception exception;
            exception;
            hasRequiredActivities = true;
            return true;
        }

        int deviceIndependentPixelToPixel(int i)
        {
            return (int)((float)i * getScalingFactorAsFloat());
        }

        float getScalingFactorAsFloat()
        {
            return InternalAdRegistration.getInstance().getDeviceInfo().getScalingFactorAsFloat();
        }

        double getViewportInitialScale(double d)
        {
            if (AndroidTargetUtils.isAtLeastAndroidAPI(19))
            {
                d = 1.0D;
            }
            return d;
        }

        int pixelToDeviceIndependentPixel(int i)
        {
            return (int)((float)i / getScalingFactorAsFloat());
        }

        void setConnectionMetrics(String s, MetricsCollector metricscollector)
        {
            DeviceInfo deviceinfo;
            if ("Wifi".equals(s))
            {
                metricscollector.incrementMetric(Metrics.MetricType.WIFI_PRESENT);
            } else
            {
                metricscollector.setMetricString(Metrics.MetricType.CONNECTION_TYPE, s);
            }
            deviceinfo = InternalAdRegistration.getInstance().getDeviceInfo();
            if (deviceinfo.getCarrier() != null)
            {
                metricscollector.setMetricString(Metrics.MetricType.CARRIER_NAME, deviceinfo.getCarrier());
            }
        }

        AdUtilsExecutor()
        {
            hasRequiredActivities = false;
            requiredActivities.add("com.amazon.device.ads.AdActivity");
        }
    }

}
