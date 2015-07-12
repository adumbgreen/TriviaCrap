// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.help;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.b;
import com.etermax.o;
import com.etermax.preguntados.ui.settings.AccountActivity;
import com.etermax.preguntados.ui.shop.ShopInfoActivity;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.help:
//            b, HelpActivity_, a

public class HelpActivity extends BaseFragmentActivity
    implements com.etermax.preguntados.ui.help.b
{

    b a;

    public HelpActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/help/HelpActivity_);
    }

    private void a(String s)
    {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.help.a.a();
    }

    public void b()
    {
        a(getString(o.rules_url));
    }

    public void c()
    {
        a(getString(o.learn_url));
    }

    public void d()
    {
        startActivity(ShopInfoActivity.a(this));
    }

    public void e()
    {
        startActivity(a.a(null));
    }

    public void f()
    {
        startActivity(AccountActivity.a(this));
    }

    public void h()
    {
        a(getString(o.terms_url));
    }

    public void i()
    {
        a(getString(o.privacy_url));
    }

    public void j()
    {
        a(getString(o.about_info_url));
    }
}
