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

class a extends a
{

    final e a;

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

    static FragmentActivity d(j j)
    {
        return j.j();
    }

    static FragmentActivity e(j j)
    {
        return j.j();
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

        a.c.a(j(), s, s1, new g() {

            final e._cls4 a;

            public void a()
            {
                android.content.Context context = com.etermax.preguntados.ui.rankings.e.d(a.a);
                e e3 = a.a;
                int l = o.not_enough_friends_2;
                Object aobj1[] = new Object[1];
                aobj1[0] = a.a.getString(o.weekly_ranking);
                Toast.makeText(context, e3.getString(l, aobj1), 1).show();
                e._cls4.d(a).finish();
            }

            public void a(String s2)
            {
                if (com.etermax.preguntados.ui.rankings.e._cls4.a(a) != null)
                {
                    Toast.makeText(com.etermax.preguntados.ui.rankings.e._cls4.b(a), o.facebook_invite_failure, 0).show();
                    com.etermax.preguntados.ui.rankings.e._cls4.c(a).finish();
                }
            }

            public void b()
            {
                e._cls4.e(a).finish();
            }

            
            {
                a = e._cls4.this;
                super();
            }
        });
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((e)obj, (c[])obj1);
    }

    public c[] b()
    {
        return a.c.k();
    }

    _cls1.a(e e1, String s)
    {
        a = e1;
        super(s);
    }
}
