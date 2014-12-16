// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.menu.a.c;
import com.etermax.gamescommon.menu.a.m;
import com.etermax.h;
import com.etermax.tools.widget.UsernameCustomFontTextView;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            i

public class l extends i
{

    protected UsernameCustomFontTextView a;
    protected View b;
    protected ViewSwitcher c;
    protected LinearLayout d;
    protected View e;
    protected View f;

    public l(Context context)
    {
        super(context);
    }

    protected void a()
    {
        setBackgroundResource(h.navigation_panel_item_states);
    }

    public void a(UserDTO userdto)
    {
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

        if (userdto.getFb_show_name() && !TextUtils.isEmpty(userdto.getFacebook_name()))
        {
            a.setUsername(userdto.getFacebook_name());
        } else
        {
            a.setUsername(userdto.getVisibleUsername());
        }
        if (userdto.getOnlineStatus() == null) goto _L2; else goto _L1
_L1:
        _cls3.a[userdto.getOnlineStatus().ordinal()];
        JVM INSTR tableswitch 1 3: default 72
    //                   1 171
    //                   2 184
    //                   3 197;
           goto _L3 _L4 _L5 _L6
_L3:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_197;
_L2:
        com.etermax.gamescommon.menu.a.a.a a1 = i.a();
        if (a1 != null && (a1 instanceof com.etermax.gamescommon.menu.a.a.h) && ((com.etermax.gamescommon.menu.a.a.h)a1).c().getId() == userdto.getId())
        {
            i.a(this);
            d.setVisibility(0);
        } else
        {
            d.setVisibility(4);
        }
        e.setOnClickListener(new android.view.View.OnClickListener(userdto) {

            final UserDTO a;
            final l b;

            public void onClick(View view)
            {
                if (b.j != null)
                {
                    b.j.d(a);
                }
            }

            
            {
                b = l.this;
                a = userdto;
                super();
            }
        });
        f.setOnClickListener(new android.view.View.OnClickListener(userdto) {

            final UserDTO a;
            final l b;

            public void onClick(View view)
            {
                if (b.j != null)
                {
                    b.j.b(a);
                }
            }

            
            {
                b = l.this;
                a = userdto;
                super();
            }
        });
        return;
_L4:
        b.setBackgroundResource(h.user_status_connected);
          goto _L2
_L5:
        b.setBackgroundResource(h.user_status_idle);
          goto _L2
        b.setBackgroundResource(h.user_status_disconnected);
          goto _L2
    }

    protected View getOptions()
    {
        return d;
    }

    public ViewSwitcher getUserIcon()
    {
        return c;
    }
}
