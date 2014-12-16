// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.g;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.user.UserInfoAvatarView;
import com.etermax.gamescommon.user.a.a;
import com.etermax.gamescommon.user.b.d;
import com.etermax.i;
import com.etermax.k;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.h.a:
//            f

public class h
    implements a
{

    f a;
    b b;

    public h(f f)
    {
        a = f;
        b = new b();
    }

    public View a(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_game_friends_section_layout, null);
    }

    public void a(BaseAdapter baseadapter, View view, com.etermax.gamescommon.user.b.b b1)
    {
        if (b1.d() > 0)
        {
            ((TextView)view.findViewById(i.section_text_view)).setText(b1.d());
            view.findViewById(i.section_container).setVisibility(0);
        } else
        {
            view.findViewById(i.section_container).setVisibility(8);
        }
        if (b1.c())
        {
            view.findViewById(i.section_button_view).setVisibility(0);
            ((TextView)view.findViewById(i.section_button_view)).setOnClickListener(new android.view.View.OnClickListener(baseadapter) {

                final BaseAdapter a;
                final h b;

                public void onClick(View view1)
                {
                    b.a.a(a);
                }

            
            {
                b = h.this;
                a = baseadapter;
                super();
            }
            });
            return;
        } else
        {
            view.findViewById(i.section_button_view).setVisibility(8);
            return;
        }
    }

    public void a(BaseAdapter baseadapter, View view, d d1, boolean flag)
    {
        LinearLayout linearlayout = (LinearLayout)view;
        linearlayout.setWeightSum(d1.d());
        Iterator iterator = d1.c().iterator();
        int j = 0;
        while (iterator.hasNext()) 
        {
            UserDTO userdto = (UserDTO)iterator.next();
            UserInfoAvatarView userinfoavatarview1;
            if (j < linearlayout.getChildCount())
            {
                userinfoavatarview1 = (UserInfoAvatarView)linearlayout.getChildAt(j);
                if (flag)
                {
                    userinfoavatarview1.a(baseadapter, userdto, userdto.getName());
                } else
                {
                    userinfoavatarview1.a(baseadapter, userdto);
                }
            } else
            {
                UserInfoAvatarView userinfoavatarview;
                android.widget.LinearLayout.LayoutParams layoutparams;
                if (flag)
                {
                    userinfoavatarview = UserInfoAvatarView.a(view.getContext(), b, baseadapter, userdto, userdto.getName());
                } else
                {
                    userinfoavatarview = UserInfoAvatarView.a(view.getContext(), b, baseadapter, userdto);
                }
                layoutparams = new android.widget.LinearLayout.LayoutParams(0, -2);
                layoutparams.weight = 1.0F;
                layoutparams.rightMargin = view.getContext().getResources().getDimensionPixelSize(g.new_game_friend_item_gap);
                ((LinearLayout)view).addView(userinfoavatarview, layoutparams);
                userinfoavatarview1 = userinfoavatarview;
            }
            userinfoavatarview1.setOnClickListener(new android.view.View.OnClickListener(userdto, d1, baseadapter) {

                final UserDTO a;
                final d b;
                final BaseAdapter c;
                final h d;

                public void onClick(View view1)
                {
                    if (a.getIs_app_user())
                    {
                        d.a.a(b.b(), a);
                    } else
                    if (a.getInvitationStatus() == com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.NOT_INVITED)
                    {
                        d.a.a(c, a);
                        return;
                    }
                }

            
            {
                d = h.this;
                a = userdto;
                b = d1;
                c = baseadapter;
                super();
            }
            });
            userinfoavatarview1.setInviteCallback(new com.etermax.gamescommon.user.b(baseadapter) {

                final BaseAdapter a;
                final h b;

                public void a(j j1)
                {
                    b.a.a(a, j1);
                }

            
            {
                b = h.this;
                a = baseadapter;
                super();
            }
            });
            j++;
        }
        if (j < linearlayout.getChildCount())
        {
            for (int l = -1 + linearlayout.getChildCount(); l >= j; l--)
            {
                linearlayout.removeViewAt(l);
            }

        }
    }

    public View b(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_game_friends_item_layout, null);
    }
}
