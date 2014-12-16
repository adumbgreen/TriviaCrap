// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.datasource.dto.ChatHeaderDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.menu.a.a.b;
import com.etermax.gamescommon.menu.a.c;
import com.etermax.gamescommon.menu.a.m;
import com.etermax.h;
import com.etermax.tools.widget.UsernameCustomFontTextView;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            i

public class a extends i
{

    protected TextView a;
    protected TextView b;
    protected UsernameCustomFontTextView c;
    protected View d;
    protected ViewSwitcher e;
    protected LinearLayout f;
    protected View g;
    protected View h;

    public a(Context context)
    {
        super(context);
    }

    protected void a()
    {
        setBackgroundResource(h.navigation_panel_item_states);
    }

    public void a(ChatHeaderDTO chatheaderdto)
    {
        UserDTO userdto = chatheaderdto.getUser();
        class _cls3
        {

            static final int a[];

            static 
            {
                a = new int[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.values().length];
                try
                {
                    a[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.ONLINE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.IDLE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.OFFLINE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        com.etermax.gamescommon.menu.a.a.a a1;
        if (userdto.getFb_show_name() && !TextUtils.isEmpty(userdto.getFacebook_name()))
        {
            c.setUsername(userdto.getFacebook_name());
        } else
        {
            c.setUsername(userdto.getVisibleUsername());
        }
        if (userdto.getOnlineStatus() == null) goto _L2; else goto _L1
_L1:
        _cls3.a[userdto.getOnlineStatus().ordinal()];
        JVM INSTR tableswitch 1 3: default 76
    //                   1 235
    //                   2 248
    //                   3 261;
           goto _L3 _L4 _L5 _L6
_L3:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_261;
_L2:
        if (TextUtils.isEmpty(chatheaderdto.getLastText()))
        {
            a.setVisibility(8);
        } else
        {
            a.setVisibility(0);
            a.setText(chatheaderdto.getLastText());
        }
        if (chatheaderdto.getUnreadCount().intValue() > 0)
        {
            b.setVisibility(0);
            b.setText(Integer.toString(chatheaderdto.getUnreadCount().intValue()));
        } else
        {
            b.setVisibility(8);
        }
        a1 = i.a();
        if (a1 != null && (a1 instanceof b) && ((b)a1).c().getUser().getId() == chatheaderdto.getUser().getId())
        {
            i.a(this);
            f.setVisibility(0);
        } else
        {
            f.setVisibility(4);
        }
        g.setOnClickListener(new android.view.View.OnClickListener(userdto) {

            final UserDTO a;
            final a b;

            public void onClick(View view)
            {
                if (b.j != null)
                {
                    b.j.a(a);
                }
            }

            
            {
                b = a.this;
                a = userdto;
                super();
            }
        });
        h.setOnClickListener(new android.view.View.OnClickListener(userdto) {

            final UserDTO a;
            final a b;

            public void onClick(View view)
            {
                if (b.j != null)
                {
                    b.j.c(a);
                }
            }

            
            {
                b = a.this;
                a = userdto;
                super();
            }
        });
        return;
_L4:
        d.setBackgroundResource(h.user_status_connected);
          goto _L2
_L5:
        d.setBackgroundResource(h.user_status_idle);
          goto _L2
        d.setBackgroundResource(h.user_status_disconnected);
          goto _L2
    }

    protected View getOptions()
    {
        return f;
    }

    public ViewSwitcher getUserIcon()
    {
        return e;
    }
}
