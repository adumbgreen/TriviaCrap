// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.widget.b.b;
import com.etermax.tools.widget.b.e;

public class c extends e
{

    private b a;

    public c()
    {
    }

    public static c a()
    {
        return new c();
    }

    static b a(c c1)
    {
        return c1.a;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view;
        view = layoutinflater.inflate(k.rankings_invite_cancel_dialog, viewgroup, false);
        int j = o.not_enough_friends;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(10);
        aobj[1] = getResources().getString(o.weekly_ranking);
        String s = getString(j, aobj);
        ((TextView)view.findViewById(i.message)).setText(s);
        a = null;
        if (getActivity() == null || !(getActivity() instanceof b)) goto _L2; else goto _L1
_L1:
        a = (b)getActivity();
_L4:
        if (a != null)
        {
            view.findViewById(i.accept_button).setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view1)
                {
                    c.a(a).onAccept(null);
                    a.dismiss();
                }

            
            {
                a = c.this;
                super();
            }
            });
            view.findViewById(i.cancel_button).setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view1)
                {
                    c.a(a).a(null);
                    a.dismiss();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        setCancelable(false);
        return view;
_L2:
        if (getTargetFragment() != null && (getTargetFragment() instanceof b))
        {
            a = (b)getTargetFragment();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
