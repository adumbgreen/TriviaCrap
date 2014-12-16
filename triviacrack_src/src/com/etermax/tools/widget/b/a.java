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
//            c, b

public class a extends c
{

    public a()
    {
    }

    protected static Bundle a(String s, String s1, String s2, String s3, Bundle bundle, boolean flag)
    {
        Bundle bundle1 = b(s, s1, s2, s3, bundle);
        bundle1.putBoolean("red_button", flag);
        return bundle1;
    }

    public static a a(String s, String s1, String s2)
    {
        a a1 = new a();
        a1.setArguments(b(s, s1, s2));
        return a1;
    }

    public static a a(String s, String s1, String s2, Bundle bundle)
    {
        a a1 = new a();
        a1.setArguments(b(s, s1, s2, bundle));
        return a1;
    }

    public static a a(String s, String s1, String s2, String s3)
    {
        a a1 = new a();
        a1.setArguments(b(s, s1, s2, s3, null));
        return a1;
    }

    public static a a(String s, String s1, String s2, String s3, Bundle bundle)
    {
        a a1 = new a();
        a1.setArguments(b(s, s1, s2, s3, bundle));
        return a1;
    }

    public static Bundle b(String s, String s1, String s2)
    {
        Bundle bundle = c(s, s1);
        bundle.putString("cancel_string", s2);
        return bundle;
    }

    protected static Bundle b(String s, String s1, String s2, Bundle bundle)
    {
        Bundle bundle1 = b(s, s1, bundle);
        bundle1.putString("cancel_string", s2);
        return bundle1;
    }

    protected static Bundle b(String s, String s1, String s2, String s3, Bundle bundle)
    {
        Bundle bundle1 = b(s1, s2, s3, bundle);
        bundle1.putString("title_string", s);
        return bundle1;
    }

    protected int b()
    {
        if (getArguments().getBoolean("red_button", false))
        {
            return k.etermaxtools_accept_cancel_dialog_red;
        } else
        {
            return k.etermaxtools_accept_cancel_dialog;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        Button button = (Button)view.findViewById(i.cancel_button);
        button.setText(getArguments().getString("cancel_string"));
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view1)
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

            
            {
                a = a.this;
                super();
            }
        });
        return view;
    }
}
