// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import com.etermax.gamescommon.gifting.d;
import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.social.i;
import com.etermax.o;
import com.etermax.tools.widget.CustomFontButton;

// Referenced classes of package com.etermax.preguntados.d:
//            j, k, i

public class h extends d
{

    public h()
    {
    }

    static int a(h h1, int l)
    {
        h1.n = l;
        return l;
    }

    static GiftsDTO a(h h1)
    {
        return h1.h;
    }

    static void a(h h1, j j1)
    {
        h1.a(j1);
    }

    static void a(h h1, j j1, com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift gift)
    {
        h1.a(j1, gift);
    }

    private void a(j j1)
    {
        if (j1 != null)
        {
            j1.f.setVisibility(4);
            j1.e.setVisibility(0);
        }
    }

    private void a(j j1, com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift gift)
    {
        d.a(this, Long.valueOf(gift.getId()), new i(gift, j1) {

            final com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift a;
            final j b;
            final h c;

            public void a()
            {
                a.setState(com.etermax.gamescommon.gifting.dto.GiftsDTO.GiftState.READ);
                com.etermax.preguntados.d.h.a(c, b);
                com.etermax.preguntados.d.h.a(c, true);
                com.etermax.preguntados.d.h.d(c);
                if (h.e(c))
                {
                    h.f(c);
                }
            }

            public void a(Exception exception)
            {
            }

            
            {
                c = h.this;
                a = gift;
                b = j1;
                super();
            }
        });
    }

    static boolean a(h h1, boolean flag)
    {
        h1.k = flag;
        return flag;
    }

    static int b(h h1, int l)
    {
        h1.n = l;
        return l;
    }

    static GiftsDTO b(h h1)
    {
        return h1.h;
    }

    public static h b()
    {
        return new k();
    }

    static void b(h h1, j j1)
    {
        h1.b(j1);
    }

    static void b(h h1, j j1, com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift gift)
    {
        h1.b(j1, gift);
    }

    private void b(j j1)
    {
        if (j1 != null)
        {
            j1.f.setVisibility(0);
            j1.e.setVisibility(8);
        }
    }

    private void b(j j1, com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift gift)
    {
        String as[] = new String[1];
        as[0] = gift.getSender().getFacebook_id();
        String s = (new StringBuilder()).append(a.k()).append(" ").append(getString(o.user_sent_ticket)).toString();
        d.a(this, s, Long.valueOf(gift.getId()), as, new i(gift, j1) {

            final com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift a;
            final j b;
            final h c;

            public void a()
            {
                a.setState(com.etermax.gamescommon.gifting.dto.GiftsDTO.GiftState.READ);
                com.etermax.preguntados.d.h.a(c, b);
                h.g(c);
                if (h.e(c))
                {
                    h.h(c);
                }
            }

            public void a(Exception exception)
            {
            }

            
            {
                c = h.this;
                a = gift;
                b = j1;
                super();
            }
        });
    }

    static int c(h h1, int l)
    {
        h1.o = l;
        return l;
    }

    static GiftsDTO c(h h1)
    {
        return h1.h;
    }

    private boolean c()
    {
        return n + o == 0;
    }

    static int d(h h1)
    {
        int l = h1.n;
        h1.n = l - 1;
        return l;
    }

    static int d(h h1, int l)
    {
        h1.o = l;
        return l;
    }

    static boolean e(h h1)
    {
        return h1.c();
    }

    static void f(h h1)
    {
        h1.a();
    }

    static int g(h h1)
    {
        int l = h1.o;
        h1.o = l - 1;
        return l;
    }

    static void h(h h1)
    {
        h1.a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        g = new com.etermax.preguntados.d.i(this);
        f.setAdapter(g);
        return view;
    }
}
