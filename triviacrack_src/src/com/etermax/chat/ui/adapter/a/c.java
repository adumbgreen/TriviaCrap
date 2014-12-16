// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.chat.a.f;
import com.etermax.chat.a.l;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;

// Referenced classes of package com.etermax.chat.ui.adapter.a:
//            b

public class c
    implements b
{

    private TextView a;
    private ImageView b;
    private ImageView c;

    public c()
    {
    }

    public View a(int j, View view, ViewGroup viewgroup, LayoutInflater layoutinflater, com.etermax.chat.ui.f f1)
    {
        ViewGroup viewgroup1;
        if (view == null)
        {
            viewgroup1 = (ViewGroup)layoutinflater.inflate(k.chat_item_event, viewgroup, false);
        } else
        {
            viewgroup1 = (ViewGroup)view;
        }
        if (f1 instanceof f)
        {
            f f2 = (f)f1;
            a = (TextView)viewgroup1.findViewById(i.message);
            b = (ImageView)viewgroup1.findViewById(i.emoticon);
            c = (ImageView)viewgroup1.findViewById(i.app_icon);
            try
            {
                a(f2.a().d(), f2.e(), viewgroup1.getContext());
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return viewgroup1;
            }
        }
        return viewgroup1;
    }

    public boolean a(long l1, com.etermax.chat.a.k k1, Context context)
    {
        String s = "";
        if (k1.b() != com.etermax.gamescommon.datasource.dto.MessageDTO.EventType.GAME_STARTED) goto _L2; else goto _L1
_L1:
        if (l1 == k1.e().longValue())
        {
            int l3 = o.chat_start_game;
            Object aobj10[] = new Object[1];
            aobj10[0] = k1.f();
            s = context.getString(l3, aobj10);
        } else
        {
            int k3 = o.chat_challenge;
            Object aobj9[] = new Object[1];
            aobj9[0] = k1.f();
            s = context.getString(k3, aobj9);
        }
        b.setImageResource(0);
_L5:
        class _cls1
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[com.etermax.gamescommon.datasource.dto.MessageDTO.Application.values().length];
                try
                {
                    b[com.etermax.gamescommon.datasource.dto.MessageDTO.Application.ANGRY_MIX.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    b[com.etermax.gamescommon.datasource.dto.MessageDTO.Application.ANGRY_WORDS.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    b[com.etermax.gamescommon.datasource.dto.MessageDTO.Application.AWORDED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    b[com.etermax.gamescommon.datasource.dto.MessageDTO.Application.BINGO_CRACK.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    b[com.etermax.gamescommon.datasource.dto.MessageDTO.Application.TRIVIA_CRACK.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    b[com.etermax.gamescommon.datasource.dto.MessageDTO.Application.OTHER.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                a = new int[com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason.values().length];
                try
                {
                    a[com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason.NORMAL.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason.EXPIRED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason.REJECTED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason.RESIGNED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror9)
                {
                    return;
                }
            }
        }

        int j;
        Object aobj[];
        String s1;
        String s2;
        StringBuilder stringbuilder;
        int i1;
        Object aobj1[];
        int j1;
        Object aobj2[];
        int i2;
        Object aobj3[];
        int j2;
        Object aobj4[];
        String s3;
        String s4;
        StringBuilder stringbuilder1;
        int k2;
        Object aobj5[];
        int l2;
        Object aobj6[];
        int i3;
        Object aobj7[];
        int j3;
        Object aobj8[];
        if (s == null || TextUtils.isEmpty(s))
        {
            return false;
        }
        a.setText(s);
          goto _L3
_L2:
        if (k1.b() != com.etermax.gamescommon.datasource.dto.MessageDTO.EventType.GAME_ENDED) goto _L5; else goto _L4
_L4:
        switch (_cls1.a[k1.c().ordinal()])
        {
        case 1: // '\001'
            if (k1.d() != null && k1.d().longValue() == l1)
            {
                j3 = o.chat_win_01;
                aobj8 = new Object[1];
                aobj8[0] = k1.f();
                s = context.getString(j3, aobj8);
                b.setImageResource(h.emo_im_happy);
            } else
            {
                i3 = o.chat_lose_01;
                aobj7 = new Object[1];
                aobj7[0] = k1.f();
                s = context.getString(i3, aobj7);
                b.setImageResource(h.emo_im_sad);
            }
            break;

        case 2: // '\002'
            if (k1.d() == null)
            {
                l2 = o.notification_game_expired;
                aobj6 = new Object[1];
                aobj6[0] = k1.f();
                s = context.getString(l2, aobj6);
                b.setImageResource(0);
            } else
            if (l1 == k1.e().longValue())
            {
                s4 = context.getString(o.chat_expire);
                stringbuilder1 = (new StringBuilder()).append(s4).append(" ");
                k2 = o.chat_lose_02;
                aobj5 = new Object[1];
                aobj5[0] = k1.f();
                s = stringbuilder1.append(context.getString(k2, aobj5)).toString();
                b.setImageResource(h.emo_im_sad);
            } else
            {
                s3 = context.getString(o.chat_expire);
                s = (new StringBuilder()).append(s3).append(" ").append(context.getString(o.chat_win_02)).toString();
                b.setImageResource(h.emo_im_happy);
            }
            break;

        case 3: // '\003'
            if (l1 == k1.e().longValue())
            {
                j2 = o.chat_you_reject;
                aobj4 = new Object[1];
                aobj4[0] = k1.f();
                s = context.getString(j2, aobj4);
            } else
            {
                i2 = o.chat_user_reject;
                aobj3 = new Object[1];
                aobj3[0] = k1.f();
                s = context.getString(i2, aobj3);
            }
            b.setImageResource(0);
            break;

        case 4: // '\004'
            if (k1.d() == null)
            {
                if (l1 == k1.e().longValue())
                {
                    s = context.getString(o.chat_you_resign);
                } else
                {
                    j1 = o.chat_user_resign;
                    aobj2 = new Object[1];
                    aobj2[0] = k1.f();
                    s = context.getString(j1, aobj2);
                }
                b.setImageResource(0);
            } else
            if (l1 == k1.e().longValue())
            {
                s2 = context.getString(o.chat_you_resign);
                stringbuilder = (new StringBuilder()).append(s2).append(" ");
                i1 = o.chat_lose_02;
                aobj1 = new Object[1];
                aobj1[0] = k1.f();
                s = stringbuilder.append(context.getString(i1, aobj1)).toString();
                b.setImageResource(h.emo_im_sad);
            } else
            {
                j = o.chat_user_resign;
                aobj = new Object[1];
                aobj[0] = k1.f();
                s1 = context.getString(j, aobj);
                s = (new StringBuilder()).append(s1).append(" ").append(context.getString(o.chat_win_02)).toString();
                b.setImageResource(h.emo_im_happy);
            }
            break;
        }
          goto _L6
_L3:
        if (k1.a() == null) goto _L8; else goto _L7
_L7:
        _cls1.b[k1.a().ordinal()];
        JVM INSTR tableswitch 1 5: default 856
    //                   1 858
    //                   2 871
    //                   3 871
    //                   4 884
    //                   5 897;
           goto _L8 _L9 _L10 _L10 _L11 _L12
_L8:
        return true;
_L9:
        c.setImageResource(h.app_icon_mezcladitos);
          goto _L13
_L10:
        c.setImageResource(h.app_icon_apalabrados);
          goto _L13
_L11:
        c.setImageResource(h.app_icon_bingocrack);
          goto _L13
_L12:
        c.setImageResource(h.app_icon_preguntados);
_L13:
        if (true) goto _L8; else goto _L6
_L6:
        if (true) goto _L5; else goto _L14
_L14:
    }
}
