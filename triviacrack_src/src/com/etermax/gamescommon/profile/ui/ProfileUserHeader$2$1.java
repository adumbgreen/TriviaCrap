// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.View;
import com.etermax.widget.a;
import com.etermax.widget.c;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            k, ProfileUserHeader

class a
    implements c
{

    final a a;

    public void a(k k1)
    {
        a.a.a(k1.a, true);
    }

    public volatile void a(Object obj)
    {
        a((k)obj);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/etermax/gamescommon/profile/ui/ProfileUserHeader$2

/* anonymous class */
    class ProfileUserHeader._cls2
        implements android.view.View.OnClickListener
    {

        final ProfileUserHeader a;

        public void onClick(View view)
        {
            (new a(a.getContext(), a.x, new ProfileUserHeader._cls2._cls1(this), true)).a();
        }

            
            {
                a = profileuserheader;
                super();
            }
    }

}
