// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            UserAgentManager, StringUtils, WebUtils, InternalAdRegistration, 
//            IInternalAdRegistration, Log, JSONUtils, DisplayUtils, 
//            Size

class DeviceInfo
{

    private static final String LOG_TAG = "DeviceInfo";
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";
    public static final String ORIENTATION_UNKNOWN = "unknown";
    public static final String WIFI_NAME = "Wifi";
    private static final String dt = "android";
    private static final String make;
    private static final String model;
    private static final String os = "Android";
    private static final String osVersion;
    private boolean bad_mac;
    private boolean bad_serial;
    private boolean bad_udid;
    private String carrier;
    private String country;
    private Size landscapeScreenSize;
    private String language;
    private boolean macFetched;
    private String md5_mac;
    private String md5_serial;
    private String md5_udid;
    private Size portraitScreenSize;
    private float scalingFactor;
    private String scalingFactorAsString;
    private boolean serialFetched;
    private String sha1_mac;
    private String sha1_serial;
    private String sha1_udid;
    private String udid;
    private boolean udidFetched;
    private UserAgentManager userAgentManager;

    protected DeviceInfo()
    {
    }

    public DeviceInfo(Context context)
    {
        setCountry();
        setCarrier(context);
        setLanguage();
        setScalingFactor(context);
        userAgentManager = new UserAgentManager();
    }

    public static String getDeviceType()
    {
        return "android";
    }

    public static String getMake()
    {
        return make;
    }

    public static String getModel()
    {
        return model;
    }

    public static String getOS()
    {
        return "Android";
    }

    public static String getOSVersion()
    {
        return osVersion;
    }

    private void setCarrier(Context context)
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        if (telephonymanager != null)
        {
            String s = telephonymanager.getNetworkOperatorName();
            if (s == null || s.length() <= 0)
            {
                s = null;
            }
            carrier = s;
        }
    }

    private void setCountry()
    {
        String s = Locale.getDefault().getCountry();
        if (s == null || s.length() <= 0)
        {
            s = null;
        }
        country = s;
    }

    private void setLanguage()
    {
        String s = Locale.getDefault().getLanguage();
        if (s == null || s.length() <= 0)
        {
            s = null;
        }
        language = s;
    }

    private void setMacAddressIfNotFetched()
    {
        if (!macFetched)
        {
            setMacAddress();
        }
    }

    private void setScalingFactor(Context context)
    {
        if (make.equals("motorola") && model.equals("MB502"))
        {
            scalingFactor = 1.0F;
        } else
        {
            WindowManager windowmanager = (WindowManager)context.getSystemService("window");
            DisplayMetrics displaymetrics = new DisplayMetrics();
            windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
            scalingFactor = displaymetrics.scaledDensity;
        }
        scalingFactorAsString = Float.toString(scalingFactor);
    }

    private void setSerial()
    {
        String s;
        try
        {
            s = (String)android/os/Build.getDeclaredField("SERIAL").get(android/os/Build);
        }
        catch (Exception exception)
        {
            s = null;
        }
        if (s == null || s.length() == 0 || s.equalsIgnoreCase("unknown"))
        {
            bad_serial = true;
        } else
        {
            sha1_serial = WebUtils.getURLEncodedString(StringUtils.sha1(s));
        }
        serialFetched = true;
    }

    private void setSerialIfNotFetched()
    {
        if (!serialFetched)
        {
            setSerial();
        }
    }

    private void setUdid()
    {
        String s = android.provider.Settings.Secure.getString(InternalAdRegistration.getInstance().getApplicationContext().getContentResolver(), "android_id");
        if (StringUtils.isNullOrEmpty(s) || s.equalsIgnoreCase("9774d56d682e549c"))
        {
            udid = null;
            sha1_udid = null;
            bad_udid = true;
        } else
        {
            udid = WebUtils.getURLEncodedString(s);
            sha1_udid = WebUtils.getURLEncodedString(StringUtils.sha1(s));
        }
        udidFetched = true;
    }

    private void setUdidIfNotFetched()
    {
        if (!udidFetched)
        {
            setUdid();
        }
    }

    public String getCarrier()
    {
        return carrier;
    }

    public String getConnectionType()
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)InternalAdRegistration.getInstance().getApplicationContext().getSystemService("connectivity");
        if (connectivitymanager == null) goto _L2; else goto _L1
_L1:
        NetworkInfo networkinfo2 = connectivitymanager.getActiveNetworkInfo();
        NetworkInfo networkinfo = networkinfo2;
_L5:
        NetworkInfo networkinfo1 = networkinfo;
_L3:
        SecurityException securityexception;
        if (networkinfo1 != null)
        {
            if (networkinfo1.getType() == 1)
            {
                return "Wifi";
            } else
            {
                return Integer.toString(networkinfo1.getSubtype());
            }
        } else
        {
            return Integer.toString(0);
        }
        securityexception;
        Log.d("DeviceInfo", "Unable to get active network information: %s", new Object[] {
            securityexception
        });
        networkinfo1 = null;
          goto _L3
