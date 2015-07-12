// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.view.View;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            a

class c
    implements android.view..OnClickListener
{

    final String a;
    final int b;
    final int c;
    final a d;

    public void onClick(View view)
    {
        com.etermax.preguntados.ui.shop.a.a(d, a);
        if (b != 0)
        {
            com.etermax.preguntados.ui.shop.a.a(d, b);
        } else
        if (c != 0)
        {
            com.etermax.preguntados.ui.shop.a.b(d, c);
            com.etermax.preguntados.ui.shop.a.c(d, c);
            return;
        }
    }

    (a a1, String s, int i, int j)
    {
        d = a1;
        a = s;
        b = i;
        c = j;
        super();
    }
}
