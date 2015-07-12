// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.image;

import android.content.DialogInterface;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.profile.image:
//            a, b, e

class a
    implements android.content.ogInterface.OnClickListener
{

    final List a;
    final a b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        b b1 = (b)a.get(i);
        switch (a[((b)a.get(i)).a.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            b.a(b1.d, b1.e);
            return;

        case 2: // '\002'
            b.b();
            return;

        case 3: // '\003'
            b.c();
            return;

        case 4: // '\004'
            com.etermax.gamescommon.profile.image.a.a(b);
            break;
        }
    }

    tener(a a1, List list)
    {
        b = a1;
        a = list;
        super();
    }
}
