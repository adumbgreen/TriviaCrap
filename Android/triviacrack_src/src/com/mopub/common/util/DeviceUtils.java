// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.StatFs;
import com.mopub.common.logging.MoPubLog;
import java.io.File;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

// Referenced classes of package com.mopub.common.util:
//            Utils, VersionCode

public class DeviceUtils
{

    private DeviceUtils()
    {
    }

    public static long diskCacheSizeBytes(File file)
    {
        long l;
        try
        {
            StatFs statfs = new StatFs(file.getAbsolutePath());
            l = ((long)statfs.getBlockCount() * (long)statfs.getBlockSize()) / 50L;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            MoPubLog.d("Unable to calculate 2% of available disk space, defaulting to minimum");
            l = 0x1e00000L;
        }
        return Math.max(Math.min(l, 0x6400000L), 0x1e00000L);
    }

    public static String getHashedUdid(Context context)
    {
        if (context == null)
        {
            return null;
        } else
        {
            return Utils.sha1(android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id"));
        }
    }

    public static String getIpAddress(IP ip)
    {
        Iterator iterator = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
_L2:
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_89;
        }
        iterator1 = Collections.list(((NetworkInterface)iterator.next()).getInetAddresses()).iterator();
_L4:
        if (!iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        InetAddress inetaddress = (InetAddress)iterator1.next();
        if (inetaddress.isLoopbackAddress()) goto _L4; else goto _L3
_L3:
        String s = inetaddress.getHostAddress().toUpperCase();
        if (!IP.a(ip, s)) goto _L4; else goto _L5
_L5:
        return IP.b(ip, s);
        return null;
    }

    public static String getUserAgent()
    {
        return System.getProperty("http.agent");
    }

    public static boolean isNetworkAvailable(Context context)
    {
        if (context == null)
        {
            return false;
        }
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1)
        {
            return false;
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
        {
            return true;
        }
        boolean flag;
        try
        {
            flag = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo().isConnected();
        }
        catch (NullPointerException nullpointerexception)
        {
            return false;
        }
        return flag;
    }

    public static int memoryCacheSizeBytes(Context context)
    {
        ActivityManager activitymanager;
        long l;
        activitymanager = (ActivityManager)context.getSystemService("activity");
        l = activitymanager.getMemoryClass();
        if (!VersionCode.currentApiLevel().isAtLeast(VersionCode.HONEYCOMB)) goto _L2; else goto _L1
_L1:
        int i = android/content/pm/ApplicationInfo.getDeclaredField("FLAG_LARGE_HEAP").getInt(null);
        if (!Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, i)) goto _L4; else goto _L3
_L3:
        int j = ((Integer)(new Reflection.MethodBuilder(activitymanager, "getLargeMemoryClass")).execute()).intValue();
        long l1 = j;
_L6:
        l = l1;
_L2:
        return (int)Math.min(0x1e00000L, 1024L * (1024L * (l / 8L)));
        Exception exception;
        exception;
        MoPubLog.d("Unable to reflectively determine large heap size on Honeycomb and above.");
        if (true) goto _L2; else goto _L4
_L4:
        l1 = l;
        if (true) goto _L6; else goto _L5
_L5:
    }

    // Unreferenced inner class com/mopub/common/util/DeviceUtils$1

/* anonymous class */
    class _cls1
    {

        static final int a[];

        static 
        {
            a = new int[IP.values().length];
            try
            {
                a[IP.IPv4.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[IP.IPv6.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1)
            {
                return;
            }
        }
    }


    private class IP extends Enum
    {

        public static final IP IPv4;
        public static final IP IPv6;
        private static final IP a[];

        static boolean a(IP ip, String s)
        {
            return ip.a(s);
        }

        private boolean a(String s)
        {
    class _cls1
    {

        static final int a[];

        static 
        {
            a = new int[IP.values().length];
            try
            {
                a[IP.IPv4.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[IP.IPv6.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1)
            {
                return;
            }
        }
    }

            switch (_cls1.a[ordinal()])
            {
            default:
                return false;

            case 1: // '\001'
                return InetAddressUtils.isIPv4Address(s);

            case 2: // '\002'
                return InetAddressUtils.isIPv6Address(s);
            }
        }

        static String b(IP ip, String s)
        {
            return ip.b(s);
        }

        private String b(String s)
        {
            switch (_cls1.a[ordinal()])
            {
            default:
                s = null;
                // fall through

            case 1: // '\001'
                return s;

            case 2: // '\002'
                return s.split("%")[0];
            }
        }

        public static IP valueOf(String s)
        {
            return (IP)Enum.valueOf(com/mopub/common/util/DeviceUtils$IP, s);
        }

        public static IP[] values()
        {
            return (IP[])a.clone();
        }

        static 
        {
            IPv4 = new IP("IPv4", 0);
            IPv6 = new IP("IPv6", 1);
            IP aip[] = new IP[2];
            aip[0] = IPv4;
            aip[1] = IPv6;
            a = aip;
        }

        private IP(String s, int i)
        {
            super(s, i);
        }
    }

}
