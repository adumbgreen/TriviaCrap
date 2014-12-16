// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.widget.ImageView;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.smartadserver.android.library.ui:
//            e

class a extends TimerTask
{

    final Timer a;
    final e b;

    public void run()
    {
        b.post(new Runnable() {

            final e._cls2 a;

            public void run()
            {
                e.b(a.b).startAnimation(e.a(a.b));
                a.a.cancel();
            }

            
            {
                a = e._cls2.this;
                super();
            }
        });
    }

    _cls1.a(e e1, Timer timer)
    {
        b = e1;
        a = timer;
        super();
    }
}
