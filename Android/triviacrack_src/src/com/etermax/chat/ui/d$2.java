// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.content.DialogInterface;

// Referenced classes of package com.etermax.chat.ui:
//            d, e

class a
    implements android.content.ogInterface.OnClickListener
{

    final d a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        switch (i)
        {
        default:
            a.dismissAllowingStateLoss();
            return;

        case 0: // '\0'
            d.b(a).b(d.a(a));
            return;

        case 1: // '\001'
            d.b(a).c(d.a(a));
            break;
        }
    }

    terface(d d1)
    {
        a = d1;
        super();
    }
}
