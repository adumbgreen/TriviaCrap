// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.f.a;

import com.smartadserver.android.library.a.e;
import com.smartadserver.android.library.a.f;
import com.smartadserver.android.library.a.i;
import com.smartadserver.android.library.b.d;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.a;
import org.json.JSONException;

// Referenced classes of package com.smartadserver.android.library.f.a:
//            b

class b
    implements d
{

    final a a;
    final String b;
    final b c;

    public void a(Exception exception)
    {
        com.smartadserver.android.library.h.c.c((new StringBuilder()).append("Ad call failed with exception : ").append(exception.toString()).toString());
        a.adLoadingFailed(exception);
        i.a(com.smartadserver.android.library.f.a.b.a(c), b, exception, com.smartadserver.android.library.f.a.b.b(c), com.smartadserver.android.library.f.a.b.a());
    }

    public void a(String s)
    {
        int j;
        com.smartadserver.android.library.d.a a1;
        try
        {
            j = s.length();
        }
        catch (JSONException jsonexception)
        {
            com.smartadserver.android.library.h.c.c((new StringBuilder()).append("An error occurred when parsing the JSON received from the server. Please check the ad programming on the manage interface. JSON : ").append(s).toString());
            e e1 = new e((new StringBuilder()).append("An error occurred when parsing JSON ad content. ").append(jsonexception.getMessage()).toString());
            a.adLoadingFailed(e1);
            i.a(com.smartadserver.android.library.f.a.b.a(c), b, e1, com.smartadserver.android.library.f.a.b.b(c), com.smartadserver.android.library.f.a.b.a());
            return;
        }
        a1 = null;
        if (j <= 0)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        com.smartadserver.android.library.h.c.a(com.smartadserver.android.library.f.a.b.a(), (new StringBuilder()).append("onSuccess:\n").append(s).toString());
        a1 = com.smartadserver.android.library.c.a.a(s);
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        com.smartadserver.android.library.h.c.a((new StringBuilder()).append("Ad call succeeded with response: ").append(s).toString());
        a.adLoadingCompleted(a1);
        return;
        com.smartadserver.android.library.h.c.b("There is no ad to deliver on this placement. Please check the ad request parameters (in the loadAd method) and the ad programming on the manage interface: ");
        a.adLoadingFailed(new f("No ad to deliver or invalid ad request parameters"));
        return;
    }

    (b b1, a a1, String s)
    {
        c = b1;
        a = a1;
        b = s;
        super();
    }
}
