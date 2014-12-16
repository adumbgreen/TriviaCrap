// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

// Referenced classes of package com.amazon.device.ads:
//            Log, InternalAdRegistration, IInternalAdRegistration

public class AdActivity extends Activity
{

    static final String ADAPTER_KEY = "adapter";
    private static final String LOG_TAG = "AdAdapter";
    private IAdActivityAdapter adapter;

    public AdActivity()
    {
    }

    IAdActivityAdapter createAdapter()
    {
        String s = getIntent().getStringExtra("adapter");
        if (s == null)
        {
            Log.e("AdAdapter", "Unable to launch the AdActivity due to an internal error.");
            return null;
        }
        Class class1;
        Constructor constructor;
        IAdActivityAdapter iadactivityadapter;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Log.e("AdAdapter", "Unable to get the adapter class.");
            return null;
        }
        try
        {
            constructor = class1.getDeclaredConstructor(new Class[0]);
        }
        catch (SecurityException securityexception)
        {
            Log.e("AdAdapter", "Security exception when trying to get the default constructor.");
            return null;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e("AdAdapter", "No default constructor exists for the adapter.");
            return null;
        }
        try
        {
            iadactivityadapter = (IAdActivityAdapter)constructor.newInstance(new Object[0]);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.e("AdAdapter", "Illegal arguments given to the default constructor.");
            return null;
        }
        catch (InstantiationException instantiationexception)
        {
            Log.e("AdAdapter", "Instantiation exception when instantiating the adapter.");
            return null;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            Log.e("AdAdapter", "Illegal access exception when instantiating the adapter.");
            return null;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Log.e("AdAdapter", "Invocation target exception when instantiating the adapter.");
            return null;
        }
        return iadactivityadapter;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        adapter.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        InternalAdRegistration.getInstance().contextReceived(getApplicationContext());
        adapter = createAdapter();
        if (adapter == null)
        {
            finish();
            return;
        } else
        {
            adapter.setActivity(this);
            adapter.preOnCreate();
            super.onCreate(bundle);
            adapter.onCreate();
            return;
        }
    }

    public void onPause()
    {
        super.onPause();
        adapter.onPause();
    }

    public void onResume()
    {
        super.onResume();
        adapter.onResume();
    }

    public void onStop()
    {
        adapter.onStop();
        super.onStop();
    }

    private class IAdActivityAdapter
    {

        public abstract void onConfigurationChanged(Configuration configuration);

        public abstract void onCreate();

        public abstract void onPause();

        public abstract void onResume();

        public abstract void onStop();

        public abstract void preOnCreate();

        public abstract void setActivity(Activity activity);
    }

}
