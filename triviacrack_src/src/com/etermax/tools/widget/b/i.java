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
import com.etermax.k;

// Referenced classes of package com.etermax.tools.widget.b:
//            e, j

public class i extends e
{

    public i()
    {
    }

    protected static Bundle a(String s, String s1, String s2, String s3, int j, Bundle bundle)
    {
        Bundle bundle1 = new Bundle();
        bundle1.putString("title_string", s);
        bundle1.putString("message_string", s1);
        bundle1.putString("button_1_string", s2);
        bundle1.putString("button_2_string", s3);
        bundle1.putInt("layout_key", j);
        bundle1.putBundle("info", bundle);
        return bundle1;
    }

    public static i a(String s, String s1, String s2)
    {
        i j = new i();
        j.setArguments(b(s, s1, s2));
        return j;
    }

    protected static Bundle b(String s, String s1, String s2)
    {
        Bundle bundle = new Bundle();
        bundle.putString("message_string", s);
        bundle.putString("button_1_string", s1);
        bundle.putString("button_2_string", s2);
        return bundle;
    }

    protected int a()
    {
        int j = getArguments().getInt("layout_key");
        if (j == 0)
        {
            j = k.etermaxtools_two_vertical_buttons_dialog;
        }
        return j;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view;
        TextView textview;
label0:
        {
            view = layoutinflater.inflate(a(), null);
            ((TextView)view.findViewById(com.etermax.i.title_text_view)).setText(getArguments().getString("message_string"));
            Button button = (Button)view.findViewById(com.etermax.i.button_1);
            button.setText(getArguments().getString("button_1_string"));
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final i a;

                public void onClick(View view1)
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

            
            {
                a = i.this;
                super();
            }
            });
            Button button1 = (Button)view.findViewById(com.etermax.i.button_2);
            button1.setText(getArguments().getString("button_2_string"));
            button1.setOnClickListener(new android.view.View.OnClickListener() {

                final i a;

                public void onClick(View view1)
                {
                    if (!(a.getTargetFragment() instanceof j)) goto _L2; else goto _L1
_L1:
                    ((j)a.getTargetFragment()).b(a.getArguments().getBundle("info"));
_L4:
                    a.dismiss();
                    return;
_L2:
                    if (a.getActivity() instanceof j)
                    {
                        ((j)a.getActivity()).b(a.getArguments().getBundle("info"));
                    }
                    if (true) goto _L4; else goto _L3
_L3:
                }

            
            {
                a = i.this;
                super();
            }
            });
            textview = (TextView)view.findViewById(com.etermax.i.main_title_text_view);
            String s = getArguments().getString("title_string");
            if (textview != null)
            {
                if (s == null)
                {
                    break label0;
                }
                textview.setText(s);
                textview.setVisibility(0);
            }
            return view;
        }
        textview.setVisibility(8);
        return view;
    }
}
