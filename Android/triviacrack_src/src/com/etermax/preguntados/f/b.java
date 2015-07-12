// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.f;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.gamescommon.social.a;
import com.etermax.i;
import com.etermax.k;
import com.etermax.tools.widgetv2.CustomLinearButton;

// Referenced classes of package com.etermax.preguntados.f:
//            a

public class b extends com.etermax.gamescommon.social.b
{

    private TextView b;
    private TextView c;
    private CustomLinearButton d;
    private CustomLinearButton f;

    public b()
    {
    }

    public static b b(String s, String s1, String s2, a a)
    {
        a = a;
        b b1 = new b();
        Bundle bundle = new Bundle();
        bundle.putString("title_string", s);
        bundle.putString("msg", s1);
        bundle.putString("accept_string", s2);
        b1.setArguments(bundle);
        return b1;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.connect_with_facebook_dialog_fragment, viewgroup, false);
        b = (TextView)view.findViewById(i.connect_with_facebook_dialog_title);
        b.setText(getArguments().getString("title_string"));
        c = (TextView)view.findViewById(i.connect_with_facebook_dialog_description);
        c.setText(getArguments().getString("msg"));
        d = (CustomLinearButton)view.findViewById(i.connect_with_facebook_dialog_close_button);
        f = (CustomLinearButton)view.findViewById(i.fb_login_button);
        ((TextView)view.findViewById(i.button_facebook_text)).setText(getArguments().getString("accept_string"));
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final b a;

            public void onClick(View view1)
            {
                com.etermax.preguntados.f.a.b(com.etermax.preguntados.f.a.e());
                a.onAccept(null);
                a.dismiss();
            }

            
            {
                a = b.this;
                super();
            }
        });
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final b a;

            public void onClick(View view1)
            {
                com.etermax.preguntados.f.a.c(com.etermax.preguntados.f.a.e());
                a.a(new Bundle());
                a.dismiss();
            }

            
            {
                a = b.this;
                super();
            }
        });
        return view;
    }
}
