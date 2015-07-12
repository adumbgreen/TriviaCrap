// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.b;

import android.os.Handler;
import android.os.Message;
import com.mdotm.android.d.a;
import com.mdotm.android.d.b;
import com.mdotm.android.e.f;
import com.mdotm.android.vast.e;
import com.mdotm.android.vast.h;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

// Referenced classes of package com.mdotm.android.b:
//            c, a

class d
    implements Runnable
{

    HttpUriRequest a;
    a b;
    StringBuffer c;
    long d;
    String e;
    final c f;

    public d(c c1, StringBuffer stringbuffer, a a1, long l)
    {
        f = c1;
        super();
        c = stringbuffer;
        b = a1;
        d = l;
    }

    public void run()
    {
        DefaultHttpClient defaulthttpclient;
        HttpResponse httpresponse;
        int i;
        InputStream inputstream;
        byte abyte0[];
        StringBuffer stringbuffer;
        String s;
        e e1;
        int j;
        try
        {
            e = com.mdotm.android.e.f.a().d(com.mdotm.android.b.c.a(f));
            if (e != null)
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("ad id ")).append(e).toString());
                c.append("&");
                c.append((new StringBuilder("gaid=")).append(e).toString());
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (e == null) goto _L2; else goto _L1
_L1:
        c.append("&");
        if (!com.mdotm.android.e.f.a().e(com.mdotm.android.b.c.a(f))) goto _L4; else goto _L3
_L3:
        c.append("ate=0");
_L2:
        com.mdotm.android.e.d.a(this, (new StringBuilder("request url is ")).append(c.toString()).toString());
        a = new HttpGet(c.toString());
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 30000);
        defaulthttpclient = new DefaultHttpClient(basichttpparams);
        httpresponse = defaulthttpclient.execute(a);
        com.mdotm.android.e.d.b(this, "The request is being sent");
        i = httpresponse.getStatusLine().getStatusCode();
        com.mdotm.android.e.d.c(this, (new StringBuilder("The response code is:")).append(i).toString());
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_826;
        }
        inputstream = httpresponse.getEntity().getContent();
        abyte0 = new byte[1024];
        stringbuffer = new StringBuffer();
_L12:
        j = inputstream.read(abyte0);
        if (-1 != j) goto _L6; else goto _L5
_L5:
        s = stringbuffer.toString();
        if (s == null) goto _L8; else goto _L7
_L7:
        if (s.length() <= 0) goto _L8; else goto _L9
_L9:
        if (!s.contains("<VAST")) goto _L11; else goto _L10
_L10:
        e1 = (new h()).a(s);
        if (e1 == null)
        {
            break MISSING_BLOCK_LABEL_397;
        }
        if (e1.d() != 0)
        {
            (new com.mdotm.android.b.a()).a(e1, null, com.mdotm.android.b.c.a(), com.mdotm.android.b.c.a(f), b.c());
        }
        f.a.a(e1);
_L17:
        com.mdotm.android.e.d.b(this, (new StringBuilder("class = ")).append(f.a.getClass()).toString());
        Message message = new Message();
        message.obj = Long.valueOf(d);
        com.mdotm.android.b.c.b(f).sendMessage(message);
        return;
_L4:
        try
        {
            c.append("ate=1");
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
          goto _L2
_L6:
        stringbuffer.append(new String(abyte0, 0, j));
          goto _L12
        IOException ioexception1;
        ioexception1;
          goto _L5
_L11:
        b b1;
        b1 = new b();
        b1.e(1);
        b1.b(com.mdotm.android.b.c.h);
        b1.a(s);
        b1.a(f.b);
        if (b1 == null) goto _L14; else goto _L13
_L13:
        if (b1.l() == 0) goto _L14; else goto _L15
_L15:
        if (!b.d())
        {
            break MISSING_BLOCK_LABEL_753;
        }
        b1.a(false);
_L18:
        String s1 = b.g();
        if (s1 == null) goto _L14; else goto _L16
_L16:
        String as[] = s1.split(",");
        com.mdotm.android.e.d.b(this, (new StringBuilder("Ad width and height ")).append(Integer.parseInt(as[0])).append(" ").append(Integer.parseInt(as[1])).toString());
        b1.c(Integer.parseInt(as[0]));
        b1.d(Integer.parseInt(as[1]));
_L14:
        ClientProtocolException clientprotocolexception;
        f.a.a(b1);
          goto _L17
        IOException ioexception;
        b1.a(true);
          goto _L18
_L8:
        try
        {
            f.a.a(null);
        }
        // Misplaced declaration of an exception variable
        catch (ClientProtocolException clientprotocolexception)
        {
            clientprotocolexception.printStackTrace();
            com.mdotm.android.e.d.a(this, (new StringBuilder("ClientProtocolException ")).append(clientprotocolexception.getMessage()).toString());
            f.a.a(null);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            com.mdotm.android.e.d.a(this, (new StringBuilder("IOException ")).append(ioexception.getMessage()).toString());
            f.a.a(null);
        }
          goto _L17
        f.a.a(null);
          goto _L17
    }
}
