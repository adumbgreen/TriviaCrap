// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.a;

import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.gamescommon.datasource.dto.AdsDTO;
import com.etermax.gamescommon.datasource.dto.ChatHeaderListDTO;
import com.etermax.gamescommon.datasource.dto.MessageDTO;
import com.etermax.gamescommon.datasource.dto.MessageListDTO;
import com.etermax.gamescommon.datasource.dto.MessagingPanelDTO;
import com.etermax.gamescommon.datasource.dto.MessagingPanelSearchDTO;
import com.etermax.gamescommon.datasource.dto.PreferencesDTO;
import com.etermax.gamescommon.gifting.dto.GiftActionDTO;
import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import com.etermax.gamescommon.shop.dto.ConfirmationListDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.gamescommon.shop.dto.TransactionInfo;
import org.b.d.h;
import org.b.e.a.k;

public interface a
{

    public abstract ChatHeaderListDTO a(long l, int i);

    public abstract MessageListDTO a(Long long1, Long long2, int i, long l, boolean flag);

    public abstract MessagingPanelDTO a(long l, String s, int i);

    public abstract MessagingPanelSearchDTO a(long l, String s);

    public abstract PreferencesDTO a(Long long1);

    public abstract UserListDTO a(long l);

    public abstract ConfirmationListDTO a(long l, TransactionInfo transactioninfo);

    public abstract ProductListDTO a();

    public abstract void a(long l, long l1);

    public abstract void a(long l, UserDTO userdto);

    public abstract void a(long l, h h);

    public abstract void a(Long long1, long l, GiftActionDTO giftactiondto);

    public abstract void a(Long long1, PreferencesDTO preferencesdto);

    public abstract void a(Long long1, GiftActionDTO giftactiondto);

    public abstract void a(Long long1, Long long2);

    public abstract void a(Long long1, Long long2, MessageDTO messagedto);

    public abstract void a(String s);

    public abstract void a(k k);

    public abstract AchievementDTO[] a(long l, com.etermax.gamescommon.datasource.dto.AchievementDTO.Status status);

    public abstract AdsDTO b();

    public abstract MessagingPanelDTO b(long l);

    public abstract GiftsDTO b(Long long1);

    public abstract void b(long l, long l1);

    public abstract void b(long l, UserDTO userdto);

    public abstract void c(long l);

    public abstract void c(long l, UserDTO userdto);
}
