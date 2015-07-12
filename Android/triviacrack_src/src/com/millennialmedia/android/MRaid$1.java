// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.millennialmedia.android:
//            MRaid, MMLog

final class b
    implements Runnable
{

    final String a;
    final Context b;

    public void run()
    {
        MMLog.d("MRaid", (new StringBuilder()).append("MMJS -  download start (").append(a).append(")").toString());
        HttpGet httpget = new HttpGet(a);
        HttpResponse httpresponse = (new DefaultHttpClient()).execute(httpget);
        MMLog.d("MRaid", (new StringBuilder()).append("MMJS -  download finish (").append(a).append(")").toString());
        if (MRaid.a(b, httpresponse.getEntity().getContent()) && MRaid.c(b, a))
        {
            MMLog.d("MRaid", (new StringBuilder()).append("MMJS -  download saved (").append(a).append(")").toString());
        }
        if (MRaid.a == null) goto _L2; else goto _L1
_L1:
        nished nished1 = (nished)MRaid.a.get();
        if (nished1 == null) goto _L2; else goto _L3
_L3:
        nished1.finished();
_L2:
        return;
        MalformedURLException malformedurlexception;
        malformedurlexception;
        MMLog.a("MRaid", "Mraid download exception: ", malformedurlexception);
        if (MRaid.a == null) goto _L2; else goto _L4
_L4:
        nished1 = (nished)MRaid.a.get();
        if (nished1 == null) goto _L2; else goto _L5
_L5:
        break; /* Loop/switch isn't completed */
        IllegalStateException illegalstateexception;
        illegalstateexception;
        MMLog.a("MRaid", "Mraid download exception: ", illegalstateexception);
        if (MRaid.a == null) goto _L2; else goto _L6
_L6:
        nished1 = (nished)MRaid.a.get();
        if (nished1 == null) goto _L2; else goto _L7
_L7:
        break; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        MMLog.a("MRaid", "Mraid download exception: ", ioexception);
        if (MRaid.a == null) goto _L2; else goto _L8
_L8:
        nished1 = (nished)MRaid.a.get();
        if (nished1 == null) goto _L2; else goto _L3
        Exception exception;
        exception;
        if (MRaid.a != null)
        {
            nished nished = (nished)MRaid.a.get();
            if (nished != null)
            {
                nished.finished();
            }
        }
        throw exception;
    }

    nished(String s, Context context)
    {
        a = s;
        b = context;
        super();
    }
}
