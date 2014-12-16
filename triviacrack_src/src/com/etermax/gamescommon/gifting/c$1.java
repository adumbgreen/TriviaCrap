// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            c, e

class a
    implements android.view..OnClickListener
{

    final c a;

    public void onClick(View view)
    {
        if (a.d != null)
        {
            a.d.a(false);
        }
        a.dismiss();
    }

    (c c1)
    {
        a = c1;
        super();
    }
}
