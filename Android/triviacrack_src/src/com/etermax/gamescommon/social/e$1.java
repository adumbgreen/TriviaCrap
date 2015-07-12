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
    implements android.view..OnClickListener
{

    final e a;

    public void onClick(View view)
    {
        if (a.getActivity() != null)
        {
            android.support.v4.app.FragmentActivity fragmentactivity = a.getActivity();
            a.f.a(a.getActivity(), new c(fragmentactivity) {

                final Activity a;
                final e._cls1 b;

                public void a()
                {
                    b b1 = b.a.a;
                    Activity activity = a;
                    String s = a.getString(o.try_out);
                    Object aobj[] = new Object[1];
                    aobj[0] = a.getString(o.app_name);
                    b1.a(activity, String.format(s, aobj), new g(this) {

                        final _cls1 a;

                        public void a()
                        {
                            com.etermax.gamescommon.social.e.a(a.b.a);
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

            
            {
                a = _pcls1;
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

            
            {
                b = e._cls1.this;
                a = activity;
                super();
            }
            });
            a.dismiss();
        }
    }

    _cls1.a(e e1)
    {
        a = e1;
        super();
    }
}
