// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui;

import android.os.Bundle;
import com.etermax.gamescommon.login.ui.BaseSplashActivity;
import com.etermax.gamescommon.login.ui.LoginActivity;
import com.etermax.preguntados.g.a;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;

public class SplashActivity extends BaseSplashActivity
{

    protected a e;

    public SplashActivity()
    {
    }

    protected void a()
    {
        startActivity(DashboardActivity.a(this));
    }

    protected void c()
    {
        startActivityForResult(LoginActivity.a(this), 0);
    }

    protected void d()
    {
        e.b();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d();
    }
}
