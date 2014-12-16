// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import android.app.Activity;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import com.etermax.adsinterface.a.l;
import com.etermax.adsinterface.e;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.gamescommon.login.ui.b;
import com.etermax.o;
import com.etermax.tools.a;
import com.etermax.tools.a.a.f;
import com.etermax.tools.b.d;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.net.URLEncoder;
import org.b.e.a.g;

// Referenced classes of package com.etermax.gamescommon:
//            f

public abstract class EtermaxGamesApplication extends Application
    implements l, e, com.etermax.gamescommon.f, b, com.etermax.gamescommon.mediation.MediationManager.IApplicationMediation, com.etermax.gamescommon.notification.gcm.b, a, f, com.etermax.tools.b, d, com.etermax.tools.f.b.b, com.etermax.tools.i.e, com.etermax.tools.j.b, com.etermax.tools.navigation.a, com.etermax.tools.social.a.d, com.etermax.tools.social.twitter.b
{

    protected c a;
    protected com.etermax.gamescommon.datasource.e b;
    protected com.etermax.gamescommon.datasource.a c;
    protected com.etermax.tools.b.a d;
    protected com.etermax.gamescommon.login.datasource.a e;

    public EtermaxGamesApplication()
    {
    }

    public Uri a()
    {
        return Uri.parse(q());
    }

    public String a(int i)
    {
        String s = l[i];
        Object aobj[] = new Object[1];
        aobj[0] = p();
        return String.format(s, aobj);
    }

    public String a(String s)
    {
        return (new StringBuilder()).append(b()).append(s).toString();
    }

    public void a(Activity activity)
    {
        a.f();
        com.etermax.tools.g.a.a(null);
        b(activity);
    }

    public void a(BaseFragmentActivity basefragmentactivity)
    {
        basefragmentactivity.a(com.etermax.gamescommon.login.ui.d.b(), "debug_fragment", true);
    }

    public String b()
    {
        String s = u();
        if (s.equals("market_amazon"))
        {
            return "http://www.amazon.com/gp/mas/dl/android?p=";
        }
        if (s.equals("market_samsung"))
        {
            return "samsungapps://ProductDetail/";
        } else
        {
            return "market://details?id=";
        }
    }

    public abstract void b(Activity activity);

    public boolean b(String s)
    {
        return com.etermax.tools.j.e.a(this, this, s);
    }

    public String c()
    {
        return "ANDROID";
    }

    public String c(String s)
    {
        String s1 = (new StringBuilder()).append(s).append("?id=").append(e.e()).toString();
        return (new StringBuilder()).append(s1).append("&session=").append(URLEncoder.encode(e.d(), "UTF-8")).toString();
    }

    public String d()
    {
        if (c().equals("BLACKBERRY"))
        {
            return "BLACKBERRY";
        } else
        {
            return "ANDROID";
        }
    }

    public String e()
    {
        return getString(o.facebook_mobile_web);
    }

    public void f()
    {
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder()).append(b()).append(getPackageName()).toString()));
            intent.addFlags(0x14000000);
            startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            com.etermax.a.a.b("ETERMAXGAMESAPPLICATION", activitynotfoundexception.getMessage());
        }
    }

    protected void g()
    {
        a.e();
        b.e();
        c.e();
    }

    public void onCreate()
    {
        super.onCreate();
        com.etermax.tools.g.a.a(getApplicationInfo());
        n();
        if (com.etermax.tools.g.a.a())
        {
            (new com.etermax.tools.bugcatcher.a(this)).a(this);
        }
        d.a(org/b/e/a/d, o.service_unavailable);
        d.a(org/b/e/a/g, o.connection_problem);
    }
}
