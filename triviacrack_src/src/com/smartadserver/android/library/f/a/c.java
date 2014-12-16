// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.f.a;

import android.net.ConnectivityManager;
import com.smartadserver.android.library.ui.SASAdView;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.smartadserver.android.library.f.a:
//            a

public class c extends a
{

    private boolean e;

    public c(String s, String s1, String s2, ConnectivityManager connectivitymanager)
    {
        super(s, s1, s2, connectivitymanager);
        e = false;
    }

    public String a(int i, String s, int j, String s1, boolean flag)
    {
        String s2 = SASAdView.getBaseUrl();
        if (s1 == null)
        {
            s1 = "";
        }
        String s3 = s2.concat("/call2/pubmj/");
        StringBuilder stringbuilder = (new StringBuilder()).append(s3).append(String.valueOf(i)).append("/").append(s).append("/").append(String.valueOf(j)).append("/");
        String s4;
        String s5;
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
        if (flag)
        {
            s4 = "M";
        } else
        {
            s4 = "S";
        }
        s5 = stringbuilder.append(s4).append("/").append(a(flag)).append("/").append(com.smartadserver.android.library.h.c.e(s1)).toString();
        info = com.smartadserver.android.library.h.c.a(null, false);
        if (info != null)
        {
            try
            {
                b = info.getId();
                e = info.isLimitAdTrackingEnabled();
            }
            catch (NoClassDefFoundError noclassdeffounderror)
            {
                com.smartadserver.android.library.h.c.a((new StringBuilder()).append("Missing Google play services framework : ").append(noclassdeffounderror.getMessage()).toString());
            }
        }
        return (new StringBuilder()).append(s5).append("/").append(b).append("/").append(com.smartadserver.android.library.h.c.e(c)).toString();
    }

    public HttpPost a(String s, JSONObject jsonobject)
    {
        HttpPost httppost;
        JSONObject jsonobject1;
        httppost = new HttpPost(s);
        jsonobject1 = new JSONObject();
        jsonobject1.put("appname", a);
        jsonobject1.put("uid", b);
        jsonobject1.put("platform", "Android");
        jsonobject1.put("sdkname", "SDKAndroid");
        jsonobject1.put("version", "4.2.2");
        jsonobject1.put("rev", com.smartadserver.android.library.h.c.d());
        jsonobject1.put("connexion", a());
        jsonobject1.put("lang", Locale.getDefault().getLanguage());
        boolean flag;
        Iterator iterator;
        String s1;
        ArrayList arraylist;
        String s2;
        if (!e)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        try
        {
            jsonobject1.put("tracking", flag);
        }
        catch (JSONException jsonexception)
        {
            return httppost;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return httppost;
        }
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        for (iterator = jsonobject.keys(); iterator.hasNext(); jsonobject1.put(s2, jsonobject.get(s2)))
        {
            s2 = (String)iterator.next();
        }

        s1 = jsonobject1.toString();
        com.smartadserver.android.library.h.c.a((new StringBuilder()).append("JSON message posted to the server : ").append(s1).toString());
        arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("jsonMessage", s1));
        httppost.setEntity(new UrlEncodedFormEntity(arraylist));
        return httppost;
    }
}
