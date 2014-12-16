// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.net.Uri;
import com.lifestreet.android.lsmsdk.annotations.NetworkParameter;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.Utils;
import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            SlotController, AdNetwork

public final class AdNetworkController
{

    private final AdNetwork mNetwork;

    public AdNetworkController(AdNetwork adnetwork)
    {
        mNetwork = adnetwork;
    }

    private String getParamValue(Map map, NetworkParameter networkparameter, String s, Map map1)
    {
        String s1 = networkparameter.name();
        String s2;
        boolean flag;
        boolean flag1;
        String s3;
        if (s1.length() != 0)
        {
            s = s1;
        }
        s2 = s.toUpperCase(Locale.US);
        flag = networkparameter.required();
        flag1 = networkparameter.appendSlotParams();
        if (map != null)
        {
            s3 = (String)map.get(s2);
            boolean flag2;
            if (s3 == null || s3.length() == 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (flag && flag2)
            {
                throw new AdapterException((new StringBuilder()).append("Required parameter missing (").append(s2).append(")").toString());
            }
            if (flag1 && !flag2 && map1 != null)
            {
                s3 = Utils.getUriWithQueryParams(s3, map1).toString();
            }
        } else
        {
            s3 = null;
            if (flag)
            {
                throw new AdapterException((new StringBuilder()).append("Required parameter missing (").append(s2).append(")").toString());
            }
        }
        return s3;
    }

    private void setFieldValue(Field field, Object obj, String s)
    {
        try
        {
            field.set(obj, s);
            return;
        }
        catch (Exception exception)
        {
            throw new AdapterException((new StringBuilder()).append("Error setting parameter value: ").append(exception.getMessage()).toString());
        }
    }

    public AdNetwork getNetwork()
    {
        return mNetwork;
    }

    public Object mapParameters(Class class1, SlotController slotcontroller)
    {
        Map map = null;
        if (slotcontroller != null)
        {
            map = slotcontroller.getSlotQueryParams();
        }
        return mapParameters(class1, map);
    }

    public Object mapParameters(Class class1, Map map)
    {
        int i = 0;
        Object obj;
        Field afield[];
        Map map1;
        if (class1 != null)
        {
            Object obj1;
            try
            {
                obj1 = class1.getConstructor(new Class[0]).newInstance(new Object[0]);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                throw new AdapterException((new StringBuilder()).append("No Such Method: ").append(nosuchmethodexception.getMessage()).toString());
            }
            catch (Exception exception)
            {
                throw new AdapterException((new StringBuilder()).append("Error instantiating parameters class: ").append(exception.getMessage()).toString());
            }
            obj = obj1;
            afield = class1.getFields();
        } else
        {
            obj = null;
            afield = null;
        }
        if (afield == null)
        {
            return null;
        }
        map1 = mNetwork.getParameters();
        for (int j = afield.length; i < j; i++)
        {
            Field field = afield[i];
            NetworkParameter networkparameter = (NetworkParameter)field.getAnnotation(com/lifestreet/android/lsmsdk/annotations/NetworkParameter);
            if (networkparameter != null)
            {
                setFieldValue(field, obj, getParamValue(map1, networkparameter, field.getName(), map));
            }
        }

        return obj;
    }

    public void trackClick()
    {
        String s = mNetwork.getClickUrl();
        LSMLogger.LOGGER.info((new StringBuilder()).append("Tracking click = ").append(s).toString());
        Utils.httpGetUrl(s, SlotController.USER_AGENT);
    }

    public void trackImpression()
    {
        String s = mNetwork.getImpressionUrl();
        LSMLogger.LOGGER.info((new StringBuilder()).append("Tracking impression = ").append(s).toString());
        Utils.httpGetUrl(s, SlotController.USER_AGENT);
    }

    public void trackNoBid()
    {
        String s = mNetwork.getNoBidUrl();
        LSMLogger.LOGGER.info((new StringBuilder()).append("Tracking nobid = ").append(s).toString());
        Utils.httpGetUrl(s, SlotController.USER_AGENT);
    }
}
