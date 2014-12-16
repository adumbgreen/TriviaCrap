// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.view.View;
import android.widget.Toast;
import com.etermax.a.a;
import com.etermax.gamescommon.j.f;
import com.etermax.o;

// Referenced classes of package com.etermax.gamescommon.social:
//            k

class a
    implements android.view..OnClickListener
{

    final k a;

    public void onClick(View view)
    {
        com.etermax.a.a.c("TwitterActionsDialog", "invite click");
        (new f(a.getString(o.loading), a.b) {

            final k._cls1 a;

            protected void a(k k1, Exception exception)
            {
                Toast.makeText(k1.getActivity(), o.twitter_invite_failure, 1).show();
                b(false);
                super.a(k1, exception);
                k1.dismiss();
            }

            protected void a(k k1, Void void1)
            {
                Toast.makeText(k1.getActivity(), o.twitter_invite_success, 1).show();
                super.a(k1, void1);
                k1.dismiss();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((k)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((k)obj, (Void)obj1);
            }

            protected Void b()
            {
                com.etermax.tools.social.twitter.a a1 = b;
                StringBuilder stringbuilder = new StringBuilder();
                String s = a.a.getString(o.twitter_invite_text);
                Object aobj[] = new Object[2];
                aobj[0] = a.a.getString(o.app_name);
                aobj[1] = a.a.c.g();
                a1.b(stringbuilder.append(String.format(s, aobj)).append(" @").append(a.a.getString(o.twitter_account_name)).append(" | ").append(a.a.getString(o.web)).toString());
                return null;
            }

            protected Object c()
            {
                return b();
            }

            
            {
                a = k._cls1.this;
                super(s, a1);
            }
        }).a(a);
    }

    _cls1.a(k k1)
    {
        a = k1;
        super();
    }
}
