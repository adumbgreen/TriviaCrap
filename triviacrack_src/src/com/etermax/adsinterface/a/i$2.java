// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.etermax.adsinterface.a:
//            i

class a
    implements Runnable
{

    final String a;
    final i b;

    public void run()
    {
        try
        {
            DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
            defaulthttpclient.getParams().setParameter("http.useragent", "Custom user agent");
            defaulthttpclient.execute(new HttpPost(a));
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    HttpPost(i j, String s)
    {
        b = j;
        a = s;
        super();
    }
}
