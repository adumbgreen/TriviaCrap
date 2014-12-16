// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.os.Handler;
import com.mdotm.android.b.e;
import com.mdotm.android.e.d;
import java.util.TimerTask;

// Referenced classes of package com.mdotm.android.view:
//            MdotMView

class a extends TimerTask
{

    final MdotMView a;

    static MdotMView a(a a1)
    {
        return a1.a;
    }

    public void run()
    {
        a.a.post(new Runnable() {

            final MdotMView._cls1 a;

            public void run()
            {
                if (MdotMView.a(MdotMView._cls1.a(a)))
                {
                    d.b(this, (new StringBuilder("MdotMView has focus")).append(MdotMView.a(MdotMView._cls1.a(a))).toString());
                    d.b(this, "Begining next request");
                    e.a(MdotMView.b(MdotMView._cls1.a(a))).a(MdotMView.c(MdotMView._cls1.a(a)), MdotMView._cls1.a(a));
                    return;
                } else
                {
                    d.b(this, "MdotMView does not has focus. So Ad request cancelled");
                    return;
                }
            }

            
            {
                a = MdotMView._cls1.this;
                super();
            }
        });
    }

    _cls1.a(MdotMView mdotmview)
    {
        a = mdotmview;
        super();
    }
}
