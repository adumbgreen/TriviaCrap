// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.content.DialogInterface;
import com.mdotm.android.c.c;

// Referenced classes of package com.mdotm.android.vast:
//            f

class a
    implements android.content.ogInterface.OnDismissListener
{

    final f a;

    public void onDismiss(DialogInterface dialoginterface)
    {
        if (!a.isPlaying())
        {
            f.g(a).f();
        }
    }

    face(f f1)
    {
        a = f1;
        super();
    }
}
