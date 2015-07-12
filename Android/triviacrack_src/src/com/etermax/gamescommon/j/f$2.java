// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.j;

import android.content.Context;
import android.widget.Toast;
import com.etermax.o;

// Referenced classes of package com.etermax.gamescommon.j:
//            f

class b
    implements Runnable
{

    final Context a;
    final String b;
    final f c;

    public void run()
    {
        Toast.makeText(a, o.error_tw_authentication_failed, 0).show();
        if (b != null && b.length() > 0)
        {
            Toast.makeText(a, b, 0).show();
        }
    }

    (f f1, Context context, String s)
    {
        c = f1;
        a = context;
        b = s;
        super();
    }
}
