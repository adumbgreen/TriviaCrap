// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import com.admarvel.android.util.Logging;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public abstract class AdMarvelAnalyticsAdapter
{

    protected AdMarvelAnalyticsAdapter(Context context)
    {
    }

    protected static AdMarvelAnalyticsAdapter createInstance(String s, Context context)
    {
        return (AdMarvelAnalyticsAdapter)createObject(s, context);
    }

    private static Object createObject(String s, Context context)
    {
        Object obj;
        try
        {
            Constructor constructor = Class.forName(s).getDeclaredConstructor(new Class[] {
                android/content/Context
            });
            constructor.setAccessible(true);
            obj = constructor.newInstance(new Object[] {
                context
            });
        }
        catch (InstantiationException instantiationexception)
        {
            Logging.log(instantiationexception.getMessage());
            return null;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            Logging.log(illegalaccessexception.getMessage());
            return null;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Logging.log(classnotfoundexception.getMessage());
            return null;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Logging.log(nosuchmethodexception.getMessage());
            return null;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Logging.log(illegalargumentexception.getMessage());
            return null;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Logging.log(invocationtargetexception.getMessage());
            return null;
        }
        return obj;
    }

    public abstract String getAdapterAnalyticsVersion();

    protected abstract Map getEnhancedTargetParams(String s, Map map);

    protected abstract void onAdClick(String s, int i, Map map, String s1, String s2);

    protected abstract void onFailedToReceiveAd(String s, int i, Map map, String s1);

    protected abstract void onReceiveAd(String s, int i, Map map, String s1);

    protected abstract void pause();

    protected abstract void resume();

    protected abstract void start();

    protected abstract void stop();
}
