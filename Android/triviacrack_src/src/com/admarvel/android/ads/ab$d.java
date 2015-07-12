// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.admarvel.android.ads:
//            ab

class b extends AsyncTask
{

    final ab a;
    private String b;

    protected transient Boolean a(Void avoid[])
    {
        Context context = (Context)ab.a(a).get();
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        return Boolean.valueOf(false);
        Boolean boolean1;
        if (!((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo().isConnected())
        {
            break MISSING_BLOCK_LABEL_111;
        }
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(b)).openConnection();
        httpurlconnection.setReadTimeout(10000);
        httpurlconnection.setConnectTimeout(5000);
        httpurlconnection.connect();
        if (httpurlconnection.getResponseCode() == 200)
        {
            return Boolean.valueOf(true);
        }
        boolean1 = Boolean.valueOf(false);
        return boolean1;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return Boolean.valueOf(false);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    public r(ab ab1, String s)
    {
        a = ab1;
        super();
        b = s;
    }
}
