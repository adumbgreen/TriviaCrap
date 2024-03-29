// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


class Version
{

    private static String buildVersion = "5.4.192";
    private static String devBuild = "(DEV)";
    private static String prefixVersion = "amznAdSDK-android-";
    private static String sdkVersion = null;
    private static String userAgentPrefixVersion = "AmazonAdSDK-Android/";
    private static String userAgentSDKVersion = null;

    Version()
    {
    }

    public static String getRawSDKVersion()
    {
        String s = buildVersion;
        if (s == null || s.equals(""))
        {
            s = devBuild;
        } else
        if (s.endsWith("x"))
        {
            return (new StringBuilder()).append(s).append(devBuild).toString();
        }
        return s;
    }

    public static String getSDKVersion()
    {
        if (sdkVersion == null)
        {
            sdkVersion = (new StringBuilder()).append(prefixVersion).append(getRawSDKVersion()).toString();
        }
        return sdkVersion;
    }

    public static String getUserAgentSDKVersion()
    {
        if (userAgentSDKVersion == null)
        {
            userAgentSDKVersion = (new StringBuilder()).append(userAgentPrefixVersion).append(getRawSDKVersion()).toString();
        }
        return userAgentSDKVersion;
    }

    protected static void setSDKVersion(String s)
    {
        sdkVersion = s;
    }

}
