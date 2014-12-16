// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.e;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.mdotm.android.d.a;
import java.net.URLEncoder;

// Referenced classes of package com.mdotm.android.e:
//            f, d

public class e
{

    final String a = "mdotm";
    final String b = "mdotmsdk3";
    private Context c;

    public e(Context context)
    {
        c = context;
    }

    private String a()
    {
        return android.provider.Settings.Secure.getString(c.getContentResolver(), "android_id").replaceAll("\\s", "");
    }

    private String b()
    {
        return ((TelephonyManager)c.getSystemService("phone")).getDeviceId().replaceAll("\\s", "");
    }

    public StringBuffer a(a a1)
    {
        String s = a1.g();
        StringBuffer stringbuffer = new StringBuffer("http://ads.mdotm.com/ads/feed.php?");
        stringbuffer.append("partnerkey=mdotm");
        stringbuffer.append("&");
        stringbuffer.append("apikey=mdotmsdk3");
        stringbuffer.append("&");
        stringbuffer.append((new StringBuilder("appkey=")).append(a1.e().trim()).toString());
        stringbuffer.append("&");
        stringbuffer.append((new StringBuilder("ua=")).append(URLEncoder.encode(com.mdotm.android.e.f.a().a(c))).toString());
        stringbuffer.append("&");
        if (s != null && s.length() > 0)
        {
            String as[] = s.split(",");
            stringbuffer.append((new StringBuilder("width=")).append(as[0]).toString());
            d.c(this, (new StringBuilder("The width is:")).append(as[0]).toString());
            stringbuffer.append("&");
            stringbuffer.append((new StringBuilder("height=")).append(as[1]).toString());
            d.c(this, (new StringBuilder("The height is:")).append(as[1]).toString());
            stringbuffer.append("&");
        }
        stringbuffer.append("fmt=xhtml");
        stringbuffer.append("&");
        stringbuffer.append("v=3.0");
        stringbuffer.append("&");
        if (com.mdotm.android.e.f.a().c(c) != null)
        {
            stringbuffer.append((new StringBuilder("bandwidth=")).append(com.mdotm.android.e.f.a().c(c)).toString());
            d.b(this, (new StringBuilder("The bandwidth is:")).append(com.mdotm.android.e.f.a().c(c)).toString());
            stringbuffer.append("&");
        }
        if (a1.d())
        {
            stringbuffer.append("interstitial_ad=true");
        } else
        {
            stringbuffer.append("interstitial_ad=false");
        }
        stringbuffer.append("&");
        stringbuffer.append((new StringBuilder("test=")).append(a1.a()).toString());
        if ("video".equalsIgnoreCase(a1.a()))
        {
            stringbuffer.append("&");
            stringbuffer.append("testVideo=1");
        }
        try
        {
            String s2 = b();
            stringbuffer.append("&");
            stringbuffer.append((new StringBuilder("deviceid=")).append(s2).toString());
            d.b(this, (new StringBuilder("imei id ")).append(s2).toString());
        }
        catch (Exception exception)
        {
            d.b(this, (new StringBuilder("Exception while reading imei ")).append(exception.getMessage()).toString());
        }
        try
        {
            String s1 = a();
            d.b(this, (new StringBuilder("android device id ")).append(s1).toString());
            stringbuffer.append("&");
            stringbuffer.append((new StringBuilder("aid=")).append(s1).toString());
        }
        catch (Exception exception1) { }
        stringbuffer.append("&");
        stringbuffer.append("vd=1.0");
        stringbuffer.append("&");
        stringbuffer.append((new StringBuilder("vidsupport=")).append(a1.b()).toString());
        return stringbuffer;
    }
}
