// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.i;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.etermax.tools.widget.b.c;
import com.etermax.tools.widget.b.d;

// Referenced classes of package com.etermax.tools.i:
//            e

public class b extends c
    implements d
{

    public b()
    {
        setTargetFragment(this, 0);
    }

    public static b a(String s, String s1)
    {
        b b1 = new b();
        b1.setArguments(c(s, s1));
        return b1;
    }

    public void onAccept(Bundle bundle)
    {
        if (getActivity() != null)
        {
            android.app.Application application = getActivity().getApplication();
            if (application instanceof e)
            {
                ((e)application).a(getActivity());
            }
        }
    }
}
