// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.view.View;
import android.widget.AdapterView;
import com.etermax.chat.a.f;
import com.etermax.chat.a.h;
import com.etermax.chat.a.l;

// Referenced classes of package com.etermax.chat.ui:
//            a

class a
    implements android.widget.terView.OnItemClickListener
{

    final a a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        f f1 = (f)adapterview.getItemAtPosition(i);
        if (f1.a() != null && f1.a().a() && f1.d() == h.b)
        {
            com.etermax.chat.ui.a.a(a, f1, i);
        }
    }

    ew(a a1)
    {
        a = a1;
        super();
    }
}
