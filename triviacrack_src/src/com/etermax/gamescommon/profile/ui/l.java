// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.gamescommon.b.al;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.g;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.f.a;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            h, m

public class l
{

    private a a;
    private LinearLayout b;
    private View c;
    private PopupWindow d;
    private final Context e;
    private final LayoutInflater f;
    private LinearLayout g;
    private LinearLayout h;
    private LinearLayout i;
    private ImageView j;
    private ImageView k;
    private ImageView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private com.etermax.gamescommon.profile.ui.h p;
    private m q;
    private e r;

    public l(View view, m m1, a a1)
    {
        q = m1;
        c = view;
        e = view.getContext();
        f = ((Activity)e).getLayoutInflater();
        b = (LinearLayout)f.inflate(k.profile_options_popup, null);
        b.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-2, -2));
        g = (LinearLayout)b.findViewById(i.btn_block);
        h = (LinearLayout)b.findViewById(i.btn_add_friend);
        i = (LinearLayout)b.findViewById(i.btn_report);
        m = (TextView)b.findViewById(i.txt_block);
        n = (TextView)b.findViewById(i.txt_add_friend);
        o = (TextView)b.findViewById(i.txt_report_user);
        j = (ImageView)b.findViewById(i.img_block);
        k = (ImageView)b.findViewById(i.img_add_friend);
        l = (ImageView)b.findViewById(i.img_report_user);
        a = a1;
    }

    public l(View view, m m1, a a1, e e1)
    {
        this(view, m1, a1);
        r = e1;
    }

    static com.etermax.gamescommon.profile.ui.h a(l l1)
    {
        return l1.p;
    }

    static void a(l l1, String s, String s1)
    {
        l1.a(s, s1);
    }

    private void a(String s, String s1)
    {
        al al1 = new al(s1);
        al1.a(s);
        a.a(al1);
    }

    static m b(l l1)
    {
        return l1.q;
    }

    public void a()
    {
        d.setFocusable(true);
        d.setTouchable(true);
        d.setOutsideTouchable(true);
        d.setBackgroundDrawable(new ColorDrawable(0));
    }

    public void a(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        d.setOnDismissListener(ondismisslistener);
    }

    public void a(com.etermax.gamescommon.profile.ui.h h1)
    {
        p = h1;
        String as[];
        int i1;
        boolean flag;
        if (p.isBlocked())
        {
            j.setImageResource(h.friend_unblock);
            m.setText(o.player_unblock);
        } else
        {
            j.setImageResource(h.friend_blocked);
            m.setText(o.player_block);
        }
        if (p.isFriend())
        {
            k.setImageResource(h.delete_friend_profile);
            n.setText(o.player_remove);
        } else
        {
            k.setImageResource(h.add_friend_profile);
            n.setText(o.player_add_friend);
        }
        g.setOnClickListener(new android.view.View.OnClickListener() {

            final l a;

            public void onClick(View view)
            {
                a.b();
                if (com.etermax.gamescommon.profile.ui.l.a(a).isBlocked())
                {
                    l.b(a).h();
                    com.etermax.gamescommon.profile.ui.l.a(a, "unblock", "another_profile_setting_actions");
                    return;
                } else
                {
                    l.b(a).g();
                    com.etermax.gamescommon.profile.ui.l.a(a, "block", "another_profile_setting_actions");
                    return;
                }
            }

            
            {
                a = l.this;
                super();
            }
        });
        h.setOnClickListener(new android.view.View.OnClickListener() {

            final l a;

            public void onClick(View view)
            {
                a.b();
                if (com.etermax.gamescommon.profile.ui.l.a(a).isFriend())
                {
                    l.b(a).f();
                    com.etermax.gamescommon.profile.ui.l.a(a, "remove_friend", "another_profile_setting_actions");
                    return;
                } else
                {
                    l.b(a).e();
                    com.etermax.gamescommon.profile.ui.l.a(a, "add_friend", "another_profile_main_actions");
                    return;
                }
            }

            
            {
                a = l.this;
                super();
            }
        });
        as = r.a(g.u, "").split(";");
        i1 = 0;
        flag = false;
        for (; i1 < as.length; i1++)
        {
            if (Long.toString(h1.getId().longValue()).equals(as[i1]))
            {
                flag = true;
            }
        }

        if (!flag)
        {
            i.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view)
                {
                    a.b();
                    l.b(a).i();
                }

            
            {
                a = l.this;
                super();
            }
            });
            l.setAlpha(255);
            o.setTextColor(b.getResources().getColor(f.black));
            return;
        } else
        {
            i.setEnabled(false);
            l.setAlpha(50);
            o.setTextColor(b.getResources().getColor(f.grayLighter));
            return;
        }
    }

    public void b()
    {
        d.dismiss();
    }

    public void b(com.etermax.gamescommon.profile.ui.h h1)
    {
        b.measure(0, 0);
        int ai[] = new int[2];
        c.getLocationOnScreen(ai);
        d = new PopupWindow(b, -2, -2);
        a();
        a(h1);
        d.showAtLocation(c, 0, ai[0] - c.getWidth() / 2, ai[1] + c.getMeasuredHeight());
    }
}
