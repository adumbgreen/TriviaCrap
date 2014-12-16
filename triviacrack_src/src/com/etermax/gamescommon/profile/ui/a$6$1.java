// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            a, l

class a
    implements android.widget.indow.OnDismissListener
{

    final a a;

    public void onDismiss()
    {
        a.a.l.setPressed(false);
    }

    ner(ner ner)
    {
        a = ner;
        super();
    }

    // Unreferenced inner class com/etermax/gamescommon/profile/ui/a$6

/* anonymous class */
    class a._cls6
        implements android.view.View.OnClickListener
    {

        final a a;

        public void onClick(View view)
        {
            a.l.setPressed(true);
            a.m.b(a.g);
            a.m.a(new a._cls6._cls1(this));
        }

            
            {
                a = a1;
                super();
            }
    }

}
