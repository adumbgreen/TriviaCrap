// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import com.etermax.gamescommon.social.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.c;
import com.etermax.tools.widget.CustomLinearButton;
import com.etermax.tools.widget.b.e;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            e, b

public class a extends e
{

    protected h a;
    protected com.etermax.gamescommon.login.datasource.a b;
    protected b c;
    protected com.etermax.tools.f.a d;
    protected View e;
    private GridView f;
    private CustomLinearButton g;
    private c h[];
    private com.etermax.gamescommon.gifting.e i;
    private android.view.View.OnClickListener j;

    public a()
    {
        j = new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                a.dismiss();
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    private void a(View view)
    {
        c.a(10, this, new com.etermax.tools.social.a.h(view) {

            final View a;
            final a b;

            public void a(c ac[])
            {
                a.a(b, ac);
                com.etermax.gamescommon.gifting.a.b(b).post(new Runnable(this) {

                    final _cls1 a;

                    public void run()
                    {
                        com.etermax.gamescommon.gifting.a.b(a.b).setAdapter(new com.etermax.gamescommon.gifting.b(a.b, a.b.getActivity()));
                        a.a.setVisibility(0);
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            
            {
                b = a.this;
                a = view;
                super();
            }
        });
    }

    static c[] a(a a1)
    {
        return a1.h;
    }

    static c[] a(a a1, c ac[])
    {
        a1.h = ac;
        return ac;
    }

    static GridView b(a a1)
    {
        return a1.f;
    }

    public void a(com.etermax.gamescommon.gifting.e e1)
    {
        i = e1;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.empty_inbox_dialog_fragment, viewgroup, false);
        view.setVisibility(4);
        f = (GridView)view.findViewById(i.friends_grid_view);
        h = new c[0];
        a(view);
        g = (CustomLinearButton)view.findViewById(i.empty_inbox_dialog_close_button);
        e = view.findViewById(i.empty_inbox_dialog_accept_button);
        g.setOnClickListener(j);
        return view;
    }

    public void onStop()
    {
        super.onStop();
        i.a(false);
    }
}
