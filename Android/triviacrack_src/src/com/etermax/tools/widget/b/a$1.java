// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.b;

import android.os.Bundle;
import android.view.View;

// Referenced classes of package com.etermax.tools.widget.b:
//            a, b

class a
    implements android.view..OnClickListener
{

    final a a;

    public void onClick(View view)
    {
        if (!(a.getTargetFragment() instanceof b)) goto _L2; else goto _L1
_L1:
        ((b)a.getTargetFragment()).a(a.getArguments().getBundle("info_string"));
_L4:
        if (a.d())
        {
            a.dismiss();
        }
        return;
_L2:
        android.support.v4.app.FragmentActivity fragmentactivity = a.getActivity();
        if (fragmentactivity != null && (fragmentactivity instanceof b))
        {
            ((b)fragmentactivity).a(a.getArguments().getBundle("info_string"));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    er(a a1)
    {
        a = a1;
        super();
    }
}
