// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.j;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.etermax.o;
import com.etermax.tools.widget.b.a;
import com.etermax.tools.widget.b.d;

// Referenced classes of package com.etermax.gamescommon.j:
//            a

public class b extends a
    implements d
{

    private static com.etermax.gamescommon.j.a a;

    public b()
    {
        setTargetFragment(this, 0);
    }

    public static b a(Context context, com.etermax.gamescommon.j.a a1)
    {
        a = a1;
        b b1 = new b();
        b1.setArguments(b(context.getString(o.facebook_session_expired), context.getString(o.yes), context.getString(o.no)));
        return b1;
    }

    public void onAccept(Bundle bundle)
    {
        if (a != null)
        {
            com.etermax.gamescommon.j.a.a(a);
            return;
        } else
        {
            dismiss();
            return;
        }
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        super.onDismiss(dialoginterface);
        a = null;
    }
}
