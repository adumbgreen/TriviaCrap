// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.b;

import android.os.Bundle;
import android.view.View;

// Referenced classes of package com.etermax.tools.widget.b:
//            i, j

class a
    implements android.view..OnClickListener
{

    final i a;

    public void onClick(View view)
    {
        if (!(a.getTargetFragment() instanceof j)) goto _L2; else goto _L1
_L1:
        ((j)a.getTargetFragment()).a(a.getArguments().getBundle("info"));
_L4:
        a.dismiss();
        return;
_L2:
        if (a.getActivity() instanceof j)
        {
            ((j)a.getActivity()).a(a.getArguments().getBundle("info"));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    er(i k)
    {
        a = k;
        super();
    }
}
