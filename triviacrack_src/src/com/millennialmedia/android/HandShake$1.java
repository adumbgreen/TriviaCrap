// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

// Referenced classes of package com.millennialmedia.android:
//            HandShake, MMSDK, MMLog, HttpGetRequest

class a
    implements Runnable
{

    final boolean a;
    final HandShake b;

    public void run()
    {
        Context context = (Context)HandShake.a(b).get();
        Context context1;
        StringBuilder stringbuilder;
        TreeMap treemap;
        IOException ioexception;
        boolean flag;
        Exception exception;
        Exception exception1;
        boolean flag1;
        Iterator iterator;
        String s;
        IOException ioexception1;
        HttpResponse httpresponse;
        IOException ioexception2;
        IOException ioexception3;
        HttpResponse httpresponse1;
        String s1;
        HttpResponse httpresponse2;
        int i;
        String s2;
        HttpResponse httpresponse3;
        int j;
        HttpResponse httpresponse4;
        java.util.t t;
        Object aobj[];
        if (context == null)
        {
            context1 = (Context)HandShake.b(b).get();
        } else
        {
            context1 = context;
        }
        if (context1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        stringbuilder = new StringBuilder();
        treemap = new TreeMap();
        treemap.put("ua", (new StringBuilder()).append("Android:").append(Build.MODEL).toString());
        flag1 = HandShake.a(b, context1);
        flag = flag1;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        treemap.put("firstlaunch", "1");
        if (a)
        {
            treemap.put("init", "1");
        }
        MMSDK.a(context1, treemap);
        for (iterator = treemap.entrySet().iterator(); iterator.hasNext(); stringbuilder.append(String.format("&%s=%s", aobj)))
        {
            t = (java.util.t)iterator.next();
            aobj = new Object[2];
            aobj[0] = t.tKey();
            aobj[1] = URLEncoder.encode((String)t.tValue(), "UTF-8");
        }

          goto _L3
        ioexception;
_L16:
        MMLog.a("HandShake", "Could not get a handshake. ", ioexception);
        return;
        exception;
_L14:
        if (flag)
        {
            HandShake.c(b, context1);
        }
        throw exception;
_L3:
        s = (new StringBuilder()).append(HandShake.d()).append(HandShake.a).append(stringbuilder.toString()).toString();
        MMLog.a("HandShake", String.format("Performing handshake: %s", new Object[] {
            s
        }));
        httpresponse4 = (new HttpGetRequest(3000)).a(s);
        httpresponse = httpresponse4;
_L10:
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_356;
        }
        j = httpresponse.getStatusLine().getStatusCode();
        if (j == 200)
        {
            break MISSING_BLOCK_LABEL_438;
        }
        HandShake.f(HandShake.d().replaceFirst("https://", "http://"));
        s2 = (new StringBuilder()).append(HandShake.d()).append(HandShake.a).append(stringbuilder.toString()).toString();
        MMLog.a("HandShake", String.format("Performing handshake (HTTP Fallback): %s", new Object[] {
            s2
        }));
        httpresponse3 = (new HttpGetRequest()).a(s2);
        httpresponse = httpresponse3;
_L11:
        if (httpresponse == null) goto _L5; else goto _L4
_L4:
        i = httpresponse.getStatusLine().getStatusCode();
        if (i == 200) goto _L6; else goto _L5
_L5:
        s1 = (new StringBuilder()).append("http://ads.mp.mydas.mobi/appConfigServlet?apid=").append(HandShake.a).append(stringbuilder.toString()).toString();
        MMLog.a("HandShake", (new StringBuilder()).append("Performing handshake (HTTP Fallback Original): ").append(s1).toString());
        httpresponse2 = (new HttpGetRequest()).a(s1);
        httpresponse1 = httpresponse2;
_L12:
        if (httpresponse1 == null) goto _L8; else goto _L7
_L7:
        if (httpresponse1.getStatusLine().getStatusCode() != 200) goto _L8; else goto _L9
_L9:
        HandShake.a(b, HandShake.a(b, HttpGetRequest.a(httpresponse1.getEntity().getContent())));
        HandShake.b(b, context1);
        HandShake.e(b).postDelayed(HandShake.c(b), HandShake.d(b));
        MMLog.a("HandShake", "Obtained a new handshake");
_L13:
        if (flag)
        {
            HandShake.c(b, context1);
            return;
        }
          goto _L1
        ioexception1;
        MMLog.a("HandShake", "Could not get a handshake. ", ioexception1);
        httpresponse = null;
          goto _L10
        exception1;
_L15:
        MMLog.a("HandShake", "Could not get a handshake. ", exception1);
        return;
        ioexception2;
        MMLog.a("HandShake", "Could not get a handshake. ", ioexception2);
          goto _L11
        ioexception3;
        MMLog.a("HandShake", "Could not get a handshake. ", ioexception3);
_L6:
        httpresponse1 = httpresponse;
          goto _L12
_L8:
        flag = false;
          goto _L13
        exception;
        flag = false;
          goto _L14
        exception1;
        flag = false;
          goto _L15
        ioexception;
        flag = false;
          goto _L16
    }

    st(HandShake handshake, boolean flag)
    {
        b = handshake;
        a = flag;
        super();
    }
}
