// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.view.View;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.g;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            a, d

class d
    implements Runnable
{

    final int a;
    final int b;
    final int c;
    final int d;
    final a e;

    public void run()
    {
        if (com.smartadserver.android.library.controller.mraid.a.a(e).k())
        {
            e.a("resized", true);
        }
        com.smartadserver.android.library.controller.mraid.a.a(e).a(null, a, b, c, d, false, com.smartadserver.android.library.controller.mraid.a.e(e).f, false, "none", false);
        if (!"none".equals(com.smartadserver.android.library.controller.mraid.a.e(e).c))
        {
            com.smartadserver.android.library.controller.mraid.a.a(e).b(new android.view.View.OnClickListener() {

                final a._cls3 a;

                public void onClick(View view)
                {
                    a.e.close();
                }

            
            {
                a = a._cls3.this;
                super();
            }
            });
            com.smartadserver.android.library.controller.mraid.a.a(e).j.setCloseButtonPosition(com.smartadserver.android.library.controller.mraid.a.e(e).b());
        }
    }

    _cls1.a(a a1, int i, int j, int k, int l)
    {
        e = a1;
        a = i;
        b = j;
        c = k;
        d = l;
        super();
    }
}
