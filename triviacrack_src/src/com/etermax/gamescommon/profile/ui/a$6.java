// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            a, l

class a
    implements android.view..OnClickListener
{

    final a a;

    public void onClick(View view)
    {
        a.l.setPressed(true);
        a.m.b(a.g);
        a.m.a(new android.widget.PopupWindow.OnDismissListener() {

            final a._cls6 a;

            public void onDismiss()
            {
                a.a.l.setPressed(false);
            }

            
            {
                a = a._cls6.this;
                super();
            }
        });
    }

    _cls1.a(a a1)
    {
        a = a1;
        super();
    }
}
