// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.etermax.o;
import com.etermax.tools.i.a;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.c;
import com.etermax.tools.social.a.g;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            a

class a extends a
{

    final com.etermax.gamescommon.profile.ui.a a;

    static FragmentActivity a(a a1)
    {
        return a1.j();
    }

    static FragmentActivity b(j j)
    {
        return j.j();
    }

    static FragmentActivity c(j j)
    {
        return j.j();
    }

    public Object a()
    {
        return b();
    }

    protected void a(com.etermax.gamescommon.profile.ui.a a1, Exception exception)
    {
        super.a(a1, exception);
    }

    protected void a(com.etermax.gamescommon.profile.ui.a a1, c ac[])
    {
        int i = 0;
        super.a(a1, ac);
        com.etermax.gamescommon.profile.ui.a a2 = a;
        int j = o.try_out;
        Object aobj[] = new Object[1];
        aobj[0] = a.getString(o.app_name);
        String s = a2.getString(j, aobj);
        String s1 = "";
        for (int k = Math.min(49, ac.length); i < k; i++)
        {
            s1 = (new StringBuilder()).append(s1).append(ac[i].b()).append(",").toString();
        }

        a.e.a(j(), s, s1, new g() {

            final a._cls7 a;

            public void a()
            {
            }

            public void a(String s2)
            {
                if (com.etermax.gamescommon.profile.ui.a._cls7.a(a) != null)
                {
                    Toast.makeText(com.etermax.gamescommon.profile.ui.a._cls7.b(a), o.facebook_invite_failure, 0).show();
                    if (com.etermax.tools.g.a.a())
                    {
                        Toast.makeText(com.etermax.gamescommon.profile.ui.a._cls7.c(a), (new StringBuilder()).append("Facebook Error: ").append(s2).toString(), 0).show();
                    }
                }
            }

            public void b()
            {
            }

            
            {
                a = a._cls7.this;
                super();
            }
        });
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((com.etermax.gamescommon.profile.ui.a)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.gamescommon.profile.ui.a)obj, (c[])obj1);
    }

    public c[] b()
    {
        return a.e.k();
    }

    _cls1.a(com.etermax.gamescommon.profile.ui.a a1, String s)
    {
        a = a1;
        super(s);
    }
}
