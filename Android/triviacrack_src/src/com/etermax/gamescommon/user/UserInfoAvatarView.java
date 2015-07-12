// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.h;
import com.etermax.o;
import com.etermax.tools.nationality.NationalityManager;

// Referenced classes of package com.etermax.gamescommon.user:
//            UserInfoAvatarView_, b

public class UserInfoAvatarView extends FrameLayout
{

    protected ViewSwitcher a;
    protected View b;
    protected TextView c;
    protected TextView d;
    protected ImageView e;
    protected TextView f;
    protected TextView g;
    protected View h;
    protected TextView i;
    protected View j;
    protected Button k;
    private b l;
    private com.etermax.gamescommon.user.b m;

    public UserInfoAvatarView(Context context)
    {
        super(context);
        a(((b) (null)), ((BaseAdapter) (null)), ((j) (null)), ((String) (null)));
    }

    public UserInfoAvatarView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(((b) (null)), ((BaseAdapter) (null)), ((j) (null)), ((String) (null)));
    }

    public UserInfoAvatarView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a(((b) (null)), ((BaseAdapter) (null)), ((j) (null)), ((String) (null)));
    }

    public static UserInfoAvatarView a(Context context, b b1, BaseAdapter baseadapter, j j1)
    {
        return a(context, b1, baseadapter, j1, "");
    }

    public static UserInfoAvatarView a(Context context, b b1, BaseAdapter baseadapter, j j1, String s)
    {
        UserInfoAvatarView userinfoavatarview = UserInfoAvatarView_.a(context);
        userinfoavatarview.a(b1, baseadapter, j1, s);
        return userinfoavatarview;
    }

    static com.etermax.gamescommon.user.b a(UserInfoAvatarView userinfoavatarview)
    {
        return userinfoavatarview.m;
    }

    private void a(b b1, BaseAdapter baseadapter, j j1, String s)
    {
        if (b1 == null)
        {
            l = new b();
        } else
        {
            l = b1;
        }
        if (j1 != null)
        {
            a(baseadapter, j1, s);
        }
    }

    public void a(BaseAdapter baseadapter, j j1)
    {
        a(baseadapter, j1, "");
    }

    public void a(BaseAdapter baseadapter, j j1, String s)
    {
        if (j1.getName() == null)
        {
            l.b(a, "");
            b.setVisibility(4);
            k.setVisibility(4);
            return;
        }
        b.setVisibility(0);
        if (s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        class _cls2
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.values().length];
                try
                {
                    b[com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.INVITING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    b[com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.INVITED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    b[com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus.NOT_INVITED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                a = new int[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.values().length];
                try
                {
                    a[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.IDLE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.OFFLINE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.ONLINE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        TextView textview;
        Context context;
        int i1;
        Object aobj[];
        Object aobj1[];
        android.graphics.drawable.Drawable drawable;
        if (baseadapter == null)
        {
            l.a(a, j1);
        } else
        {
            l.a(a, j1);
        }
        c.setText(j1.getName());
        d.setVisibility(8);
_L9:
        ClassCastException classcastexception;
        String s1;
        if (j1.getNationality() != null)
        {
            e.setVisibility(0);
            drawable = NationalityManager.getFlag(getContext(), j1.getNationality());
            e.setImageDrawable(drawable);
        } else
        {
            e.setVisibility(8);
        }
        if (j1.getDistance() != null)
        {
            f.setVisibility(0);
            textview = f;
            context = getContext();
            i1 = o.opponents_distance;
            aobj = new Object[1];
            aobj1 = new Object[1];
            aobj1[0] = Double.valueOf((double)j1.getDistance().intValue() / 1000D);
            aobj[0] = String.format("%.2f", aobj1);
            textview.setText(context.getString(i1, aobj));
        } else
        {
            f.setVisibility(8);
        }
        if (j1.getAge() != null)
        {
            g.setVisibility(0);
            g.setText(Integer.toString(j1.getAge().intValue()));
        } else
        {
            g.setVisibility(8);
        }
        if (j1.getFriendsInCommon() != null)
        {
            h.setVisibility(0);
            i.setVisibility(0);
            i.setText(j1.getFriendsInCommon().toString());
        } else
        {
            h.setVisibility(4);
            i.setVisibility(4);
        }
        if (j1.getOnlineStatus() == null) goto _L4; else goto _L3
_L3:
        _cls2.a[j1.getOnlineStatus().ordinal()];
        JVM INSTR tableswitch 1 3: default 356
    //                   1 557
    //                   2 570
    //                   3 583;
           goto _L5 _L6 _L7 _L8
_L5:
        j.setVisibility(0);
_L10:
        if (j1.getIsAppUser())
        {
            k.setVisibility(4);
            return;
        }
        break MISSING_BLOCK_LABEL_607;
_L2:
        if (baseadapter == null)
        {
            l.a(a, j1, s);
        } else
        {
            l.a(a, j1, s);
        }
        c.setText(s);
label0:
        {
            s1 = ((UserDTO)j1).getVisibleUsername();
            if (s.compareToIgnoreCase(s1) == 0)
            {
                break label0;
            }
            d.setVisibility(0);
            d.setText(s1);
        }
          goto _L9
        try
        {
            d.setVisibility(8);
        }
        // Misplaced declaration of an exception variable
        catch (ClassCastException classcastexception)
        {
            d.setVisibility(8);
        }
          goto _L9
_L6:
        j.setBackgroundResource(h.user_avatar_status_idle);
          goto _L5
_L7:
        j.setBackgroundResource(h.user_avatar_status_disconnected);
          goto _L5
_L8:
        j.setBackgroundResource(h.user_avatar_status_connected);
          goto _L5
_L4:
        j.setVisibility(4);
          goto _L10
        k.setVisibility(0);
        switch (com.etermax.gamescommon.user._cls2.b[j1.getInvitationStatus().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            k.setPressed(true);
            k.setEnabled(false);
            k.setFocusable(false);
            k.setText(o.invite);
            return;

        case 2: // '\002'
            k.setPressed(true);
            k.setEnabled(false);
            k.setFocusable(false);
            k.setText(o.invited);
            return;

        case 3: // '\003'
            k.setPressed(false);
            break;
        }
        k.setEnabled(true);
        k.setFocusable(true);
        k.setText(o.invite);
        k.setOnClickListener(new android.view.View.OnClickListener(j1) {

            final j a;
            final UserInfoAvatarView b;

            public void onClick(View view)
            {
                if (UserInfoAvatarView.a(b) != null)
                {
                    UserInfoAvatarView.a(b).a(a);
                }
            }

            
            {
                b = UserInfoAvatarView.this;
                a = j1;
                super();
            }
        });
        return;
          goto _L5
    }

    protected void onDetachedFromWindow()
    {
        m = null;
        super.onDetachedFromWindow();
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = android.view.View.MeasureSpec.getSize(i1);
        int l1 = android.view.View.MeasureSpec.getSize(j1);
        if (k1 <= l1 || l1 <= 0)
        {
            j1 = i1;
        }
        super.onMeasure(j1, j1);
    }

    public void setInviteCallback(com.etermax.gamescommon.user.b b1)
    {
        m = b1;
    }

    public void setUser(j j1)
    {
        a(null, j1);
    }
}
