// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.HashMap;

// Referenced classes of package com.amazon.device.ads:
//            SISRequest, DeviceInfo, InternalAdRegistration, IInternalAdRegistration, 
//            RegistrationInfo, Configuration, WebUtils, AppInfo, 
//            AdvertisingIdentifier

abstract class SISDeviceRequest
    implements SISRequest
{

    private AdvertisingIdentifier.Info advertisingIdentifierInfo;
    private Metrics.MetricType callMetricType;
    private String logTag;
    private String path;

    SISDeviceRequest()
    {
    }

    private static String convertOptOutBooleanToStringInt(boolean flag)
    {
        if (flag)
        {
            return "1";
        } else
        {
            return "0";
        }
    }

    public static String getDInfoProperty()
    {
        Object aobj[] = new Object[4];
        aobj[0] = DeviceInfo.getMake();
        aobj[1] = DeviceInfo.getModel();
        aobj[2] = DeviceInfo.getOS();
        aobj[3] = DeviceInfo.getOSVersion();
        return String.format("{\"make\":\"%s\",\"model\":\"%s\",\"os\":\"%s\",\"osVersion\":\"%s\"}", aobj);
    }

    protected AdvertisingIdentifier.Info getAdvertisingIdentifierInfo()
    {
        return advertisingIdentifierInfo;
    }

    public Metrics.MetricType getCallMetricType()
    {
        return callMetricType;
    }

    public String getLogTag()
    {
        return logTag;
    }

    public String getPath()
    {
        return path;
    }

    public HashMap getPostParameters()
    {
        return null;
    }

    public WebRequest.QueryStringParameters getQueryParameters()
    {
        WebRequest.QueryStringParameters querystringparameters = new WebRequest.QueryStringParameters();
        querystringparameters.putUrlEncoded("dt", DeviceInfo.getDeviceType());
        querystringparameters.putUrlEncoded("app", InternalAdRegistration.getInstance().getRegistrationInfo().getAppName());
        querystringparameters.putUrlEncoded("aud", Configuration.getInstance().getString(Configuration.ConfigOption.SIS_DOMAIN));
        querystringparameters.putUrlEncoded("ua", WebUtils.getURLEncodedString(InternalAdRegistration.getInstance().getDeviceInfo().getUserAgentString()));
        querystringparameters.putUrlEncoded("dinfo", WebUtils.getURLEncodedString(getDInfoProperty()));
        querystringparameters.putUrlEncoded("pkg", WebUtils.getURLEncodedString(InternalAdRegistration.getInstance().getAppInfo().getPackageInfoJSONString()));
        String s;
        boolean flag;
        if (advertisingIdentifierInfo.hasAdvertisingIdentifier())
        {
            querystringparameters.putUrlEncoded("idfa", advertisingIdentifierInfo.getAdvertisingIdentifier());
            querystringparameters.putUrlEncoded("oo", convertOptOutBooleanToStringInt(advertisingIdentifierInfo.isLimitAdTrackingEnabled()));
        } else
        {
            DeviceInfo deviceinfo = InternalAdRegistration.getInstance().getDeviceInfo();
            querystringparameters.putUrlEncoded("sha1_mac", deviceinfo.getMacSha1());
            querystringparameters.putUrlEncoded("sha1_serial", deviceinfo.getSerialSha1());
            querystringparameters.putUrlEncoded("sha1_udid", deviceinfo.getUdidSha1());
            querystringparameters.putUrlEncodedIfTrue("badMac", "true", deviceinfo.isMacBad());
            querystringparameters.putUrlEncodedIfTrue("badSerial", "true", deviceinfo.isSerialBad());
            querystringparameters.putUrlEncodedIfTrue("badUdid", "true", deviceinfo.isUdidBad());
        }
        s = AdvertisingIdentifier.getAndClearTransition();
        if (s != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        querystringparameters.putUrlEncodedIfTrue("aidts", s, flag);
        return querystringparameters;
    }

    public SISDeviceRequest setAdvertisingIdentifierInfo(AdvertisingIdentifier.Info info)
    {
        advertisingIdentifierInfo = info;
        return this;
    }

    public SISDeviceRequest setCallMetricType(Metrics.MetricType metrictype)
    {
        callMetricType = metrictype;
        return this;
    }

    public SISDeviceRequest setLogTag(String s)
    {
        logTag = s;
        return this;
    }

    public SISDeviceRequest setPath(String s)
    {
        path = s;
        return this;
    }
}
