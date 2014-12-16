// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.b.ad;
import com.etermax.gamescommon.b.l;
import com.etermax.gamescommon.b.o;
import com.etermax.gamescommon.shop.c;
import com.etermax.k;
import com.etermax.tools.f.a;
import com.etermax.tools.j.b;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.f;
import com.google.android.gms.common.g;
import com.mobileapptracker.h;
import java.io.IOException;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            LoginActivity

public abstract class BaseSplashActivity extends FragmentActivity
{

    protected static int a = 2000;
    protected com.etermax.gamescommon.login.datasource.a b;
    protected a c;
    protected c d;
    private h e;

    public BaseSplashActivity()
    {
        e = null;
    }

    static h a(BaseSplashActivity basesplashactivity)
    {
        return basesplashactivity.e;
    }

    private void a(l l)
    {
        c.a(l);
    }

    static void a(BaseSplashActivity basesplashactivity, l l)
    {
        basesplashactivity.a(l);
    }

    protected abstract void a();

    protected void b()
    {
        (new Timer()).schedule(new TimerTask() {

            final BaseSplashActivity a;

            public void run()
            {
                if (a.b.q())
                {
                    com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a, new ad("autologin"));
                    a.finish();
                    a.a();
                    ad ad1 = new ad();
                    ad1.b("user_auto");
                    com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a, ad1);
                    return;
                } else
                {
                    a.c();
                    return;
                }
            }

            
            {
                a = BaseSplashActivity.this;
                super();
            }
        }, a);
    }

    protected void c()
    {
        startActivityForResult(com.etermax.gamescommon.login.ui.LoginActivity.a(this), 0);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 0 && j == -1)
        {
            finish();
            a();
            return;
        } else
        {
            finish();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (!com.etermax.tools.g.a.a())
        {
            android.app.Application application = getApplication();
            if ((application instanceof b) && !((b)application).y())
            {
                String s = getPackageName();
                int i = s.lastIndexOf('.');
                String s1 = (new StringBuilder()).append(s.substring(0, i)).append(".pro").toString();
                if (com.etermax.a.b.b(this, s1))
                {
                    startActivity(getPackageManager().getLaunchIntentForPackage(s1));
                    finish();
                    return;
                }
            }
        }
        setContentView(k.splash);
        d.a(this);
        SharedPreferences sharedpreferences = getSharedPreferences("launch_data", 0);
        Uri uri = getIntent().getData();
        if (uri != null)
        {
            sharedpreferences.edit().putString("launch_data", uri.toString()).commit();
        }
        h.a(getApplicationContext(), "16850", "612ea677f89f9ff23d53bd6b2d7e3671");
        e = h.a();
        if (b.c())
        {
            e.a(true);
        }
        (new Thread(new Runnable() {

            final BaseSplashActivity a;

            public void run()
            {
                try
                {
                    com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(a.getApplicationContext());
                    com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a).a(info.getId(), info.isLimitAdTrackingEnabled());
                    return;
                }
                catch (IOException ioexception)
                {
                    com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a).b(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id"));
                    return;
                }
                catch (f f1)
                {
                    com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a).b(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id"));
                    return;
                }
                catch (g g1)
                {
                    com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a).b(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id"));
                    return;
                }
                catch (NullPointerException nullpointerexception)
                {
                    com.etermax.gamescommon.login.ui.BaseSplashActivity.a(a).b(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id"));
                }
            }

            
            {
                a = BaseSplashActivity.this;
                super();
            }
        })).start();
        StringBuilder stringbuilder = (new StringBuilder()).append("First install: ");
        boolean flag;
        if (!b.c())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.etermax.a.a.c("Splash", stringbuilder.append(flag).toString());
    }

    protected void onResume()
    {
        super.onResume();
        o o1 = new o();
        o1.a(Locale.getDefault().getLanguage());
        a(o1);
        e.a(this);
        e.c();
    }

    protected void onStart()
    {
        super.onStart();
        c.a(this);
    }

    protected void onStop()
    {
        super.onStop();
        c.b(this);
    }

}
