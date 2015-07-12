// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import android.text.TextUtils;
import com.etermax.gamescommon.profile.ui.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            UserLevelDataDTO, ProfileStatisticsDTO, ChallengeDTO

public class ProfileDTO
    implements h
{

    private int blocked;
    private String facebook_id;
    private String facebook_name;
    private boolean fb_show_name;
    private boolean fb_show_picture;
    private int friends;
    private List friends_facebook_ids;
    private long id;
    private boolean is_blocked;
    private boolean is_friend;
    private String last_play_date;
    private UserLevelDataDTO level_data;
    private ProfileStatisticsDTO statistics;
    private String username;
    private ChallengeDTO versus;

    public ProfileDTO()
    {
        friends_facebook_ids = new ArrayList();
    }

    public int getBlocked()
    {
        return blocked;
    }

    public long getConsultedUserId()
    {
        return id;
    }

    public List getFacebookFriendsIds()
    {
        return friends_facebook_ids;
    }

    public String getFacebookId()
    {
        return facebook_id;
    }

    public String getFacebook_id()
    {
        return facebook_id;
    }

    public int getFriends()
    {
        return friends;
    }

    public Long getId()
    {
        return Long.valueOf(id);
    }

    public String getLast_play_date()
    {
        return last_play_date;
    }

    public UserLevelDataDTO getLevel()
    {
        return level_data;
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

    public String getPhotoUrl()
    {
        return null;
    }

    public ProfileStatisticsDTO getStatistics()
    {
        return statistics;
    }

    public String getUsername()
    {
        return username;
    }

    public ChallengeDTO getVersus()
    {
        return versus;
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

    public boolean isBlocked()
    {
        return is_blocked;
    }

    public boolean isFbShowPicture()
    {
        return fb_show_picture;
    }

    public boolean isFriend()
    {
        return is_friend;
    }

    public void setBlocked(boolean flag)
    {
        is_blocked = flag;
    }

    public void setFriend(boolean flag)
    {
        is_friend = flag;
    }

    public boolean showFacebookName()
    {
        return fb_show_name;
    }
}
