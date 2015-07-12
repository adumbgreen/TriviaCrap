// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            e, k, m, j

class a
    implements android.widget.terView.OnItemClickListener
{

    final e a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        k k1 = (k)adapterview.getAdapter();
        k1.a(i);
        a.b = k1.b(i).a().a();
        a.c = i;
    }

    I(e e1)
    {
        a = e1;
        super();
    }
}
