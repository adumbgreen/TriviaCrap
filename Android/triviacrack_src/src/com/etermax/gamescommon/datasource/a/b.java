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
import java.util.HashMap;
import java.util.List;
import org.a.a.a.a;
import org.b.c.b.c;
import org.b.c.b.j;
import org.b.c.f;
import org.b.c.l;
import org.b.d.h;
import org.b.e.a.k;

// Referenced classes of package com.etermax.gamescommon.datasource.a:
//            a

public final class b
    implements com.etermax.gamescommon.datasource.a.a
{

    private k a;
    private String b;
    private a c;

    public b()
    {
        a = new k();
        b = "";
        a.c().add(new c());
        a.c().add(new j());
    }

    public ChatHeaderListDTO a(long l1, int i)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("page", Integer.valueOf(i));
        hashmap.put("userId", Long.valueOf(l1));
        ChatHeaderListDTO chatheaderlistdto;
        try
        {
            chatheaderlistdto = (ChatHeaderListDTO)a.a(b.concat("/users/{userId}/chatHeaders?page={page}"), f.a, null, com/etermax/gamescommon/datasource/dto/ChatHeaderListDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return chatheaderlistdto;
    }

    public MessageListDTO a(Long long1, Long long2, int i, long l1, boolean flag)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("opponentId", long2);
        hashmap.put("lastSyncDateSeconds", Long.valueOf(l1));
        hashmap.put("page", Integer.valueOf(i));
        hashmap.put("userId", long1);
        hashmap.put("skipReset", Boolean.valueOf(flag));
        MessageListDTO messagelistdto;
        try
        {
            messagelistdto = (MessageListDTO)a.a(b.concat("/users/{userId}/users/{opponentId}/chat?page={page}&last_sync={lastSyncDateSeconds}&skip_reset={skipReset}"), f.a, null, com/etermax/gamescommon/datasource/dto/MessageListDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return messagelistdto;
    }

    public MessagingPanelDTO a(long l1, String s, int i)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("panelSection", s);
        hashmap.put("page", Integer.valueOf(i));
        hashmap.put("userId", Long.valueOf(l1));
        MessagingPanelDTO messagingpaneldto;
        try
        {
            messagingpaneldto = (MessagingPanelDTO)a.a(b.concat("/users/{userId}/messaging-panel?panel_section={panelSection}&page={page}"), f.a, null, com/etermax/gamescommon/datasource/dto/MessagingPanelDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return messagingpaneldto;
    }

    public MessagingPanelSearchDTO a(long l1, String s)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("criteria", s);
        hashmap.put("userId", Long.valueOf(l1));
        MessagingPanelSearchDTO messagingpanelsearchdto;
        try
        {
            messagingpanelsearchdto = (MessagingPanelSearchDTO)a.a(b.concat("/users/{userId}/messaging-panel-search?criteria={criteria}"), f.a, null, com/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return messagingpanelsearchdto;
    }

    public PreferencesDTO a(Long long1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        PreferencesDTO preferencesdto;
        try
        {
            preferencesdto = (PreferencesDTO)a.a(b.concat("/users/{userId}/settings"), f.a, null, com/etermax/gamescommon/datasource/dto/PreferencesDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return preferencesdto;
    }

    public UserListDTO a(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        UserListDTO userlistdto;
        try
        {
            userlistdto = (UserListDTO)a.a(b.concat("/users/{userId}/blacklist"), f.a, null, com/etermax/gamescommon/login/datasource/dto/UserListDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return userlistdto;
    }

    public ConfirmationListDTO a(long l1, TransactionInfo transactioninfo)
    {
        org.b.c.b b1 = new org.b.c.b(transactioninfo);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        ConfirmationListDTO confirmationlistdto;
        try
        {
            confirmationlistdto = (ConfirmationListDTO)a.a(b.concat("/users/{userId}/post-purchase"), f.b, b1, com/etermax/gamescommon/shop/dto/ConfirmationListDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return confirmationlistdto;
    }

    public ProductListDTO a()
    {
        ProductListDTO productlistdto;
        try
        {
            productlistdto = (ProductListDTO)a.a(b.concat("/products"), f.a, null, com/etermax/gamescommon/shop/dto/ProductListDTO, new Object[0]).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return productlistdto;
    }

    public void a(long l1, long l2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("favoriteId", Long.valueOf(l2));
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/favorites/{favoriteId}"), f.f, null, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, UserDTO userdto)
    {
        org.b.c.b b1 = new org.b.c.b(userdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/favorites"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, h h)
    {
        org.b.c.b b1 = new org.b.c.b(h);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/profile-picture"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(Long long1, long l1, GiftActionDTO giftactiondto)
    {
        org.b.c.b b1 = new org.b.c.b(giftactiondto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        hashmap.put("giftId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/gifts/{giftId}"), f.e, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(Long long1, PreferencesDTO preferencesdto)
    {
        org.b.c.b b1 = new org.b.c.b(preferencesdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        try
        {
            a.a(b.concat("/users/{userId}/settings"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(Long long1, GiftActionDTO giftactiondto)
    {
        org.b.c.b b1 = new org.b.c.b(giftactiondto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        try
        {
            a.a(b.concat("/users/{userId}/gifts"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(Long long1, Long long2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("opponentId", long2);
        hashmap.put("userId", long1);
        try
        {
            a.a(b.concat("/users/{userId}/users/{opponentId}/chat"), f.f, null, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(Long long1, Long long2, MessageDTO messagedto)
    {
        org.b.c.b b1 = new org.b.c.b(messagedto);
        HashMap hashmap = new HashMap();
        hashmap.put("opponentId", long2);
        hashmap.put("userId", long1);
        try
        {
            a.a(b.concat("/users/{userId}/users/{opponentId}/chat"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(String s)
    {
        b = s;
    }

    public void a(k k1)
    {
        a = k1;
    }

    public AchievementDTO[] a(long l1, com.etermax.gamescommon.datasource.dto.AchievementDTO.Status status)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("type", status);
        AchievementDTO aachievementdto[];
        try
        {
            aachievementdto = (AchievementDTO[])a.a(b.concat("/users/{userId}/achievements?type={type}"), f.a, null, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return aachievementdto;
    }

    public AdsDTO b()
    {
        AdsDTO adsdto;
        try
        {
            adsdto = (AdsDTO)a.a(b.concat("/ads?type=android"), f.a, null, com/etermax/gamescommon/datasource/dto/AdsDTO, new Object[0]).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return adsdto;
    }

    public MessagingPanelDTO b(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        MessagingPanelDTO messagingpaneldto;
        try
        {
            messagingpaneldto = (MessagingPanelDTO)a.a(b.concat("/users/{userId}/messaging-panel"), f.a, null, com/etermax/gamescommon/datasource/dto/MessagingPanelDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return messagingpaneldto;
    }

    public GiftsDTO b(Long long1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        GiftsDTO giftsdto;
        try
        {
            giftsdto = (GiftsDTO)a.a(b.concat("/users/{userId}/gifts"), f.a, null, com/etermax/gamescommon/gifting/dto/GiftsDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return giftsdto;
    }

    public void b(long l1, long l2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("favoriteId", Long.valueOf(l2));
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/blacklist/{favoriteId}"), f.f, null, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void b(long l1, UserDTO userdto)
    {
        org.b.c.b b1 = new org.b.c.b(userdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/blacklist"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void c(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/profile-picture"), f.f, null, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void c(long l1, UserDTO userdto)
    {
        org.b.c.b b1 = new org.b.c.b(userdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/invites"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }
}
