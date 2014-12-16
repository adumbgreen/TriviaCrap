// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget;

import android.content.DialogInterface;
import java.util.List;

// Referenced classes of package com.etermax.widget:
//            a, c

class 
    implements android.content.ogInterface.OnClickListener
{

    final c a;
    final List b;
    final a c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        a.a(b.get(i));
    }

    nterface(a a1, c c1, List list)
    {
        c = a1;
        a = c1;
        b = list;
        super();
    }
}
