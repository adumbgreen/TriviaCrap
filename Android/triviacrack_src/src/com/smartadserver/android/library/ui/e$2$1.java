// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.widget.ImageView;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.smartadserver.android.library.ui:
//            e

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        e.b(a.a).startAnimation(e.a(a.a));
        a.a.cancel();
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/smartadserver/android/library/ui/e$2

/* anonymous class */
    class e._cls2 extends TimerTask
    {

        final Timer a;
        final e b;

        public void run()
        {
            b.post(new e._cls2._cls1(this));
        }

            
            {
                b = e1;
                a = timer;
                super();
            }
    }

}
