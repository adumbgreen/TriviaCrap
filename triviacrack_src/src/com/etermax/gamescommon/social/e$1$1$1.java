// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.app.Activity;
import android.view.View;
import android.widget.Toast;
import com.etermax.o;
import com.etermax.tools.g.a;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.g;

// Referenced classes of package com.etermax.gamescommon.social:
//            e, a, c

class a
    implements g
{

    final a a;

    public void a()
    {
        com.etermax.gamescommon.social.e.a(a.a.a);
    }

    public void a(String s)
    {
        if (a.a != null)
        {
            Toast.makeText(a.a, o.facebook_invite_failure, 0).show();
            if (com.etermax.tools.g.a.a())
            {
                Toast.makeText(a.a, (new StringBuilder()).append("Facebook Error: ").append(s).toString(), 0).show();
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

    // Unreferenced inner class com/etermax/gamescommon/social/e$1

/* anonymous class */
    class e._cls1
        implements android.view.View.OnClickListener
    {

        final e a;

        public void onClick(View view)
        {
            if (a.getActivity() != null)
            {
                android.support.v4.app.FragmentActivity fragmentactivity = a.getActivity();
                a.f.a(a.getActivity(), new e._cls1._cls1(this, fragmentactivity));
                a.dismiss();
            }
        }

            
            {
                a = e1;
                super();
            }
    }


    // Unreferenced inner class com/etermax/gamescommon/social/e$1$1

/* anonymous class */
    class e._cls1._cls1
        implements c
    {

        final Activity a;
        final e._cls1 b;

        public void a()
        {
            b b1 = b.a.a;
            Activity activity = a;
            String s = a.getString(o.try_out);
            Object aobj[] = new Object[1];
            aobj[0] = a.getString(o.app_name);
            b1.a(activity, String.format(s, aobj), new e._cls1._cls1._cls1(this));
        }

        public void b()
        {
        }

        public void c()
        {
        }

            
            {
                b = _pcls1;
                a = activity;
                super();
            }
    }

}
