// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mopub.common.util.DateAndTime;
import com.mopub.common.util.ResponseHeader;
import com.mopub.common.util.Utils;
import com.mopub.common.util.VersionCode;
import com.mopub.mobileads.util.HttpResponses;
import java.io.Serializable;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import org.apache.http.HttpResponse;

public class AdConfiguration
    implements Serializable
{

    private final String a = "3.2.2";
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final int f = VersionCode.currentApiLevel().getApiLevel();
    private long g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private long p;
    private int q;
    private int r;
    private Integer s;
    private int t;
    private String u;

    AdConfiguration(Context context)
    {
        x();
        if (context != null)
        {
            String s1 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (s1 == null)
            {
                s1 = "";
            }
            b = Utils.sha1(s1);
            c = (new WebView(context)).getSettings().getUserAgentString();
            d = context.getResources().getConfiguration().locale.toString();
        } else
        {
            b = null;
            c = null;
            d = null;
        }
        g = Utils.generateUniqueId();
        e = (new StringBuilder()).append(Build.MANUFACTURER).append(" ").append(Build.MODEL).toString();
    }

    static AdConfiguration a(Map map)
    {
        if (map == null)
        {
            return null;
        }
        Object obj = map.get("Ad-Configuration");
        if (obj instanceof AdConfiguration)
        {
            return (AdConfiguration)obj;
        } else
        {
            return null;
        }
    }

    private void x()
    {
        g = 0L;
        i = null;
        h = null;
        j = null;
        k = null;
        l = null;
        m = null;
        o = null;
        p = DateAndTime.now().getTime();
        q = 0;
        r = 0;
        s = null;
        t = 60000;
        n = null;
        u = null;
    }

    void a()
    {
        x();
    }

    void a(int i1)
    {
        t = i1;
    }

    void a(String s1)
    {
        i = s1;
    }

    void a(HttpResponse httpresponse)
    {
        j = HttpResponses.extractHeader(httpresponse, ResponseHeader.AD_TYPE);
        k = HttpResponses.extractHeader(httpresponse, ResponseHeader.NETWORK_TYPE);
        l = HttpResponses.extractHeader(httpresponse, ResponseHeader.REDIRECT_URL);
        m = HttpResponses.extractHeader(httpresponse, ResponseHeader.CLICKTHROUGH_URL);
        n = HttpResponses.extractHeader(httpresponse, ResponseHeader.FAIL_URL);
        o = HttpResponses.extractHeader(httpresponse, ResponseHeader.IMPRESSION_URL);
        p = DateAndTime.now().getTime();
        q = HttpResponses.extractIntHeader(httpresponse, ResponseHeader.WIDTH, 0);
        r = HttpResponses.extractIntHeader(httpresponse, ResponseHeader.HEIGHT, 0);
        s = HttpResponses.extractIntegerHeader(httpresponse, ResponseHeader.AD_TIMEOUT);
        if (!httpresponse.containsHeader(ResponseHeader.REFRESH_TIME.getKey()))
        {
            t = 0;
        } else
        {
            t = 1000 * HttpResponses.extractIntHeader(httpresponse, ResponseHeader.REFRESH_TIME, 0);
            t = Math.max(t, 10000);
        }
        u = HttpResponses.extractHeader(httpresponse, ResponseHeader.DSP_CREATIVE_ID);
    }

    String b()
    {
        return i;
    }

    void b(String s1)
    {
        h = s1;
    }

    String c()
    {
        return h;
    }

    void c(String s1)
    {
        m = s1;
    }

    long d()
    {
        return g;
    }

    void d(String s1)
    {
        n = s1;
    }

    String e()
    {
        return j;
    }

    String f()
    {
        return k;
    }

    String g()
    {
        return l;
    }

    String h()
    {
        return m;
    }

    String i()
    {
        return n;
    }

    String j()
    {
        return o;
    }

    long k()
    {
        return p;
    }

    int l()
    {
        return q;
    }

    int m()
    {
        return r;
    }

    Integer n()
    {
        return s;
    }

    int o()
    {
        return t;
    }

    String p()
    {
        return u;
    }

    String q()
    {
        return b;
    }

    String r()
    {
        return c;
    }

    String s()
    {
        return d;
    }

    String t()
    {
        return e;
    }

    int u()
    {
        return f;
    }

    String v()
    {
        return "Android";
    }

    String w()
    {
        return a;
    }
}
