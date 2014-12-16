// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.etermax.i;
import com.etermax.k;

// Referenced classes of package com.etermax.tools.widget.b:
//            i, h

public class g extends com.etermax.tools.widget.b.i
{

    private static String a = "button_3_string";

    public g()
    {
    }

    public static g a(String s, String s1, String s2, String s3, String s4, int j, Bundle bundle)
    {
        g g1 = new g();
        g1.setArguments(b(s, s1, s2, s3, s4, j, bundle));
        return g1;
    }

    protected static Bundle b(String s, String s1, String s2, String s3, String s4, int j, Bundle bundle)
    {
        Bundle bundle1 = i.a(s, s1, s2, s3, j, bundle);
        bundle1.putString(a, s4);
        return bundle1;
    }

    protected int a()
    {
        int j = getArguments().getInt("layout_key");
        if (j == 0)
        {
            j = k.etermaxtools_three_vertical_buttons_dialog;
        }
        return j;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        Button button = (Button)view.findViewById(i.button_3);
        button.setText(getArguments().getString(a));
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final g a;

            public void onClick(View view1)
            {
                if (!(a.getTargetFragment() instanceof h)) goto _L2; else goto _L1
_L1:
                ((h)a.getTargetFragment()).c(a.getArguments().getBundle("info"));
_L4:
                a.dismiss();
                return;
_L2:
                if (a.getActivity() instanceof h)
                {
                    ((h)a.getActivity()).c(a.getArguments().getBundle("info"));
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                a = g.this;
                super();
            }
        });
        return view;
    }

}
