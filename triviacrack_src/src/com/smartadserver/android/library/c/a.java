// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.c;

import com.smartadserver.android.library.h.b;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{

    public static String a = "impUrls";
    public static String b = "countClickUrl";
    public static String c = "openInApp";
    public static String d = "closePosition";
    public static String e = "duration";
    public static String f = "insertionId";
    public static String g = "expirationDate";
    public static String h = "isOffline";
    public static String i = "html";
    public static String j = "scriptUrl";
    public static String k = "clickUrl";
    public static String l = "portraitWidth";
    public static String m = "portraitHeight";
    public static String n = "landscapeWidth";
    public static String o = "landscapeHeight";

    public static com.smartadserver.android.library.d.a a(String s)
    {
        boolean flag;
        JSONObject jsonobject;
        String s1;
        String s2;
        com.smartadserver.android.library.d.a a1;
        flag = true;
        jsonobject = (new JSONObject(s)).optJSONObject("ad");
        if (jsonobject == null)
        {
            throw new JSONException("Missing root ad element");
        }
        s1 = jsonobject.optString("html");
        s2 = jsonobject.optString(j);
        if ("".equals(s1) && "".equals(s2))
        {
            throw new JSONException((new StringBuilder()).append("Missing required ").append(i).append(" or ").append(j).append(" element").toString());
        }
        a1 = new com.smartadserver.android.library.d.a();
        if ("".equals(s1)) goto _L2; else goto _L1
_L1:
        a1.b(SASAdView.getBaseUrl());
        a1.a(s1);
_L7:
        a1.d(jsonobject.optString(a));
        a1.e(jsonobject.optString(b));
        a1.a(jsonobject.optString(c).equals("1"));
        a1.a(jsonobject.optInt(d, flag));
        double d1 = jsonobject.optDouble(e, -1D);
        if (d1 >= 0.0D)
        {
            a1.b((int)(d1 * 1000D));
        }
        a1.c(jsonobject.optInt(f, 0));
        URL url;
        MalformedURLException malformedurlexception;
        String as[];
        String s3;
        String s4;
        long l1;
        if (jsonobject.optString(h).equals("0"))
        {
            flag = false;
        }
        a1.b(flag);
        a1.c(jsonobject.optString(h).equals("2"));
        l1 = 1000L * jsonobject.optLong(g, 0L);
        if (l1 > 0L)
        {
            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
            calendar.setTimeInMillis(l1);
            a1.a(calendar.getTime());
        }
        a1.f(jsonobject.optString(k));
        a1.d(jsonobject.optInt(l, 0));
        a1.e(jsonobject.optInt(m, 0));
        a1.f(jsonobject.optInt(n, 0));
        a1.g(jsonobject.optInt(o, 0));
        return a1;
_L2:
        url = new URL(s2);
        a1.c(s2);
        as = new String[1];
        s3 = com.smartadserver.android.library.h.b.a(url, as);
        if (as[0] == null) goto _L4; else goto _L3
_L3:
        s4 = com.smartadserver.android.library.h.c.f(as[0]);
_L6:
        if (s4 == null)
        {
            try
            {
                throw new JSONException((new StringBuilder()).append("Cannot get base URL for ").append(j).append(": ").append(s2).toString());
            }
            // Misplaced declaration of an exception variable
            catch (MalformedURLException malformedurlexception)
            {
                throw new JSONException((new StringBuilder()).append("Invalid URL for ").append(j).append(": ").append(s2).toString());
            }
        }
        break; /* Loop/switch isn't completed */
_L4:
        s4 = com.smartadserver.android.library.h.c.f(s2);
        if (true) goto _L6; else goto _L5
_L5:
        if (s3 != null)
        {
            break MISSING_BLOCK_LABEL_581;
        }
        throw new JSONException((new StringBuilder()).append("Cannot get HTML contents for ").append(j).append(": ").append(s2).toString());
        a1.b(s4);
        a1.a(s3);
          goto _L7
    }

}