_L2:
        networkinfo = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String getCountry()
    {
        return country;
    }

    public JSONObject getDInfoProperty()
    {
        JSONObject jsonobject = new JSONObject();
        JSONUtils.put(jsonobject, "make", getMake());
        JSONUtils.put(jsonobject, "model", getModel());
        JSONUtils.put(jsonobject, "os", getOS());
        JSONUtils.put(jsonobject, "osVersion", getOSVersion());
        JSONUtils.put(jsonobject, "scalingFactor", getScalingFactorAsString());
        JSONUtils.put(jsonobject, "language", getLanguage());
        JSONUtils.put(jsonobject, "country", getCountry());
        JSONUtils.put(jsonobject, "carrier", getCarrier());
        return jsonobject;
    }

    public String getLanguage()
    {
        return language;
    }

    public String getMacMd5()
    {
        setMacAddressIfNotFetched();
        return md5_mac;
    }

    public String getMacSha1()
    {
        setMacAddressIfNotFetched();
        return sha1_mac;
    }

    public String getOrientation()
    {
        switch (DisplayUtils.determineCanonicalScreenOrientation(InternalAdRegistration.getInstance().getApplicationContext()))
        {
        default:
            return "unknown";

        case 1: // '\001'
        case 9: // '\t'
            return "portrait";

        case 0: // '\0'
        case 8: // '\b'
            return "landscape";
        }
    }

    public float getScalingFactorAsFloat()
    {
        return scalingFactor;
    }

    public String getScalingFactorAsString()
    {
        return scalingFactorAsString;
    }

    public Size getScreenSize(String s)
    {
        if (s.equals("portrait") && portraitScreenSize != null)
        {
            return portraitScreenSize;
        }
        if (s.equals("landscape") && landscapeScreenSize != null)
        {
            return landscapeScreenSize;
        }
        WindowManager windowmanager = (WindowManager)InternalAdRegistration.getInstance().getApplicationContext().getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        String s1 = (new StringBuilder()).append(String.valueOf(displaymetrics.widthPixels)).append("x").append(String.valueOf(displaymetrics.heightPixels)).toString();
        if (s.equals("portrait"))
        {
            portraitScreenSize = new Size(s1);
            return portraitScreenSize;
        }
        if (s.equals("landscape"))
        {
            landscapeScreenSize = new Size(s1);
            return landscapeScreenSize;
        } else
        {
            return new Size(s1);
        }
    }

    public String getSerialMd5()
    {
        setSerialIfNotFetched();
        return md5_serial;
    }

    public String getSerialSha1()
    {
        setSerialIfNotFetched();
        return sha1_serial;
    }

    public String getUdid()
    {
        setUdidIfNotFetched();
        return udid;
    }

    public String getUdidMd5()
    {
        setUdidIfNotFetched();
        return md5_udid;
    }

    public String getUdidSha1()
    {
        setUdidIfNotFetched();
        return sha1_udid;
    }

    public String getUserAgentString()
    {
        return userAgentManager.getUserAgentString();
    }

    public boolean isMacBad()
    {
        setMacAddressIfNotFetched();
        return bad_mac;
    }

    public boolean isSerialBad()
    {
        setSerialIfNotFetched();
        return bad_serial;
    }

    public boolean isUdidBad()
    {
        setUdidIfNotFetched();
        return bad_udid;
    }

    public void populateUserAgentString(Context context)
    {
        userAgentManager.populateUserAgentString(context);
    }

    protected void setMacAddress()
    {
        WifiManager wifimanager;
        wifimanager = (WifiManager)InternalAdRegistration.getInstance().getApplicationContext().getSystemService("wifi");
        if (wifimanager == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        WifiInfo wifiinfo1 = wifimanager.getConnectionInfo();
        WifiInfo wifiinfo = wifiinfo1;
_L1:
        ExceptionInInitializerError exceptionininitializererror;
        SecurityException securityexception;
        if (wifiinfo == null)
        {
            sha1_mac = null;
        } else
        {
            String s = wifiinfo.getMacAddress();
            if (s == null || s.length() == 0)
            {
                sha1_mac = null;
                bad_mac = true;
            } else
            if (!Pattern.compile("((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})").matcher(s).find())
            {
                sha1_mac = null;
                bad_mac = true;
            } else
            {
                sha1_mac = WebUtils.getURLEncodedString(StringUtils.sha1(s));
            }
        }
        macFetched = true;
        return;
        securityexception;
        Log.d("DeviceInfo", "Unable to get Wifi connection information: %s", new Object[] {
            securityexception
        });
        wifiinfo = null;
          goto _L1
        exceptionininitializererror;
        Log.d("DeviceInfo", "Unable to get Wifi connection information: %s", new Object[] {
            exceptionininitializererror
        });
        wifiinfo = null;
          goto _L1
    }

    public void setUserAgentString(String s)
    {
        userAgentManager.setUserAgentString(s);
    }

    JSONObject toJsonObject(String s)
    {
        JSONObject jsonobject = getDInfoProperty();
        JSONUtils.put(jsonobject, "orientation", s);
        JSONUtils.put(jsonobject, "screenSize", getScreenSize(s).toString());
        JSONUtils.put(jsonobject, "connectionType", getConnectionType());
        return jsonobject;
    }

    public String toJsonString()
    {
        return toJsonObject(getOrientation()).toString();
    }

    static 
    {
        make = Build.MANUFACTURER;
        model = Build.MODEL;
        osVersion = android.os.Build.VERSION.RELEASE;
    }
}
