// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.view.View;
import com.smartadserver.android.library.ui.SASAdView;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            a, c, b

class b
    implements Runnable
{

    final String a;
    final boolean b;
    final a c;

    public void run()
    {
        boolean flag = true;
        if (com.smartadserver.android.library.controller.mraid.a.a(c).k())
        {
            c.a("expanded", flag);
        }
        if (!"default".equals(com.smartadserver.android.library.controller.mraid.a.b(c)) && !"expanded".equals(com.smartadserver.android.library.controller.mraid.a.b(c)) && !"resized".equals(com.smartadserver.android.library.controller.mraid.a.b(c)))
        {
            return;
        }
        SASAdView sasadview = com.smartadserver.android.library.controller.mraid.a.a(c);
        String s = a;
        if (com.smartadserver.android.library.controller.mraid.a.c(c).a)
        {
            flag = false;
        }
        sasadview.a(s, -1, -1, flag, com.smartadserver.android.library.controller.mraid.a.c(c).b);
        com.smartadserver.android.library.controller.mraid.a.a(c).postDelayed(new Runnable() {

            final a._cls2 a;

            public void run()
            {
                if (a.a == null && (!com.smartadserver.android.library.controller.mraid.a.d(a.c).c || a.b))
                {
                    com.smartadserver.android.library.controller.mraid.a.a(a.c).a(new android.view.View.OnClickListener(this) {

                        final _cls1 a;

                        public void onClick(View view)
                        {
                            a.a.c.close();
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                } else
                if (a.a == null && !"interstitial".equals(a.c.getPlacementType()))
                {
                    com.smartadserver.android.library.controller.mraid.a.a(a.c).b(new android.view.View.OnClickListener(this) {

                        final _cls1 a;

                        public void onClick(View view)
                        {
                            a.a.c.close();
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                    return;
                }
            }

            
            {
                a = a._cls2.this;
                super();
            }
        }, 200L);
    }

    _cls1.a(a a1, String s, boolean flag)
    {
        c = a1;
        a = s;
        b = flag;
        super();
    }
}
