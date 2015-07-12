// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.h;

import android.content.DialogInterface;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.h:
//            d, e

class b
    implements android.content.ogInterface.OnClickListener
{

    final e a;
    final List b;
    final d c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        a.b((String)b.get(i));
    }

    e(d d1, e e1, List list)
    {
        c = d1;
        a = e1;
        b = list;
        super();
    }
}
