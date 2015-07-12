// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            fs

class a
    implements android.content.gInterface.OnClickListener
{

    final String a;
    final fs b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        fs.a(b).startActivity(Intent.createChooser((new Intent("android.intent.action.SEND")).setType("text/plain").putExtra("android.intent.extra.TEXT", a), "Share via"));
    }

    ckListener(fs fs1, String s)
    {
        b = fs1;
        a = s;
        super();
    }
}
