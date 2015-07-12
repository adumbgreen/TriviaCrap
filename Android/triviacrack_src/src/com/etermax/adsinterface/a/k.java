// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.content.Context;
import com.etermax.a.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;

// Referenced classes of package com.etermax.adsinterface.a:
//            j

public class k
{

    j a;

    public k(Context context)
    {
        a = new j(context);
    }

    public JSONObject a(String s, int i)
    {
        String s2;
        if (!s.startsWith("http://"))
        {
            s = (new StringBuilder()).append("http://").append(s).toString();
        }
        com.etermax.a.a.c("EtermaxAdsLoader", (new StringBuilder()).append("loading url: ").append(s).append(", version: ").append(i).toString());
        int l = a.c(s);
        if (!a.a(s) || l != i)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        s2 = a.b(s);
        JSONObject jsonobject1;
        com.etermax.a.a.c("EtermaxAdsLoader", (new StringBuilder()).append("url cached, info: ").append(s2).toString());
        jsonobject1 = new JSONObject(s2);
        return jsonobject1;
        Exception exception1;
        exception1;
        HttpResponse httpresponse;
        StatusLine statusline;
label0:
        {
            JSONObject jsonobject;
            try
            {
                com.etermax.a.a.c("EtermaxAdsLoader", (new StringBuilder()).append("no cache, loading url: ").append(s).toString());
                httpresponse = (new DefaultHttpClient()).execute(new HttpGet(s));
                statusline = httpresponse.getStatusLine();
                if (statusline.getStatusCode() != 200)
                {
                    break label0;
                }
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                httpresponse.getEntity().writeTo(bytearrayoutputstream);
                bytearrayoutputstream.close();
                String s1 = bytearrayoutputstream.toString();
                com.etermax.a.a.c("EtermaxAdsLoader", (new StringBuilder()).append("url loaded, info: ").append(s1).toString());
                jsonobject = new JSONObject(s1);
                a.a(s, i, s1);
            }
            catch (Exception exception)
            {
                com.etermax.a.a.b("EtermaxAdsLoader", "", exception);
                return null;
            }
            return jsonobject;
        }
        httpresponse.getEntity().getContent().close();
        throw new IOException(statusline.getReasonPhrase());
    }
}
