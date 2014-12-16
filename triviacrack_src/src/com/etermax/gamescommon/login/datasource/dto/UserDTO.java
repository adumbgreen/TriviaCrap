// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.dto;

import android.text.TextUtils;
import com.etermax.gamescommon.dashboard.a.b.b;
import com.etermax.gamescommon.dashboard.a.c.f;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.language.Language;
import com.etermax.tools.nationality.Nationality;
import java.io.Serializable;
import java.util.Date;
import java.util.Locale;

public class UserDTO
    implements b, f, j, Serializable
{

    private String email;
    private String facebook_id;
    private String facebook_name;
    private boolean fb_show_name;
    private boolean fb_show_picture;
    private boolean has_pass;
    private Long id;
    private transient InvitationStatus invitationStatus;
    private boolean is_app_user;
    private boolean is_favorite;
    private Date last_active_date;
    private Status online_status;
    private String username;

    public UserDTO()
    {
        invitationStatus = InvitationStatus.NOT_INVITED;
    }

    public UserDTO(Long long1)
    {
        invitationStatus = InvitationStatus.NOT_INVITED;
        id = long1;
    }

    public Integer getAge()
    {
        return null;
    }

    public Date getBirthdate()
    {
        return null;
    }

    public Integer getDistance()
    {
        return null;
    }

    public String getEmail()
    {
        return email;
    }

    public String getFacebookId()
    {
        return facebook_id;
    }

    public String getFacebook_id()
    {
        return facebook_id;
    }

    public String getFacebook_name()
    {
        return facebook_name;
    }

    public boolean getFb_show_name()
    {
        return fb_show_name;
    }

    public boolean getFb_show_picture()
    {
        return fb_show_picture;
    }

    public Integer getFriendsInCommon()
    {
        return null;
    }

    public Gender getGender()
    {
        return null;
    }

    public boolean getHas_pass()
    {
        return has_pass;
    }

    public Long getId()
    {
        return id;
    }

    public InvitationStatus getInvitationStatus()
    {
        return invitationStatus;
    }

    public boolean getIsAppUser()
    {
        return is_app_user;
    }

    public boolean getIs_app_user()
    {
        return is_app_user;
    }

    public Language getLanguageCode()
    {
        return null;
    }

    public Date getLastActiveDate()
    {
        return last_active_date;
    }

    public String getName()
    {
        if (!TextUtils.isEmpty(facebook_id) && !TextUtils.isEmpty(facebook_name) && fb_show_name)
        {
            return facebook_name;
        } else
        {
            return getVisibleUsername();
        }
    }

    public Nationality getNationality()
    {
        return null;
    }

    public Status getOnlineStatus()
    {
        return online_status;
    }

    public k getOpponent()
    {
        return null;
    }

    public String getPhotoUrl()
    {
        return null;
    }

    public int getSectionType()
    {
        return 0;
    }

    public String getUsername()
    {
        return username;
    }

    public String getVisibleUsername()
    {
        if (!TextUtils.isEmpty(username))
        {
            return (new StringBuilder()).append("@").append(username.toLowerCase(Locale.US)).toString();
        } else
        {
            return null;
        }
    }

    public boolean isFavorite()
    {
        return is_favorite;
    }

    public boolean isFbShowPicture()
    {
        return fb_show_picture;
    }

    public boolean isImageTileLeft()
    {
        return true;
    }

    public boolean isRandomOpponent()
    {
        return false;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setFacebook_id(String s)
    {
        facebook_id = s;
    }

    public void setFacebook_name(String s)
    {
        facebook_name = s;
    }

    public void setFb_show_name(boolean flag)
    {
        fb_show_name = flag;
    }

    public void setFb_show_picture(boolean flag)
    {
        fb_show_picture = flag;
    }

    public void setHas_pass(boolean flag)
    {
        has_pass = flag;
    }

    public void setId(Long long1)
    {
        id = long1;
    }

    public void setInvitationStatus(InvitationStatus invitationstatus)
    {
        invitationStatus = invitationstatus;
    }

    public void setIs_app_user(boolean flag)
    {
        is_app_user = flag;
    }

    public void setUsername(String s)
    {
        username = s;
    }

    private class InvitationStatus extends Enum
    {

        private static final InvitationStatus $VALUES[];
        public static final InvitationStatus INVITED;
        public static final InvitationStatus INVITING;
        public static final InvitationStatus NOT_INVITED;

        public static InvitationStatus valueOf(String s)
        {
            return (InvitationStatus)Enum.valueOf(com/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus, s);
        }

        public static InvitationStatus[] values()
        {
            return (InvitationStatus[])$VALUES.clone();
        }

        static 
        {
            INVITED = new InvitationStatus("INVITED", 0);
            NOT_INVITED = new InvitationStatus("NOT_INVITED", 1);
            INVITING = new InvitationStatus("INVITING", 2);
            InvitationStatus ainvitationstatus[] = new InvitationStatus[3];
            ainvitationstatus[0] = INVITED;
            ainvitationstatus[1] = NOT_INVITED;
            ainvitationstatus[2] = INVITING;
            $VALUES = ainvitationstatus;
        }

        private InvitationStatus(String s, int i)
        {
            super(s, i);
        }
    }

}
