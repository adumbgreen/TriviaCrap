// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.f.a;

import android.content.Context;
import com.smartadserver.android.library.a.e;
import com.smartadserver.android.library.a.f;
import com.smartadserver.android.library.a.i;
import com.smartadserver.android.library.b.a;
import com.smartadserver.android.library.b.d;
import com.smartadserver.android.library.h.c;
import org.apache.http.client.HttpClient;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.smartadserver.android.library.f.a:
//            a, c

public class b
{

    private static final String a = com/smartadserver/android/library/f/a/b.getSimpleName();
    private com.smartadserver.android.library.f.a.a b;
    private HttpClient c;
    private String d;
    private Context e;

    public b(Context context)
    {
        a(context);
    }

    static Context a(b b1)
    {
        return b1.e;
    }

    static String a()
    {
        return a;
    }

    static String b(b b1)
    {
        return b1.d;
    }

    public void a(int i, String s, int j, String s1, boolean flag, com.smartadserver.android.library.ui.a a1, int k, 
            JSONObject jsonobject)
    {
        String s2 = b.a(i, s, j, s1, flag);
        org.apache.http.client.methods.HttpPost httppost = b.a(s2, jsonobject);
        a a2 = new a(d, k);
        if (c != null)
        {
            a2.a(c);
        }
        com.smartadserver.android.library.h.c.a(a, (new StringBuilder()).append("load: ").append(s2).toString());
        com.smartadserver.android.library.h.c.a((new StringBuilder()).append("Will load ad at URL : ").append(s2).toString());
        a2.a(httppost, new d(a1, s2) {

            final com.smartadserver.android.library.ui.a a;
            final String b;
            final b c;

            public void a(Exception exception)
            {
                com.smartadserver.android.library.h.c.c((new StringBuilder()).append("Ad call failed with exception : ").append(exception.toString()).toString());
                a.adLoadingFailed(exception);
                com.smartadserver.android.library.a.i.a(com.smartadserver.android.library.f.a.b.a(c), b, exception, b.b(c), com.smartadserver.android.library.f.a.b.a());
            }

            public void a(String s3)
            {
                int l;
                com.smartadserver.android.library.d.a a3;
                try
                {
                    l = s3.length();
                }
                catch (JSONException jsonexception)
                {
                    com.smartadserver.android.library.h.c.c((new StringBuilder()).append("An error occurred when parsing the JSON received from the server. Please check the ad programming on the manage interface. JSON : ").append(s3).toString());
                    e e1 = new e((new StringBuilder()).append("An error occurred when parsing JSON ad content. ").append(jsonexception.getMessage()).toString());
                    a.adLoadingFailed(e1);
                    com.smartadserver.android.library.a.i.a(com.smartadserver.android.library.f.a.b.a(c), b, e1, b.b(c), com.smartadserver.android.library.f.a.b.a());
                    return;
                }
                a3 = null;
                if (l <= 0)
                {
                    break MISSING_BLOCK_LABEL_45;
                }
                com.smartadserver.android.library.h.c.a(com.smartadserver.android.library.f.a.b.a(), (new StringBuilder()).append("onSuccess:\n").append(s3).toString());
                a3 = com.smartadserver.android.library.c.a.a(s3);
                if (a3 == null)
                {
                    break MISSING_BLOCK_LABEL_84;
                }
                com.smartadserver.android.library.h.c.a((new StringBuilder()).append("Ad call succeeded with response: ").append(s3).toString());
                a.adLoadingCompleted(a3);
                return;
                com.smartadserver.android.library.h.c.b("There is no ad to deliver on this placement. Please check the ad request parameters (in the loadAd method) and the ad programming on the manage interface: ");
                a.adLoadingFailed(new f("No ad to deliver or invalid ad request parameters"));
                return;
            }

            
            {
                c = b.this;
                a = a1;
                b = s;
                super();
            }
        });
    }

    public void a(Context context)
    {
        if (context != null)
        {
            e = context;
            d = com.smartadserver.android.library.h.c.e(context);
            b = new com.smartadserver.android.library.f.a.c(com.smartadserver.android.library.h.c.a(context), com.smartadserver.android.library.h.c.b(context), d, com.smartadserver.android.library.h.c.c(context));
            return;
        } else
        {
            b.d = null;
            return;
        }
    }

}
