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
        com.etermax.a.a.c("TwitterActionsDialog", "follow click");
        (new f(a.getString(o.loading), a.b) {

            final k._cls2 a;

            protected void a(k k1, Exception exception)
            {
                Toast.makeText(k1.getActivity(), o.twitter_follow_failure, 1).show();
                b(false);
                super.a(k1, exception);
                k1.dismiss();
            }

            protected void a(k k1, Void void1)
            {
                com.etermax.gamescommon.social.k.a(a.a);
                Toast.makeText(j(), o.twitter_follow_success, 1).show();
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
                b.c(a.a.getString(o.twitter_account_name));
                return null;
            }

            protected Object c()
            {
                return b();
            }

            
            {
                a = k._cls2.this;
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
