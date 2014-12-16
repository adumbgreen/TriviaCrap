// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.dashboard.a.d;
import com.etermax.gamescommon.datasource.dto.AppConfigDTO;
import com.etermax.gamescommon.datasource.dto.PromotionDTO;
import com.etermax.tools.nationality.Nationality;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            ShowDTO, UserLevelDataDTO, PreguntadosAppConfigDTO, InboxDTO, 
//            LivesDTO

public class DashboardDTO
    implements d
{

    private PreguntadosAppConfigDTO app_config;
    private int coins;
    private Nationality country;
    private boolean country_confirmation;
    private PromotionDTO current_promotion;
    private int extra_shots;
    private List inactive_friends;
    private InboxDTO inbox;
    private Date last_chat_activity;
    private UserLevelDataDTO level_data;
    private List list;
    private LivesDTO lives;
    private boolean new_achievements;
    private String notification_id;
    private boolean see_ranking;
    private List shows;
    private List suggested_opponents;
    private Date time;
    private int unread_conversations;
    private com.etermax.gamescommon.version.VersionManager.VersionStatusType version_status;

    public DashboardDTO()
    {
    }

    public volatile AppConfigDTO getAppConfig()
    {
        return getAppConfig();
    }

    public PreguntadosAppConfigDTO getAppConfig()
    {
        return app_config;
    }

    public int getCoins()
    {
        return coins;
    }

    public Nationality getCountry()
    {
        return country;
    }

    public PromotionDTO getCurrentPromotion()
    {
        return current_promotion;
    }

    public int getExtra_shots()
    {
        return extra_shots;
    }

    public List getGames()
    {
        return list;
    }

    public List getInactiveFriends()
    {
        return inactive_friends;
    }

    public InboxDTO getInbox()
    {
        return inbox;
    }

    public Date getLastChatActivity()
    {
        return last_chat_activity;
    }

    public LivesDTO getLives()
    {
        return lives;
    }

    public String getNotificationId()
    {
        return notification_id;
    }

    public ShowDTO getShow()
    {
        if (shows != null && !shows.isEmpty())
        {
            return (ShowDTO)shows.get(0);
        } else
        {
            return null;
        }
    }

    public List getSuggestedOpponents()
    {
        return suggested_opponents;
    }

    public Date getTime()
    {
        return time;
    }

    public int getUnreadConversations()
    {
        return unread_conversations;
    }

    public com.etermax.gamescommon.version.VersionManager.VersionStatusType getVersionStatus()
    {
        return version_status;
    }

    public boolean hasConfirmedCountry()
    {
        return country_confirmation;
    }

    public boolean hasNewAchievements()
    {
        return new_achievements;
    }

    public boolean isLevelUp()
    {
        if (level_data != null)
        {
            return level_data.isLevelUp();
        } else
        {
            return false;
        }
    }

    public boolean isWeeklyRank()
    {
        return see_ranking;
    }

    public void setGames(List list1)
    {
        list = list1;
    }

    public void setHasConfirmedCountry(boolean flag)
    {
        country_confirmation = flag;
    }

    public void setInactiveFriends(List list1)
    {
        inactive_friends = list1;
    }

    public void setLevelUp(boolean flag)
    {
        if (level_data != null)
        {
            level_data.setLevelUp(flag);
        }
    }

    public void setNewAchievements(boolean flag)
    {
        new_achievements = flag;
    }

    public void setWeeklyRank(boolean flag)
    {
        see_ranking = flag;
    }
}
