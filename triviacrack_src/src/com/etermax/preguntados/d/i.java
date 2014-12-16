// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.gifting.dto.GiftItemDTO;
import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.h;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.widget.CustomFontButton;

// Referenced classes of package com.etermax.preguntados.d:
//            h, j

class i extends BaseAdapter
{

    final com.etermax.preguntados.d.h a;
    private com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift b[];
    private com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift c[];
    private b d;

    public i(com.etermax.preguntados.d.h h1)
    {
        a = h1;
        super();
        if (h.a(h1) != null)
        {
            b = com.etermax.preguntados.d.h.b(h1).getGifts();
            c = h.c(h1).getAsks();
        }
        if (b == null)
        {
            b = new com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift[0];
            h.a(h1, 0);
        } else
        {
            com.etermax.preguntados.d.h.b(h1, b.length);
        }
        if (c == null)
        {
            c = new com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift[0];
            h.c(h1, 0);
        } else
        {
            h.d(h1, c.length);
        }
        d = new b();
    }

    static com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift[] a(i l)
    {
        return l.b;
    }

    public int getCount()
    {
        return b.length + c.length;
    }

    public Object getItem(int l)
    {
        return null;
    }

    public long getItemId(int l)
    {
        return 0L;
    }

    public View getView(int l, View view, ViewGroup viewgroup)
    {
        j j1;
        com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift gift;
        boolean flag;
        int i2;
        int j2;
        int k2;
        if (view == null)
        {
            view = LayoutInflater.from(a.getActivity()).inflate(k.inbox_item, null);
            j j4 = new j(a, null);
            j4.a = (ViewSwitcher)view.findViewById(com.etermax.i.inbox_item_random_avatar_image);
            j4.b = (TextView)view.findViewById(com.etermax.i.inbox_item_sender_name);
            j4.c = (TextView)view.findViewById(com.etermax.i.inbox_item_sender_message);
            j4.e = (ImageView)view.findViewById(com.etermax.i.inbox_item_tilt);
            j4.d = (ImageView)view.findViewById(com.etermax.i.inbox_item_gift);
            j4.f = (CustomFontButton)view.findViewById(com.etermax.i.inbox_item_accept_send_button);
            view.setTag(j4);
            j1 = j4;
        } else
        {
            j1 = (j)view.getTag();
        }
        if (l < b.length)
        {
            com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift gift1 = b[l];
            j1.f.setText(a.getResources().getString(o.accept));
            gift = gift1;
            flag = false;
        } else
        {
            gift = c[l - b.length];
            flag = true;
            j1.f.setText(a.getResources().getString(o.send));
        }
        if (gift.getItems()[0].getType() == com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType.EXTRA_SHOT)
        {
            int l2;
            int i3;
            int j3;
            if (flag)
            {
                l2 = o.user_needs_spin;
            } else
            {
                l2 = o.user_sent_spin;
            }
            i3 = h.character_spin_shop;
            j3 = f.send_gift_spin;
            i2 = i3;
            j2 = l2;
            k2 = j3;
        } else
        {
            int i1 = h.icon_live;
            int k1;
            int l1;
            if (flag)
            {
                k1 = o.user_needs_life;
            } else
            {
                k1 = o.user_sent_life;
            }
            l1 = f.send_gift_life;
            i2 = i1;
            j2 = k1;
            k2 = l1;
        }
        if (flag)
        {
            j1.f.a(h.button_accept_gift_background, h.button_accept_gift_background_pressed);
        } else
        {
            j1.f.a(h.button_send_gift_background, h.button_send_gift_background_pressed);
        }
        j1.d.setImageResource(i2);
        j1.c.setText(a.getResources().getString(j2));
        j1.c.setTextColor(a.getResources().getColor(k2));
        j1.b.setText(gift.getSender().getName());
        d.a(j1.a, gift.getSender());
        if (gift.getState() == com.etermax.gamescommon.gifting.dto.GiftsDTO.GiftState.READ)
        {
            h.a(a, j1);
        } else
        {
            com.etermax.preguntados.d.h.b(a, j1);
        }
        j1.f.setOnClickListener(new android.view.View.OnClickListener(l, j1, gift) {

            final int a;
            final j b;
            final com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift c;
            final i d;

            public void onClick(View view1)
            {
                if (a < i.a(d).length)
                {
                    h.a(d.a, b, c);
                    return;
                } else
                {
                    com.etermax.preguntados.d.h.b(d.a, b, c);
                    return;
                }
            }

            
            {
                d = i.this;
                a = i1;
                b = j1;
                c = gift;
                super();
            }
        });
        return view;
    }
}
