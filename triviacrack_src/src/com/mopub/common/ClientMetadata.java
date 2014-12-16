// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Utils;

public class ClientMetadata
{

    private static volatile ClientMetadata a;
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f;
    private boolean g;
    private final String h;
    private final String i;
    private final String j;
    private final String k = "3.2.2";
    private final String l;
    private final Context m;
    private final ConnectivityManager n;

    private ClientMetadata(Context context)
    {
        f = false;
        g = false;
        m = context.getApplicationContext();
        n = (ConnectivityManager)m.getSystemService("connectivity");
        h = Build.MANUFACTURER;
        i = Build.MODEL;
        j = Build.PRODUCT;
        l = a(m);
        TelephonyManager telephonymanager = (TelephonyManager)m.getSystemService("phone");
        b = telephonymanager.getNetworkOperator();
        if (telephonymanager.getPhoneType() == 2 && telephonymanager.getSimState() == 5)
        {
            b = telephonymanager.getSimOperator();
        }
        c = telephonymanager.getNetworkCountryIso();
        try
        {
            d = telephonymanager.getNetworkOperatorName();
        }
        catch (SecurityException securityexception)
        {
            d = null;
        }
        e = b(m);
    }

    private static String a(Context context)
    {
        String s1;
        try
        {
            String s = context.getPackageName();
            s1 = context.getPackageManager().getPackageInfo(s, 0).versionName;
        }
        catch (Exception exception)
        {
            MoPubLog.d("Failed to retrieve PackageInfo#versionName.");
            return null;
        }
        return s1;
    }

    private static String b(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        String s1;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = Utils.sha1(s);
        }
        return (new StringBuilder()).append("sha:").append(s1).toString();
    }

    public static void clearForTesting()
    {
        com/mopub/common/ClientMetadata;
        JVM INSTR monitorenter ;
        a = null;
        com/mopub/common/ClientMetadata;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static ClientMetadata getInstance()
    {
        ClientMetadata clientmetadata;
        clientmetadata = a;
        if (clientmetadata != null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        com/mopub/common/ClientMetadata;
        JVM INSTR monitorenter ;
        ClientMetadata clientmetadata1 = a;
        com/mopub/common/ClientMetadata;
        JVM INSTR monitorexit ;
        return clientmetadata1;
        Exception exception;
        exception;
        com/mopub/common/ClientMetadata;
        JVM INSTR monitorexit ;
        throw exception;
        return clientmetadata;
    }

    public static ClientMetadata getInstance(Context context)
    {
        ClientMetadata clientmetadata;
        clientmetadata = a;
        if (clientmetadata != null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        com/mopub/common/ClientMetadata;
        JVM INSTR monitorenter ;
        ClientMetadata clientmetadata1 = a;
        if (clientmetadata1 != null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        clientmetadata1 = new ClientMetadata(context);
        a = clientmetadata1;
        com/mopub/common/ClientMetadata;
        JVM INSTR monitorexit ;
        return clientmetadata1;
        Exception exception;
        exception;
        com/mopub/common/ClientMetadata;
        JVM INSTR monitorexit ;
        throw exception;
        return clientmetadata;
    }

    public MoPubNetworkType getActiveNetworkType()
    {
        int i1 = -1;
        if (m.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
        {
            NetworkInfo networkinfo = n.getActiveNetworkInfo();
            if (networkinfo != null)
            {
                i1 = networkinfo.getType();
            }
        }
        return MoPubNetworkType.a(i1);
    }

    public String getAdvertisingId()
    {
        this;
        JVM INSTR monitorenter ;
        String s = e;
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public String getAppVersion()
    {
        return l;
    }

    public float getDensity()
    {
        return m.getResources().getDisplayMetrics().density;
    }

    public String getDeviceManufacturer()
    {
        return h;
    }

    public String getDeviceModel()
    {
        return i;
    }

    public String getDeviceProduct()
    {
        return j;
    }

    public String getIsoCountryCode()
    {
        return c;
    }

    public String getNetworkOperator()
    {
        return b;
    }

    public String getNetworkOperatorName()
    {
        return d;
    }

    public String getOrientationString()
    {
        int i1 = m.getResources().getConfiguration().orientation;
        String s = "u";
        if (i1 == 1)
        {
            s = "p";
        } else
        {
            if (i1 == 2)
            {
                return "l";
            }
            if (i1 == 3)
            {
                return "s";
            }
        }
        return s;
    }

    public String getSdkVersion()
    {
        return k;
    }

    public boolean isAdvertisingInfoSet()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = g;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isDoNotTrackSet()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = f;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public void setAdvertisingInfo(String s, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        e = (new StringBuilder()).append("ifa:").append(s).toString();
        f = flag;
        g = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private class MoPubNetworkType extends Enum
    {

        public static final MoPubNetworkType ETHERNET;
        public static final MoPubNetworkType MOBILE;
        public static final MoPubNetworkType UNKNOWN;
        public static final MoPubNetworkType WIFI;
        private static final MoPubNetworkType b[];
        private final int a;

        static MoPubNetworkType a(int i1)
        {
            return b(i1);
        }

        private static MoPubNetworkType b(int i1)
        {
            switch (i1)
            {
            case 6: // '\006'
            case 7: // '\007'
            case 8: // '\b'
            default:
                return UNKNOWN;

            case 9: // '\t'
                return ETHERNET;

            case 1: // '\001'
                return WIFI;

            case 0: // '\0'
            case 2: // '\002'
            case 3: // '\003'
            case 4: // '\004'
            case 5: // '\005'
                return MOBILE;
            }
        }

        public static MoPubNetworkType valueOf(String s)
        {
            return (MoPubNetworkType)Enum.valueOf(com/mopub/common/ClientMetadata$MoPubNetworkType, s);
        }

        public static MoPubNetworkType[] values()
        {
            return (MoPubNetworkType[])b.clone();
        }

        public String toString()
        {
            return Integer.toString(a);
        }

        static 
        {
            UNKNOWN = new MoPubNetworkType("UNKNOWN", 0, 0);
            ETHERNET = new MoPubNetworkType("ETHERNET", 1, 1);
            WIFI = new MoPubNetworkType("WIFI", 2, 2);
            MOBILE = new MoPubNetworkType("MOBILE", 3, 3);
            MoPubNetworkType amopubnetworktype[] = new MoPubNetworkType[4];
            amopubnetworktype[0] = UNKNOWN;
            amopubnetworktype[1] = ETHERNET;
            amopubnetworktype[2] = WIFI;
            amopubnetworktype[3] = MOBILE;
            b = amopubnetworktype;
        }

        private MoPubNetworkType(String s, int i1, int j1)
        {
            super(s, i1);
            a = j1;
        }
    }

}
