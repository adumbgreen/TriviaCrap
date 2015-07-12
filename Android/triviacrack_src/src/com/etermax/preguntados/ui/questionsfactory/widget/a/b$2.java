// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget.a;

import android.content.DialogInterface;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.widget.a:
//            b, c

class b
    implements android.content.ogInterface.OnClickListener
{

    final c a;
    final List b;
    final b c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        a.a(b.get(i));
    }

    (b b1, c c1, List list)
    {
        c = b1;
        a = c1;
        b = list;
        super();
    }
}
