// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h.a;

import android.support.v4.app.FragmentActivity;
import android.widget.BaseAdapter;
import android.widget.Toast;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.o;
import com.etermax.tools.g.a;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.h.a:
//            f, a, e

public class c
    implements f
{

    List a;
    final com.etermax.gamescommon.h.a.a b;

    protected c(com.etermax.gamescommon.h.a.a a1)
    {
        b = a1;
        super();
    }

    static void a(c c1, com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus invitationstatus)
    {
        c1.a(invitationstatus);
    }

    private void a(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus invitationstatus)
    {
        if (a != null)
        {
            for (Iterator iterator = a.iterator(); iterator.hasNext(); ((UserDTO)iterator.next()).setInvitationStatus(invitationstatus)) { }
        }
        a.clear();
    }

    public void a(BaseAdapter baseadapter)
    {
        String s;
        int i;
        s = "";
        a = new ArrayList();
        i = 0;
_L2:
        String s2;
        if (i >= com.etermax.gamescommon.h.a.a.e(b).size() || a.size() >= 50)
        {
            break; /* Loop/switch isn't completed */
        }
        if (((UserDTO)com.etermax.gamescommon.h.a.a.e(b).get(i)).getIs_app_user())
        {
            break MISSING_BLOCK_LABEL_294;
        }
        s = (new StringBuilder()).append(s).append(((UserDTO)com.etermax.gamescommon.h.a.a.e(b).get(i)).getFacebook_id()).toString();
        a.add(com.etermax.gamescommon.h.a.a.e(b).get(i));
        ((UserDTO)com.etermax.gamescommon.h.a.a.e(b).get(i)).setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.INVITING);
        if (i >= -1 + com.etermax.gamescommon.h.a.a.e(b).size() || a.size() >= 50)
        {
            break MISSING_BLOCK_LABEL_294;
        }
        s2 = (new StringBuilder()).append(s).append(",").toString();
_L3:
        i++;
        s = s2;
        if (true) goto _L2; else goto _L1
_L1:
        baseadapter.notifyDataSetChanged();
        FragmentActivity fragmentactivity = b.getActivity();
        int k = o.try_out;
        Object aobj[] = new Object[1];
        aobj[0] = b.getActivity().getString(o.app_name);
        String s1 = fragmentactivity.getString(k, aobj);
        b.b.a(b.getActivity(), s1, s, new g(baseadapter) {

            final BaseAdapter a;
            final c b;

            public void a()
            {
                com.etermax.gamescommon.h.a.c.a(b, com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.INVITED);
                a.notifyDataSetChanged();
            }

            public void a(String s3)
            {
                Toast.makeText(b.b.getActivity(), o.facebook_invite_failure, 0).show();
                if (com.etermax.tools.g.a.a())
                {
                    Toast.makeText(b.b.getActivity(), (new StringBuilder()).append("Facebook Error: ").append(s3).toString(), 0).show();
                }
                com.etermax.gamescommon.h.a.c.a(b, com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.NOT_INVITED);
                a.notifyDataSetChanged();
            }

            public void b()
            {
                com.etermax.gamescommon.h.a.c.a(b, com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.NOT_INVITED);
                a.notifyDataSetChanged();
            }

            
            {
                b = c.this;
                a = baseadapter;
                super();
            }
        });
        return;
        s2 = s;
          goto _L3
    }

    public void a(BaseAdapter baseadapter, j j1)
    {
        FragmentActivity fragmentactivity = b.getActivity();
        int i = o.try_out;
        Object aobj[] = new Object[1];
        aobj[0] = b.getActivity().getString(o.app_name);
        String s = fragmentactivity.getString(i, aobj);
        j1.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.INVITING);
        baseadapter.notifyDataSetChanged();
        b.b.a(b.getActivity(), s, (new StringBuilder()).append("").append(j1.getId()).toString(), new g(j1, baseadapter) {

            final j a;
            final BaseAdapter b;
            final c c;

            public void a()
            {
                a.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.INVITED);
                b.notifyDataSetChanged();
            }

            public void a(String s1)
            {
                Toast.makeText(c.b.getActivity(), o.facebook_invite_failure, 0).show();
                if (com.etermax.tools.g.a.a())
                {
                    Toast.makeText(c.b.getActivity(), (new StringBuilder()).append("Facebook Error: ").append(s1).toString(), 0).show();
                }
                a.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.NOT_INVITED);
                b.notifyDataSetChanged();
            }

            public void b()
            {
                a.setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.NOT_INVITED);
                b.notifyDataSetChanged();
            }

            
            {
                c = c.this;
                a = j1;
                b = baseadapter;
                super();
            }
        });
    }

    public void a(e e, j j1)
    {
        com.etermax.gamescommon.h.a.a.a(b, e, j1);
    }
}
