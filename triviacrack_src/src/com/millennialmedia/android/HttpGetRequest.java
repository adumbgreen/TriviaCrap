// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

// Referenced classes of package com.millennialmedia.android:
//            MMLog

class HttpGetRequest
{

    private HttpClient a;
    private HttpGet b;

    HttpGetRequest()
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        a = new DefaultHttpClient(basichttpparams);
        b = new HttpGet();
    }

    HttpGetRequest(int i)
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        HttpConnectionParams.setSoTimeout(basichttpparams, i);
        a = new DefaultHttpClient(basichttpparams);
        b = new HttpGet();
    }

    static String a(InputStream inputstream)
    {
        if (inputstream == null)
        {
            throw new IOException("Stream is null.");
        }
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 4096);
        StringBuilder stringbuilder = new StringBuilder();
_L3:
        String s = bufferedreader.readLine();
        if (s == null) goto _L2; else goto _L1
_L1:
        stringbuilder.append((new StringBuilder()).append(s).append("\n").toString());
          goto _L3
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
_L7:
        MMLog.a("HttpGetRequest", "Out of Memeory: ", outofmemoryerror);
        throw new IOException("Out of memory.");
        Exception exception;
        exception;
_L5:
        IOException ioexception1;
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception)
            {
                MMLog.a("HttpGetRequest", "Error closing file", ioexception);
            }
        }
        throw exception;
_L2:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1)
            {
                MMLog.a("HttpGetRequest", "Error closing file", ioexception1);
            }
        }
        return stringbuilder.toString();
        exception;
        bufferedreader = null;
        if (true) goto _L5; else goto _L4
_L4:
        outofmemoryerror;
        bufferedreader = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    static void a(String as[])
    {
        if (as != null && as.length > 0)
        {
            Utils.ThreadUtils.a(new Runnable(as) {

                final String a[];

                public void run()
                {
                    String as1[] = a;
                    int i = as1.length;
                    int j = 0;
                    while (j < i) 
                    {
                        String s = as1[j];
                        MMLog.a("HttpGetRequest", String.format("Logging event to: %s", new Object[] {
                            s
                        }));
                        try
                        {
                            (new HttpGetRequest()).a(s);
                        }
                        catch (Exception exception)
                        {
                            MMLog.a("HttpGetRequest", "Logging request failed.", exception);
                        }
                        j++;
                    }
                }

            
            {
                a = as;
                super();
            }
            });
        }
    }

    HttpResponse a(String s)
    {
        HttpResponse httpresponse;
        boolean flag = TextUtils.isEmpty(s);
        httpresponse = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        HttpResponse httpresponse1;
        b.setURI(new URI(s));
        httpresponse1 = a.execute(b);
        httpresponse = httpresponse1;
_L2:
        return httpresponse;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        MMLog.a("HttpGetRequest", "Out of memory!", outofmemoryerror);
        return null;
        Exception exception;
        exception;
        httpresponse = null;
        if (exception != null)
        {
            MMLog.a("HttpGetRequest", "Error connecting:", exception);
            return null;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    void a(String s, boolean flag, long l, TreeMap treemap)
    {
        StringBuilder stringbuilder;
        int i = 1;
        Iterator iterator;
        java.util.Map.Entry entry;
        Object aobj2[];
        if (!flag)
        {
            i = 0;
        }
        try
        {
            stringbuilder = new StringBuilder((new StringBuilder()).append("http://cvt.mydas.mobi/handleConversion?firstlaunch=").append(i).toString());
        }
        catch (IOException ioexception)
        {
            MMLog.a("HttpGetRequest", "Conversion tracking error: ", ioexception);
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        stringbuilder.append((new StringBuilder()).append("&goalId=").append(s).toString());
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        stringbuilder.append((new StringBuilder()).append("&installtime=").append(l / 1000L).toString());
        if (treemap == null)
        {
            break MISSING_BLOCK_LABEL_209;
        }
        for (iterator = treemap.entrySet().iterator(); iterator.hasNext(); stringbuilder.append(String.format("&%s=%s", aobj2)))
        {
            entry = (java.util.Map.Entry)iterator.next();
            aobj2 = new Object[2];
            aobj2[0] = entry.getKey();
            aobj2[1] = URLEncoder.encode((String)entry.getValue(), "UTF-8");
        }

        HttpResponse httpresponse;
        String s1 = stringbuilder.toString();
        MMLog.b("HttpGetRequest", String.format("Sending conversion tracker report: %s", new Object[] {
            s1
        }));
        b.setURI(new URI(s1));
        httpresponse = a.execute(b);
        if (httpresponse.getStatusLine().getStatusCode() == 200)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(httpresponse.getStatusLine().getStatusCode());
            MMLog.a("HttpGetRequest", String.format("Successful conversion tracking event: %d", aobj1));
            return;
        }
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(httpresponse.getStatusLine().getStatusCode());
        MMLog.e("HttpGetRequest", String.format("Conversion tracking error: %d", aobj));
        return;
    }
}
