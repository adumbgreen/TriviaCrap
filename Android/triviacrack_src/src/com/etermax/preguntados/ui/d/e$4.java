// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.view.View;
import com.etermax.i;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            e

class a
    implements android.view..OnClickListener
{

    final e a;

    public void onClick(View view)
    {
        if (view.getId() != i.spin_button_image)
        {
            a.d();
        }
    }

    (e e1)
    {
        a = e1;
        super();
    }
}