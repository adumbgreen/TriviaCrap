// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.lifestreet.android.lsmsdk.annotations.NetworkAdapter;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import dalvik.system.DexFile;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AdapterMappingItem, BannerAdapter, InterstitialAdapter, AdType

public final class AdapterMapping
{

    private static AdapterMapping sAdapterMapping = null;
    private static final String sAdapterPackages[] = {
        "com.lifestreet.android.lsmsdk.adapters."
    };
    private final Map mBannerAdapterMapping = new HashMap();
    private final Map mInterstitialAdapterMapping = new HashMap();

    private AdapterMapping(Context context)
    {
        try
        {
            Enumeration enumeration = getApplicationDexFile(context).entries();
            do
            {
                if (!enumeration.hasMoreElements())
                {
                    break;
                }
                String s = (String)enumeration.nextElement();
                if (withinTheAdapterPackage(s))
                {
                    addToAdapterMapping(mBannerAdapterMapping, mInterstitialAdapterMapping, s);
                }
            } while (true);
        }
        catch (Exception exception)
        {
            LSMLogger.LOGGER.warning((new StringBuilder()).append("Error while mapping adapters: ").append(exception.getMessage()).toString());
        }
    }

    private static void addToAdapterMapping(Map map, Map map1, String s)
    {
        AdapterMappingItem adaptermappingitem = createAdapterMappingItem(s);
        if (adaptermappingitem != null)
        {
            adaptermappingitem.putToAppropriateMapping(map, map1);
        }
    }

    private static AdapterMappingItem createAdapterMappingItem(String s)
    {
        Class class1 = Class.forName(s);
        AdapterMappingItem adaptermappingitem = null;
        if (class1 != null)
        {
            NetworkAdapter networkadapter = (NetworkAdapter)class1.getAnnotation(com/lifestreet/android/lsmsdk/annotations/NetworkAdapter);
            adaptermappingitem = null;
            if (networkadapter != null)
            {
                String s1 = networkadapter.name();
                int i = s1.length();
                adaptermappingitem = null;
                if (i > 0)
                {
                    AdapterMappingItem.Type type = getAdapterType(class1);
                    AdapterMappingItem adaptermappingitem1;
                    if (type == AdapterMappingItem.Type.UNKNOWN)
                    {
                        adaptermappingitem1 = null;
                    } else
                    {
                        adaptermappingitem1 = new AdapterMappingItem(s1, type, class1);
                    }
                    adaptermappingitem = adaptermappingitem1;
                }
            }
        }
        return adaptermappingitem;
    }

    private static AdapterMappingItem.Type getAdapterType(Class class1)
    {
        AdapterMappingItem.Type type = AdapterMappingItem.Type.UNKNOWN;
        boolean flag = com/lifestreet/android/lsmsdk/BannerAdapter.isAssignableFrom(class1);
        boolean flag1 = com/lifestreet/android/lsmsdk/InterstitialAdapter.isAssignableFrom(class1);
        if (flag && flag1)
        {
            type = AdapterMappingItem.Type.BOTH;
        } else
        {
            if (flag)
            {
                return AdapterMappingItem.Type.BANNER;
            }
            if (flag1)
            {
                return AdapterMappingItem.Type.INTERSTITIAL;
            }
        }
        return type;
    }

    private static DexFile getApplicationDexFile(Context context)
    {
        if (context == null)
        {
            throw new Exception("Context can't be null");
        } else
        {
            String s = context.getPackageName();
            return new DexFile(context.getPackageManager().getApplicationInfo(s, 0).sourceDir);
        }
    }

    public static AdapterMapping getInstance(Context context)
    {
        if (sAdapterMapping == null)
        {
            sAdapterMapping = new AdapterMapping(context);
            LSMLogger.LOGGER.info((new StringBuilder()).append("Adapters found: ").append(sAdapterMapping).toString());
        }
        return sAdapterMapping;
    }

    private static boolean withinTheAdapterPackage(String s)
    {
        boolean flag = false;
        if (s == null) goto _L2; else goto _L1
_L1:
        String as[];
        int i;
        int j;
        as = sAdapterPackages;
        i = as.length;
        j = 0;
_L7:
        flag = false;
        if (j >= i) goto _L2; else goto _L3
_L3:
        if (!s.startsWith(as[j])) goto _L5; else goto _L4
_L4:
        flag = true;
_L2:
        return flag;
_L5:
        j++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public Map getAdapterMapping(AdType adtype)
    {
        if (adtype == AdType.INTERSTITIAL)
        {
            return mInterstitialAdapterMapping;
        } else
        {
            return mBannerAdapterMapping;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("{Banner=").append(mBannerAdapterMapping.toString()).append(", Interstitial=").append(mInterstitialAdapterMapping.toString()).append("}").toString();
    }

}
