// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class PkParams
{

    public static String SK_ALGORITHM = "";
    public static String SK_EXPONENT = "";
    public static String SK_MODULUS = "";
    public static String SK_VERSION = "";
    UID a;

    public PkParams()
    {
        a = new UID();
    }

    public String getAlgorithm()
    {
        return SK_ALGORITHM;
    }

    public String getExponent()
    {
        return SK_EXPONENT;
    }

    public String getModulus()
    {
        return SK_MODULUS;
    }

    public UID getUID()
    {
        return a;
    }

    public String getVersion()
    {
        return SK_VERSION;
    }

    public void setFromMap(Map map)
    {
        Map map1 = (Map)map.get("pk");
        SK_VERSION = InternalSDKUtil.getStringFromMap(map1, "ver");
        if (SK_VERSION.equals(""))
        {
            Log.internal("[InMobi]-4.3.0", "Key ver has illegal value");
            throw new IllegalArgumentException();
        }
        SK_ALGORITHM = InternalSDKUtil.getStringFromMap(map1, "alg");
        if (SK_ALGORITHM.equals(""))
        {
            Log.internal("[InMobi]-4.3.0", "Key alg has illegal value");
            throw new IllegalArgumentException();
        }
        if (SK_ALGORITHM.equalsIgnoreCase("rsa"))
        {
            Map map2 = (Map)map1.get("val");
            SK_EXPONENT = InternalSDKUtil.getStringFromMap(map2, "e");
            SK_MODULUS = InternalSDKUtil.getStringFromMap(map2, "m");
            if (SK_MODULUS.equals(""))
            {
                Log.internal("[InMobi]-4.3.0", "Key m has illegal value");
                throw new IllegalArgumentException();
            }
            if (SK_EXPONENT.equals(""))
            {
                Log.internal("[InMobi]-4.3.0", "Key e has illegal value");
                throw new IllegalArgumentException();
            }
            if (!InternalSDKUtil.isHexString(SK_EXPONENT))
            {
                Log.internal("[InMobi]-4.3.0", "Key e has illegal value");
                throw new IllegalArgumentException();
            }
            if (!InternalSDKUtil.isHexString(SK_MODULUS))
            {
                Log.internal("[InMobi]-4.3.0", "Key m has illegal value");
                throw new IllegalArgumentException();
            }
        }
    }

}
