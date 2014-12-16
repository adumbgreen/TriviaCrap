// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.lifestreet.android.lsmsdk.commons.StringUtils;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.OpenUDID.a;

public final class DeviceInfo
{

    public static final String ANDROID_ID_MAP_KEY = "_androidid";
    public static final String ANDROID_ID_MD5_MAP_KEY = "_androididmd5";
    public static final String ANDROID_ID_SHA1_MAP_KEY = "_androididsha1";
    public static final String CONNECTION_TYPE_MAP_KEY = "contype";
    public static final String COUNTRY_MAP_KEY = "country";
    public static final String DEVICE_ID_MAP_KEY = "_did";
    public static final String DEVICE_ID_MD5_MAP_KEY = "_didmd5";
    public static final String DEVICE_ID_SHA1_MAP_KEY = "_didsha1";
    public static final String DEVICE_MAP_KEY = "device";
    public static final String DEVICE_MODEL_MAP_KEY = "dmodel";
    public static final String DEVICE_PLATFORM_MAP_KEY = "_device_platform";
    public static final String DEVICE_TYPE_MAP_KEY = "dtype";
    public static final String DSP_HEIGHT_MAP_KEY = "dspHeight";
    public static final String DSP_WIDTH_MAP_KEY = "dspWidth";
    public static final String LANGUAGE_MAP_KEY = "lang";
    public static final String LOCALE_MAP_KEY = "locale";
    public static final String OPEN_UDID_MAP_KEY = "openudid";
    public static final String OS_API_MAP_KEY = "osapi";
    public static final String OS_BUILD_MAP_KEY = "osbuild";
    public static final String OS_VERSION_MAP_KEY = "osver";
    public static final String PACKAGE_MAP_KEY = "package";
    public static final String SERIAL_NUMBER_MAP_KEY = "_android_serial";
    private static final String sCountry = Locale.getDefault().getCountry();
    private static final String sDevice;
    private static final String sDeviceModel;
    private static String sDspHeight = null;
    private static String sDspWidth = null;
    private static final String sLanguage = Locale.getDefault().getLanguage();
    private static final String sLocale = Locale.getDefault().toString();
    private static final String sOsApi;
    private static final String sOsBuild;
    private static final String sOsVersion;
    private static String sRawAndroidId = null;
    private static String sRawDeviceId = null;
    private static final String sSerialNumber = _getSerialNumber();
    private final WeakReference mContextRef;

    public DeviceInfo(Context context)
    {
        mContextRef = new WeakReference(context);
        if (sRawDeviceId == null)
        {
            sRawDeviceId = getRawDeviceId();
        }
        if (sRawAndroidId == null)
        {
            sRawAndroidId = getRawAndroidId();
        }
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        if (displaymetrics != null)
        {
            if (sDspWidth == null)
            {
                sDspWidth = String.valueOf(displaymetrics.widthPixels);
            }
            if (sDspHeight == null)
            {
                sDspHeight = String.valueOf(displaymetrics.heightPixels);
            }
        }
    }

    private static String _getSerialNumber()
    {
        Field field;
        String s;
        try
        {
            field = android/os/Build.getField("SERIAL");
        }
        catch (Exception exception)
        {
            return "unknown";
        }
        if (field == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        s = (String)field.get(null);
        return s;
        return "unknown";
    }

    private Context getContext()
    {
        if (mContextRef != null)
        {
            return (Context)mContextRef.get();
        } else
        {
            return null;
        }
    }

    private String getRawAndroidId()
    {
        String s = "unknown";
        Context context = getContext();
        if (context != null)
        {
            String s1 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (s1 != null)
            {
                s = s1.toLowerCase(Locale.US);
            }
        }
        return s;
    }

    private String getRawDeviceId()
    {
        Context context = getContext();
        if (context != null && context.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0)
        {
            TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
            if (telephonymanager != null && telephonymanager.getDeviceId() != null)
            {
                return telephonymanager.getDeviceId().toLowerCase(Locale.US);
            }
        }
        return "unknown";
    }

    public String getAndroidId()
    {
        return sRawAndroidId;
    }

    public String getAndroidIdMd5()
    {
        return StringUtils.md5(sRawAndroidId);
    }

    public String getAndroidIdSha1()
    {
        return StringUtils.sha1(sRawAndroidId);
    }

    public String getConnectionType()
    {
        Context context = getContext();
        if (context == null) goto _L2; else goto _L1
_L1:
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager == null) goto _L2; else goto _L3
_L3:
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
_L5:
        if (networkinfo != null)
        {
            if (networkinfo.getType() == 1)
            {
                return "wifi";
            } else
            {
                return "carrier";
            }
        } else
        {
            return "unknown";
        }
_L2:
        networkinfo = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String getCountry()
    {
        return sCountry;
    }

    public String getDevice()
    {
        return sDevice;
    }

    public String getDeviceId()
    {
        return StringUtils.base64(sRawDeviceId);
    }

    public String getDeviceIdMd5()
    {
        return StringUtils.md5(sRawDeviceId);
    }

    public String getDeviceIdSha1()
    {
        return StringUtils.sha1(sRawDeviceId);
    }

    public String getDeviceModel()
    {
        return sDeviceModel;
    }

    public String getDevicePlatform()
    {
        return "InApp";
    }

    public String getDeviceType()
    {
        return "Android";
    }

    public String getDspHeight()
    {
        return sDspHeight;
    }

    public String getDspWidth()
    {
        return sDspWidth;
    }

    public String getLanguage()
    {
        return sLanguage;
    }

    public String getLocale()
    {
        return sLocale;
    }

    public String getOpenUDID()
    {
        return a.a();
    }

    public String getOsApi()
    {
        return sOsApi;
    }

    public String getOsBuild()
    {
        return sOsBuild;
    }

    public String getOsVersion()
    {
        return sOsVersion;
    }

    public String getPackage()
    {
        Context context = getContext();
        if (context != null)
        {
            return context.getPackageName();
        } else
        {
            return "unknown";
        }
    }

    public String getSerialNumber()
    {
        return sSerialNumber;
    }

    public Map toMap()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("_device_platform", "InApp");
        hashmap.put("device", sDevice);
        hashmap.put("dtype", "Android");
        hashmap.put("dmodel", sDeviceModel);
        hashmap.put("osbuild", sOsBuild);
        hashmap.put("osapi", sOsApi);
        hashmap.put("osver", sOsVersion);
        hashmap.put("locale", sLocale);
        hashmap.put("country", sCountry);
        hashmap.put("lang", sLanguage);
        hashmap.put("_android_serial", sSerialNumber);
        hashmap.put("package", getPackage());
        hashmap.put("_did", getDeviceId());
        hashmap.put("_didmd5", getDeviceIdMd5());
        hashmap.put("_didsha1", getDeviceIdSha1());
        hashmap.put("_androidid", getAndroidId());
        hashmap.put("_androididmd5", getAndroidIdMd5());
        hashmap.put("_androididsha1", getAndroidIdSha1());
        hashmap.put("contype", getConnectionType());
        hashmap.put("openudid", getOpenUDID());
        hashmap.put("dspWidth", sDspWidth);
        hashmap.put("dspHeight", sDspHeight);
        return hashmap;
    }

    static 
    {
        sDevice = Build.DEVICE;
        sDeviceModel = (new StringBuilder()).append(Build.MODEL).append(" (").append(Build.PRODUCT).append(")").toString();
        sOsBuild = android.os.Build.VERSION.INCREMENTAL;
        sOsApi = String.valueOf(android.os.Build.VERSION.SDK_INT);
        sOsVersion = android.os.Build.VERSION.RELEASE;
    }
}
