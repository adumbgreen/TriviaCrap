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

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        if (MdotMView.a(a(a)))
        {
            d.b(this, (new StringBuilder("MdotMView has focus")).append(MdotMView.a(a(a))).toString());
            d.b(this, "Begining next request");
            e.a(MdotMView.b(a(a))).a(MdotMView.c(a(a)), a(a));
            return;
        } else
        {
            d.b(this, "MdotMView does not has focus. So Ad request cancelled");
            return;
        }
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/mdotm/android/view/MdotMView$1

/* anonymous class */
    class MdotMView._cls1 extends TimerTask
    {

        final MdotMView a;

        static MdotMView a(MdotMView._cls1 _pcls1)
        {
            return _pcls1.a;
        }

        public void run()
        {
            a.a.post(new MdotMView._cls1._cls1(this));
        }

            
            {
                a = mdotmview;
                super();
            }
    }

}
