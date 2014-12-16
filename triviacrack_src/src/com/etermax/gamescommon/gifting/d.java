// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.social.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.social.a.b;
import com.etermax.tools.widget.CustomLinearButton;
import com.etermax.tools.widget.b.e;
import java.util.ArrayList;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            f, e

public abstract class d extends e
{

    protected a a;
    protected com.etermax.gamescommon.datasource.e b;
    protected b c;
    protected h d;
    protected com.etermax.tools.f.a e;
    protected ListView f;
    protected BaseAdapter g;
    protected GiftsDTO h;
    protected CustomLinearButton i;
    protected Button j;
    protected boolean k;
    protected com.etermax.gamescommon.gifting.e l;
    protected f m;
    protected int n;
    protected int o;
    private android.view.View.OnClickListener p;

    public d()
    {
        k = false;
        p = new android.view.View.OnClickListener() {

            final d a;

            public void onClick(View view)
            {
                a.dismiss();
            }

            
            {
                a = d.this;
                super();
            }
        };
    }

    static void a(d d1)
    {
        d1.b();
    }

    private void b()
    {
        d.a(this, null, new com.etermax.gamescommon.social.i() {

            final d a;

            public void a()
            {
                com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift agift[] = a.h.getGifts();
                if (agift != null && a.n > 0)
                {
                    for (int i1 = 0; i1 < agift.length; i1++)
                    {
                        agift[i1].setState(com.etermax.gamescommon.gifting.dto.GiftsDTO.GiftState.READ);
                    }

                    a.n = 0;
                    a.k = true;
                    a.g.notifyDataSetChanged();
                }
            }

            public void a(Exception exception)
            {
            }

            
            {
                a = d.this;
                super();
            }
        });
    }

    static void b(d d1)
    {
        d1.c();
    }

    private void c()
    {
        com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift agift[] = h.getAsks();
        if (agift != null && o > 0)
        {
            ArrayList arraylist = new ArrayList();
            for (int i1 = 0; i1 < agift.length; i1++)
            {
                if (agift[i1].getState() != com.etermax.gamescommon.gifting.dto.GiftsDTO.GiftState.READ)
                {
                    arraylist.add(agift[i1].getSender().getFacebook_id());
                }
            }

            String s = (new StringBuilder()).append(a.k()).append(" ").append(getString(o.user_sent_ticket)).toString();
            d.a(this, s, null, (String[])arraylist.toArray(new String[arraylist.size()]), new com.etermax.gamescommon.social.i(agift) {

                final com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift a[];
                final d b;

                public void a()
                {
                    for (int j1 = 0; j1 < a.length; j1++)
                    {
                        a[j1].setState(com.etermax.gamescommon.gifting.dto.GiftsDTO.GiftState.READ);
                    }

                    b.o = 0;
                    b.g.notifyDataSetChanged();
                    b.a();
                }

                public void a(Exception exception)
                {
                }

            
            {
                b = d.this;
                a = agift;
                super();
            }
            });
            return;
        } else
        {
            a();
            return;
        }
    }

    protected void a()
    {
        (new Handler()).postDelayed(new Runnable() {

            final d a;

            public void run()
            {
                a.dismiss();
            }

            
            {
                a = d.this;
                super();
            }
        }, 2000L);
    }

    public void a(GiftsDTO giftsdto)
    {
        h = giftsdto;
    }

    public void a(com.etermax.gamescommon.gifting.e e1)
    {
        l = e1;
    }

    public void a(f f1)
    {
        m = f1;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.inbox_dialog_fragment, viewgroup, false);
        i = (CustomLinearButton)view.findViewById(i.inbox_dialog_close_button);
        i.setOnClickListener(p);
        j = (Button)view.findViewById(i.inbox_dialog_accept_button);
        j.setOnClickListener(new android.view.View.OnClickListener() {

            final d a;

            public void onClick(View view1)
            {
                com.etermax.gamescommon.gifting.d.a(a);
                com.etermax.gamescommon.gifting.d.b(a);
            }

            
            {
                a = d.this;
                super();
            }
        });
        f = (ListView)view.findViewById(i.inbox_dialog_items);
        f.setScrollingCacheEnabled(false);
        f.setAnimationCacheEnabled(false);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        return view;
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        super.onDismiss(dialoginterface);
    }

    public void onStop()
    {
        super.onStop();
        m.a(k);
        l.a(k);
    }
}
