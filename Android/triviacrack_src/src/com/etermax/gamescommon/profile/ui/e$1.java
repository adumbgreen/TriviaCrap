// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.widget.ImageView;
import android.widget.ProgressBar;
import com.b.a.aa;
import com.b.a.ak;
import com.b.a.f;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            e

class a
    implements f
{

    final String a;
    final e b;

    public void a()
    {
        aa.a(b.getActivity()).a(a).b().a(b.c, new f() {

            final e._cls1 a;

            public void a()
            {
                a.b.b.setVisibility(4);
                a.b.d.setVisibility(4);
            }

            public void b()
            {
                a.b.d.setVisibility(4);
            }

            
            {
                a = e._cls1.this;
                super();
            }
        });
    }

    public void b()
    {
        b.dismiss();
    }

    _cls1.a(e e1, String s)
    {
        b = e1;
        a = s;
        super();
    }
}
