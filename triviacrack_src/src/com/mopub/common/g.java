// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.factories.MethodBuilderFactory;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;

// Referenced classes of package com.mopub.common:
//            GpsHelper

class g extends AsyncTask
{

    private WeakReference a;
    private WeakReference b;

    public g(Context context, GpsHelper.GpsHelperListener gpshelperlistener)
    {
        a = new WeakReference(context);
        b = new WeakReference(gpshelperlistener);
    }

    protected transient Void a(Void avoid[])
    {
        Context context = (Context)a.get();
        if (context == null)
        {
            return null;
        }
        Object obj = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(GpsHelper.a())).addParam(android/content/Context, context).execute();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        GpsHelper.a(context, obj);
        return null;
        Exception exception;
        exception;
        MoPubLog.d("Unable to obtain AdvertisingIdClient.getAdvertisingIdInfo()");
        return null;
    }

    protected void a(Void void1)
    {
        GpsHelper.GpsHelperListener gpshelperlistener = (GpsHelper.GpsHelperListener)b.get();
        if (gpshelperlistener != null)
        {
            gpshelperlistener.onFetchAdInfoCompleted();
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }
}
