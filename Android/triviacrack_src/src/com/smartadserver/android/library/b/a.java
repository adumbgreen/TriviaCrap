// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.b;

import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.smartadserver.android.library.h.c;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.cookie.BasicClientCookie;

// Referenced classes of package com.smartadserver.android.library.b:
//            b, d

public class a
{

    private static final String a = com/smartadserver/android/library/b/a.getSimpleName();
    private static Pattern e = Pattern.compile(";");
    private static Pattern f = Pattern.compile("=");
    private HttpClient b;
    private String c;
    private int d;

    public a(String s)
    {
        this(s, 0);
    }

    public a(String s, int i)
    {
        c = s;
        d = i;
    }

    static int a(a a1)
    {
        return a1.d;
    }

    public static void a(String s, DefaultHttpClient defaulthttpclient)
    {
        int i = 0;
        com/smartadserver/android/library/b/a;
        JVM INSTR monitorenter ;
        BasicCookieStore basiccookiestore;
        CookieManager cookiemanager;
        basiccookiestore = new BasicCookieStore();
        defaulthttpclient.setCookieStore(basiccookiestore);
        cookiemanager = CookieManager.getInstance();
        if (cookiemanager != null) goto _L2; else goto _L1
_L1:
        com/smartadserver/android/library/b/a;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s1;
        s1 = cookiemanager.getCookie((new StringBuilder()).append("http://").append(s).toString());
        com.smartadserver.android.library.h.c.a(a, (new StringBuilder()).append("rawCookieHeader: ").append(s1).toString());
        if (s1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        String as[] = e.split(s1);
_L4:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        String as1[] = f.split(as[i]);
        BasicClientCookie basicclientcookie = new BasicClientCookie(as1[0].trim(), as1[1].trim());
        basicclientcookie.setDomain(s);
        basicclientcookie.setPath("/");
        basiccookiestore.addCookie(basicclientcookie);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    private void a(HttpUriRequest httpurirequest, d d1, HttpClient httpclient)
    {
        (new b(this, httpurirequest, d1, httpclient)).start();
    }

    static String b(a a1)
    {
        return a1.c;
    }

    public static void b(String s, DefaultHttpClient defaulthttpclient)
    {
        com/smartadserver/android/library/b/a;
        JVM INSTR monitorenter ;
        List list;
        int i;
        list = defaulthttpclient.getCookieStore().getCookies();
        i = list.size();
        if (i >= 1) goto _L2; else goto _L1
_L1:
        com/smartadserver/android/library/b/a;
        JVM INSTR monitorexit ;
        return;
_L2:
        CookieSyncManager cookiesyncmanager;
        CookieManager cookiemanager;
        cookiesyncmanager = CookieSyncManager.getInstance();
        cookiemanager = CookieManager.getInstance();
        if (cookiemanager == null) goto _L1; else goto _L3
_L3:
        Iterator iterator = list.iterator();
_L4:
        Cookie cookie;
        if (iterator.hasNext())
        {
            cookie = (Cookie)iterator.next();
            if (cookie.getName() != "$Version")
            {
                break MISSING_BLOCK_LABEL_102;
            }
        }
        cookiesyncmanager.sync();
          goto _L1
        Exception exception;
        exception;
        throw exception;
        String s1 = (new StringBuilder()).append(cookie.getName()).append("=").append(cookie.getValue()).append("; Domain=").append(s).toString();
        com.smartadserver.android.library.h.c.a(a, (new StringBuilder()).append("setCookieHeader: ").append(s1).toString());
        cookiemanager.setCookie((new StringBuilder()).append("http://").append(s).toString(), s1);
          goto _L4
    }

    public void a(HttpClient httpclient)
    {
        b = httpclient;
    }

    public void a(HttpGet httpget, d d1)
    {
        a(((HttpUriRequest) (httpget)), d1, b);
    }

    public void a(HttpPost httppost, d d1)
    {
        a(((HttpUriRequest) (httppost)), d1, b);
    }

}
