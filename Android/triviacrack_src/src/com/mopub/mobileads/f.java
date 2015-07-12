// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.net.Uri;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.ResponseHeader;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.util.HttpResponses;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

// Referenced classes of package com.mopub.mobileads:
//            d, e, AdViewController, AdConfiguration, 
//            AdTypeTranslator, c

class f
{

    private final HttpResponse a;
    private final AdViewController b;
    private String c;
    private String d;
    private String e;

    f(HttpResponse httpresponse, AdViewController adviewcontroller)
    {
        a = httpresponse;
        b = adviewcontroller;
    }

    private c a(String s)
    {
        HashMap hashmap = new HashMap();
        hashmap.put(ResponseHeader.CUSTOM_EVENT_NAME.getKey(), d);
        if (s != null)
        {
            hashmap.put(ResponseHeader.CUSTOM_EVENT_DATA.getKey(), s);
        }
        return new d(b, hashmap);
    }

    private c b()
    {
        MoPubLog.i("Performing custom event.");
        d = HttpResponses.extractHeader(a, ResponseHeader.CUSTOM_EVENT_NAME);
        if (d != null)
        {
            return a(HttpResponses.extractHeader(a, ResponseHeader.CUSTOM_EVENT_DATA));
        } else
        {
            org.apache.http.Header header = a.getFirstHeader(ResponseHeader.CUSTOM_SELECTOR.getKey());
            return new e(b, header);
        }
    }

    private boolean b(String s)
    {
        return "mraid".equals(s) || "html".equals(s) || "interstitial".equals(s) && "vast".equals(e);
    }

    private c c()
    {
        HttpEntity httpentity = a.getEntity();
        String s;
        String s1;
        String s2;
        boolean flag;
        HashMap hashmap;
        if (httpentity != null)
        {
            s = Strings.fromStream(httpentity.getContent());
        } else
        {
            s = "";
        }
        b.d().b(s);
        s1 = HttpResponses.extractHeader(a, ResponseHeader.REDIRECT_URL);
        s2 = HttpResponses.extractHeader(a, ResponseHeader.CLICKTHROUGH_URL);
        flag = HttpResponses.extractBooleanHeader(a, ResponseHeader.SCROLLABLE, false);
        hashmap = new HashMap();
        hashmap.put("Html-Response-Body", Uri.encode(s));
        hashmap.put("Scrollable", Boolean.toString(flag));
        if (s1 != null)
        {
            hashmap.put("Redirect-Url", s1);
        }
        if (s2 != null)
        {
            hashmap.put("Clickthrough-Url", s2);
        }
        return a(Json.mapToJsonString(hashmap));
    }

    private c d()
    {
        return a(HttpResponses.extractHeader(a, ResponseHeader.NATIVE_PARAMS));
    }

    c a()
    {
        c = HttpResponses.extractHeader(a, ResponseHeader.AD_TYPE);
        e = HttpResponses.extractHeader(a, ResponseHeader.FULL_AD_TYPE);
        MoPubLog.d((new StringBuilder()).append("Loading ad type: ").append(AdTypeTranslator.a(c, e)).toString());
        d = AdTypeTranslator.a(b.getMoPubView(), c, e);
        if ("custom".equals(c))
        {
            return b();
        }
        if (b(c))
        {
            return c();
        } else
        {
            return d();
        }
    }
}
