// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import com.etermax.gamescommon.social.a;
import com.etermax.gamescommon.social.c;
import com.etermax.gamescommon.social.d;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            LoginActivity

class a
    implements c
{

    final LoginActivity a;

    public void a()
    {
        a.e.a(a, "login", new d() {

            final LoginActivity._cls1 a;

            public void a()
            {
                a.a.finish();
            }

            
            {
                a = LoginActivity._cls1.this;
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

    _cls1.a(LoginActivity loginactivity)
    {
        a = loginactivity;
        super();
    }
}
