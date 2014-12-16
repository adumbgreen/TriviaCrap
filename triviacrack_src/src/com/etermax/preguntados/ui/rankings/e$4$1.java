// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.etermax.o;
import com.etermax.tools.i.a;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.c;
import com.etermax.tools.social.a.g;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            e

class a
    implements g
{

    final nish a;

    public void a()
    {
        android.content.Context context = e.d(a.a);
        e e1 = a.a;
        int i = o.not_enough_friends_2;
        Object aobj[] = new Object[1];
        aobj[0] = a.a.getString(o.weekly_ranking);
        Toast.makeText(context, e1.getString(i, aobj), 1).show();
        tring(a).finish();
    }

    public void a(String s)
    {
        if (com.etermax.preguntados.ui.rankings.nish(a) != null)
        {
            Toast.makeText(com.etermax.preguntados.ui.rankings.a(a), o.facebook_invite_failure, 0).show();
            com.etermax.preguntados.ui.rankings.a(a).finish();
        }
    }

    public void b()
    {
        nish(a).finish();
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/etermax/preguntados/ui/rankings/e$4

/* anonymous class */
    class e._cls4 extends a
    {

        final e a;

        static FragmentActivity a(e._cls4 _pcls4)
        {
            return _pcls4.j();
        }

        static FragmentActivity b(e._cls4 _pcls4)
        {
            return _pcls4.j();
        }

        static FragmentActivity c(e._cls4 _pcls4)
        {
            return _pcls4.j();
        }

        static FragmentActivity d(e._cls4 _pcls4)
        {
            return _pcls4.j();
        }

        static FragmentActivity e(e._cls4 _pcls4)
        {
            return _pcls4.j();
        }

        public Object a()
        {
            return b();
        }

        protected void a(e e1, c ac[])
        {
            int i = 0;
            super.a(e1, ac);
            e e2 = a;
            int j = o.try_out;
            Object aobj[] = new Object[1];
            aobj[0] = a.getString(o.app_name);
            String s = e2.getString(j, aobj);
            String s1 = "";
            for (int k = Math.min(49, ac.length); i < k; i++)
            {
                s1 = (new StringBuilder()).append(s1).append(ac[i].b()).append(",").toString();
            }

            a.c.a(j(), s, s1, new e._cls4._cls1(this));
        }

        protected volatile void a(Object obj, Object obj1)
        {
            a((e)obj, (c[])obj1);
        }

        public c[] b()
        {
            return a.c.k();
        }

            
            {
                a = e1;
                super(s);
            }
    }

}
