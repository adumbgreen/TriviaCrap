// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            g

class a
    implements android.widget.terView.OnItemClickListener
{

    final g a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        a.a(adapterview.getAdapter().getItem(i));
    }

    tener(g g1)
    {
        a = g1;
        super();
    }
}
