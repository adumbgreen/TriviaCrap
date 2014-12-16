// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util.vast;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import com.mopub.common.HttpClient;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Strings;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.mopub.mobileads.util.vast:
//            a, d

public class VastXmlManagerAggregator extends AsyncTask
{

    private final WeakReference a;
    private int b;

    VastXmlManagerAggregator(d d1)
    {
        a = new WeakReference(d1);
    }

    String a(AndroidHttpClient androidhttpclient, String s)
    {
        String s1 = null;
        if (s != null)
        {
            int i = b;
            s1 = null;
            if (i < 20)
            {
                b = 1 + b;
                HttpEntity httpentity = androidhttpclient.execute(new HttpGet(s)).getEntity();
                s1 = null;
                if (httpentity != null)
                {
                    s1 = Strings.fromStream(httpentity.getContent());
                }
            }
        }
        return s1;
    }

    protected transient List a(String as[])
    {
        AndroidHttpClient androidhttpclient = null;
        AndroidHttpClient androidhttpclient2 = HttpClient.getHttpClient();
        AndroidHttpClient androidhttpclient1 = androidhttpclient2;
        if (as == null) goto _L2; else goto _L1
_L1:
        if (as.length <= 0) goto _L2; else goto _L3
_L3:
        String s;
        ArrayList arraylist1;
        s = as[0];
        arraylist1 = new ArrayList();
_L5:
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        String s1;
        if (s.length() <= 0 || isCancelled())
        {
            break; /* Loop/switch isn't completed */
        }
        a a1 = new a();
        a1.a(s);
        arraylist1.add(a1);
        s1 = a(androidhttpclient1, a1.a());
        s = s1;
        if (true) goto _L5; else goto _L4
_L4:
        ArrayList arraylist = arraylist1;
_L12:
        if (androidhttpclient1 != null)
        {
            androidhttpclient1.close();
        }
_L7:
        return arraylist;
        Exception exception1;
        exception1;
        Exception exception2;
        exception2 = exception1;
        arraylist = null;
_L10:
        MoPubLog.d("Failed to parse VAST XML", exception2);
        if (androidhttpclient == null) goto _L7; else goto _L6
_L6:
        androidhttpclient.close();
        return arraylist;
        Exception exception;
        exception;
        androidhttpclient1 = null;
_L9:
        if (androidhttpclient1 != null)
        {
            androidhttpclient1.close();
        }
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        androidhttpclient1 = androidhttpclient;
        if (true) goto _L9; else goto _L8
_L8:
        Exception exception3;
        exception3;
        androidhttpclient = androidhttpclient1;
        exception2 = exception3;
        arraylist = null;
          goto _L10
        Exception exception4;
        exception4;
        androidhttpclient = androidhttpclient1;
        exception2 = exception4;
        arraylist = arraylist1;
          goto _L10
_L2:
        arraylist = null;
        if (true) goto _L12; else goto _L11
_L11:
    }

    protected void a(List list)
    {
        d d1 = (d)a.get();
        if (d1 != null)
        {
            d1.onAggregationComplete(list);
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onCancelled()
    {
        d d1 = (d)a.get();
        if (d1 != null)
        {
            d1.onAggregationComplete(null);
        }
    }

    protected void onPostExecute(Object obj)
    {
        a((List)obj);
    }
}
