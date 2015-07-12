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
//            c, e, a

class a
    implements c
{

    final Activity a;
    final _cls1 b;

    public void a()
    {
        b b1 = b.b.a;
        Activity activity = a;
        String s = a.getString(o.try_out);
        Object aobj[] = new Object[1];
        aobj[0] = a.getString(o.app_name);
        b1.a(activity, String.format(s, aobj), new g() {

            final e._cls1._cls1 a;

            public void a()
            {
                com.etermax.gamescommon.social.e.a(a.b.a);
            }

            public void a(String s1)
            {
                if (a.a != null)
                {
                    Toast.makeText(a.a, o.facebook_invite_failure, 0).show();
                    if (com.etermax.tools.g.a.a())
                    {
                        Toast.makeText(a.a, (new StringBuilder()).append("Facebook Error: ").append(s1).toString(), 0).show();
                    }
                }
            }

            public void b()
            {
            }

            
            {
                a = e._cls1._cls1.this;
                super();
            }
        });
    }

    public void b()
    {
    }

    public void c()
    {
    }

    _cls1.a(_cls1.a a1, Activity activity)
    {
        b = a1;
        a = activity;
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

}
