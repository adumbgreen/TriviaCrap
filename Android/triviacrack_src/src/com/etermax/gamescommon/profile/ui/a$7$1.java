// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.etermax.o;
import com.etermax.tools.g.a;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.c;
import com.etermax.tools.social.a.g;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            a

class a
    implements g
{

    final a a;

    public void a()
    {
    }

    public void a(String s)
    {
        if (com.etermax.gamescommon.profile.ui.a(a) != null)
        {
            Toast.makeText(com.etermax.gamescommon.profile.ui.a(a), o.facebook_invite_failure, 0).show();
            if (com.etermax.tools.g.a.a())
            {
                Toast.makeText(com.etermax.gamescommon.profile.ui.a(a), (new StringBuilder()).append("Facebook Error: ").append(s).toString(), 0).show();
            }
        }
    }

    public void b()
    {
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/etermax/gamescommon/profile/ui/a$7

/* anonymous class */
    class a._cls7 extends com.etermax.tools.i.a
    {

        final com.etermax.gamescommon.profile.ui.a a;

        static FragmentActivity a(a._cls7 _pcls7)
        {
            return _pcls7.j();
        }

        static FragmentActivity b(a._cls7 _pcls7)
        {
            return _pcls7.j();
        }

        static FragmentActivity c(a._cls7 _pcls7)
        {
            return _pcls7.j();
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

            a.e.a(j(), s, s1, new a._cls7._cls1(this));
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

            
            {
                a = a1;
                super(s);
            }
    }

}
