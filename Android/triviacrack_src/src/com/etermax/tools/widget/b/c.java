// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;

// Referenced classes of package com.etermax.tools.widget.b:
//            e, d

public class c extends e
{

    protected boolean e;

    public c()
    {
        e = true;
    }

    public static c a(String s, String s1, Bundle bundle)
    {
        c c1 = new c();
        c1.setArguments(b(s, s1, bundle));
        return c1;
    }

    protected static Bundle b(String s, String s1, Bundle bundle)
    {
        Bundle bundle1 = c(s, s1);
        bundle1.putBundle("info_string", bundle);
        return bundle1;
    }

    public static c b(String s, String s1)
    {
        c c1 = new c();
        c1.setArguments(c(s, s1));
        return c1;
    }

    protected static Bundle c(String s, String s1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("msg", s);
        bundle.putString("accept_string", s1);
        return bundle;
    }

    public static c c(String s, String s1, String s2, Bundle bundle)
    {
        c c1 = new c();
        c1.setArguments(d(s, s1, s2, bundle));
        return c1;
    }

    protected static Bundle d(String s, String s1, String s2, Bundle bundle)
    {
        Bundle bundle1 = b(s1, s2, bundle);
        bundle1.putString("title_string", s);
        return bundle1;
    }

    public void a(boolean flag)
    {
        e = flag;
    }

    protected int b()
    {
        return k.etermaxtools_accept_dialog;
    }

    public boolean d()
    {
        return e;
    }

    public void dismiss()
    {
        super.dismiss();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(b(), null);
        ((TextView)view.findViewById(i.title_text_view)).setText(getArguments().getString("msg"));
        Button button = (Button)view.findViewById(i.accept_button);
        button.setText(getArguments().getString("accept_string"));
        TextView textview = (TextView)view.findViewById(i.main_title_text_view);
        String s = getArguments().getString("title_string");
        if (textview != null)
        {
            if (s != null)
            {
                textview.setText(s);
                textview.setVisibility(0);
            } else
            {
                textview.setVisibility(8);
            }
        }
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final c a;

            public void onClick(View view1)
            {
                if (!(a.getTargetFragment() instanceof d)) goto _L2; else goto _L1
_L1:
                ((d)a.getTargetFragment()).onAccept(a.getArguments().getBundle("info_string"));
_L4:
                if (a.d())
                {
                    a.dismiss();
                }
                return;
_L2:
                android.support.v4.app.FragmentActivity fragmentactivity = a.getActivity();
                if (fragmentactivity != null && (fragmentactivity instanceof d))
                {
                    ((d)fragmentactivity).onAccept(a.getArguments().getBundle("info_string"));
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                a = c.this;
                super();
            }
        });
        return view;
    }
}
