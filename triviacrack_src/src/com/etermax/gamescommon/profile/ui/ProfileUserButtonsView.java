// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.gamescommon.b.al;
import com.etermax.h;
import com.etermax.o;
import com.etermax.tools.f.a;
import com.etermax.tools.widgetv2.CustomLinearButton;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileFacebookFriendsButton, j

public class ProfileUserButtonsView extends LinearLayout
{

    a a;
    protected CustomLinearButton b;
    protected CustomLinearButton c;
    protected CustomLinearButton d;
    protected CustomLinearButton e;
    protected CustomLinearButton f;
    protected CustomLinearButton g;
    protected CustomLinearButton h;
    protected ProfileFacebookFriendsButton i;
    protected ImageView j;
    protected TextView k;
    protected ImageView l;
    protected TextView m;
    protected TextView n;
    j o;
    private boolean p;

    public ProfileUserButtonsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    static void a(ProfileUserButtonsView profileuserbuttonsview, String s, String s1)
    {
        profileuserbuttonsview.a(s, s1);
    }

    private void a(String s, String s1)
    {
        al al1 = new al(s1);
        al1.a(s);
        a.a(al1);
    }

    static boolean a(ProfileUserButtonsView profileuserbuttonsview)
    {
        return profileuserbuttonsview.p;
    }

    protected void a()
    {
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileUserButtonsView a;

            public void onClick(View view)
            {
                a.o.n();
                if (com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a))
                {
                    com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a, "view_friends", "own_profile_main_actions");
                    return;
                } else
                {
                    com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a, "view_friends", "another_profile_main_actions");
                    return;
                }
            }

            
            {
                a = ProfileUserButtonsView.this;
                super();
            }
        });
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileUserButtonsView a;

            public void onClick(View view)
            {
                a.o.o();
                com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a, "view_blocked", "own_profile_main_actions");
            }

            
            {
                a = ProfileUserButtonsView.this;
                super();
            }
        });
        e.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileUserButtonsView a;

            public void onClick(View view)
            {
                a.o.j();
                com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a, "invite_friends", "own_profile_main_actions");
            }

            
            {
                a = ProfileUserButtonsView.this;
                super();
            }
        });
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileUserButtonsView a;

            public void onClick(View view)
            {
                a.o.k();
                com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a, "add_friend", "another_profile_main_actions");
            }

            
            {
                a = ProfileUserButtonsView.this;
                super();
            }
        });
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileUserButtonsView a;

            public void onClick(View view)
            {
                a.o.p();
                com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a, "settings", "own_profile_main_actions");
            }

            
            {
                a = ProfileUserButtonsView.this;
                super();
            }
        });
        g.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileUserButtonsView a;

            public void onClick(View view)
            {
                a.o.m();
                com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a, "chat", "another_profile_main_actions");
            }

            
            {
                a = ProfileUserButtonsView.this;
                super();
            }
        });
        h.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileUserButtonsView a;

            public void onClick(View view)
            {
                a.o.l();
                com.etermax.gamescommon.profile.ui.ProfileUserButtonsView.a(a, "play", "another_profile_main_actions");
            }

            
            {
                a = ProfileUserButtonsView.this;
                super();
            }
        });
    }

    public void b()
    {
        f.setVisibility(0);
        g.setVisibility(0);
        h.setVisibility(0);
        b.setVisibility(8);
        d.setVisibility(8);
        e.setVisibility(8);
        p = false;
    }

    public void c()
    {
        b.setVisibility(0);
        d.setVisibility(0);
        e.setVisibility(0);
        f.setVisibility(8);
        g.setVisibility(8);
        h.setVisibility(8);
        p = true;
    }

    public void setBlockedCount(int i1)
    {
        n.setText(Integer.toString(i1));
    }

    public void setButtonsListener(j j1)
    {
        o = j1;
    }

    public void setEnabled(boolean flag)
    {
        f.setEnabled(flag);
        l.setEnabled(flag);
        k.setEnabled(flag);
        d.setEnabled(flag);
        g.setEnabled(flag);
        b.setEnabled(flag);
        c.setEnabled(flag);
        e.setEnabled(flag);
        h.setEnabled(flag);
    }

    public void setFacebookFriendsIds(List list)
    {
        i.bringToFront();
        i.setFacebookFriendsIds(list);
    }

    public void setFriendState(boolean flag)
    {
        if (flag)
        {
            l.setImageResource(h.okfriend_profile);
            l.setAlpha(128);
            k.setText(o.friend_plural);
            k.setTextColor(Color.argb(128, 102, 102, 102));
            f.setSelected(true);
            f.setEnabled(false);
            return;
        } else
        {
            l.setImageResource(h.add_friend_profile);
            l.setAlpha(255);
            k.setText(o.player_add_friend);
            k.setTextColor(Color.argb(255, 102, 102, 102));
            f.setSelected(false);
            f.setEnabled(true);
            return;
        }
    }

    public void setFriendsCount(int i1)
    {
        if (i1 > 0)
        {
            i.setVisibility(0);
            j.setVisibility(4);
        } else
        {
            i.setVisibility(8);
            j.setVisibility(0);
        }
        m.setText(Integer.toString(i1));
    }
}
