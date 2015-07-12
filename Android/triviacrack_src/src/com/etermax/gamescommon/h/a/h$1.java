// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h.a;

import android.view.View;
import android.widget.BaseAdapter;

// Referenced classes of package com.etermax.gamescommon.h.a:
//            h, f

class a
    implements android.view..OnClickListener
{

    final BaseAdapter a;
    final h b;

    public void onClick(View view)
    {
        b.a.a(a);
    }

    r(h h1, BaseAdapter baseadapter)
    {
        b = h1;
        a = baseadapter;
        super();
    }
}
