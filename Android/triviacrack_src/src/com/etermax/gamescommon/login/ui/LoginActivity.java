// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.etermax.gamescommon.b;
import com.etermax.gamescommon.b.l;
import com.etermax.gamescommon.b.m;
import com.etermax.gamescommon.social.c;
import com.etermax.gamescommon.social.d;
import com.etermax.o;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            e, h, m, o, 
//            LoginActivity_, a, q, g, 
//            s, d, n

public class LoginActivity extends BaseFragmentActivity
    implements e, h, com.etermax.gamescommon.login.ui.m, com.etermax.gamescommon.login.ui.o
{

    private static String f;
    protected com.etermax.tools.social.a.b a;
    protected b b;
    protected a c;
    protected com.etermax.gamescommon.login.datasource.a d;
    protected com.etermax.gamescommon.social.a e;
    private boolean g;

    public LoginActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/gamescommon/login/ui/LoginActivity_);
    }

    private void a(l l)
    {
        if (c != null)
        {
            c.a(l);
        }
    }

    private void f()
    {
        if (!g)
        {
            g = true;
            e.a(this, new c() {

                final LoginActivity a;

                public void a()
                {
                    a.e.a(a, "login", new d(this) {

                        final _cls1 a;

                        public void a()
                        {
                            a.a.finish();
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                }

                public void b()
                {
                    a.finish();
                }

                public void c()
                {
                    a.finish();
                }

            
            {
                a = LoginActivity.this;
                super();
            }
            });
        }
    }

    protected Fragment a()
    {
        return com.etermax.gamescommon.login.ui.a.a();
    }

    public com.etermax.tools.widget.b.a a(Bundle bundle)
    {
        return com.etermax.tools.widget.b.a.a(getString(o.dialog_create_account), getString(o.ok), getString(o.cancel), bundle);
    }

    public void a(String s1)
    {
        a(com.etermax.gamescommon.login.ui.q.a(s1));
    }

    public void a_()
    {
        setResult(-1);
        if (!TextUtils.isEmpty(d.j()))
        {
            f();
            return;
        } else
        {
            finish();
            return;
        }
    }

    public void b()
    {
        a(com.etermax.gamescommon.login.ui.g.a());
    }

    public void b(String s1)
    {
        a(com.etermax.gamescommon.login.ui.s.a(s1));
    }

    public void c()
    {
        a(com.etermax.gamescommon.login.ui.d.b());
    }

    public void c(String s1)
    {
        f = s1;
    }

    public void d()
    {
        try
        {
            startActivity(b.a(f));
            a(new m());
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            return;
        }
    }

    public void e()
    {
        a(com.etermax.gamescommon.login.ui.n.a());
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        a.a(this, i, j, intent);
    }

    protected void onResume()
    {
        super.onResume();
        if (d.q())
        {
            a_();
        }
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
