// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.View;
import com.etermax.widget.a;
import com.etermax.widget.c;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileUserHeader, k

class a
    implements android.view.
{

    final ProfileUserHeader a;

    public void onClick(View view)
    {
        (new a(a.getContext(), a.x, new c() {

            final ProfileUserHeader._cls2 a;

            public void a(k k1)
            {
                a.a.a(k1.a, true);
            }

            public volatile void a(Object obj)
            {
                a((k)obj);
            }

            
            {
                a = ProfileUserHeader._cls2.this;
                super();
            }
        }, true)).a();
    }

    _cls1.a(ProfileUserHeader profileuserheader)
    {
        a = profileuserheader;
        super();
    }
}
