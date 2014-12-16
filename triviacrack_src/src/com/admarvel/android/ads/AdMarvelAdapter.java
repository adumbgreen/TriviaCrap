// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.admarvel.android.util.Logging;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelAd, AdMarvelXMLReader, AdMarvelInterstitialAdapterListener, AdMarvelAdapterListener

public abstract class AdMarvelAdapter
{

    public AdMarvelAdapter()
    {
    }

    protected static AdMarvelAdapter createInstance(String s)
    {
        return (AdMarvelAdapter)createObject(s);
    }

    private static Object createObject(String s)
    {
        Object obj;
        try
        {
            obj = Class.forName(s).newInstance();
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
        return obj;
    }

    protected abstract void cleanupView(View view);

    protected abstract void displayInterstitial(Activity activity, String s);

    protected abstract void forceCloseFullScreenAd(Activity activity);

    public abstract String getAdapterVersion();

    protected abstract String getAdnetworkSDKVersionInfo();

    protected abstract void initialize(Activity activity, Map map);

    protected abstract AdMarvelAd loadAd(AdMarvelAd admarvelad, AdMarvelXMLReader admarvelxmlreader);

    protected abstract void pause(Activity activity, Map map);

    protected abstract void requestIntersitialNewAd(AdMarvelInterstitialAdapterListener admarvelinterstitialadapterlistener, Context context, AdMarvelAd admarvelad, Map map, int i, int j);

    protected abstract View requestNewAd(AdMarvelAdapterListener admarveladapterlistener, Context context, AdMarvelAd admarvelad, Map map, int i, int j);

    protected abstract void resume(Activity activity, Map map);

    protected abstract void uninitialize(Activity activity, Map map);
}
