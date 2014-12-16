// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.dashboard.a.a;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.preguntados.datasource.dto.enums.DuelGamePlayerStatus;
import com.etermax.preguntados.datasource.dto.enums.EndedReason;
import com.etermax.preguntados.datasource.dto.enums.GameStatus;
import com.etermax.preguntados.datasource.dto.enums.GameSubStatus;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import java.io.Serializable;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            SpinsDataDTO, SpinDTO, DuelPlayerDTO, UserLevelDataDTO, 
//            GameUserDTO, PregUserDTO, StatisticsDTO

public class GameDTO extends a
    implements Serializable
{

    private List available_crowns;
    private int available_extra_shots;
    private Date created;
    private UserDTO creator;
    private int duel_position;
    private Date ended_date;
    private EndedReason ended_reason;
    private List events;
    private Date expiration_date;
    private int finisher_count;
    private GameStatus game_status;
    private long id;
    private boolean is_random;
    private Language language;
    private Date last_turn;
    private int max_reward;
    private UserLevelDataDTO my_level_data;
    private int my_player_number;
    private boolean my_turn;
    private String name;
    private boolean new_achievements;
    private PregUserDTO opponent;
    private GameUserDTO player_one;
    private GameUserDTO player_two;
    private List players;
    private List questions;
    private int round_number;
    private SpinsDataDTO spins_data;
    private StatisticsDTO statistics;
    private long status_version;
    private GameSubStatus sub_status;
    private GameType type;
    private boolean win;
    private boolean world_cup;

    public GameDTO()
    {
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            GameDTO gamedto = (GameDTO)obj;
            if (id != gamedto.id)
            {
                return false;
            }
        }
        return true;
    }

    public List getAvailableCrowns()
    {
        return available_crowns;
    }

    public int getAvailable_extra_shots()
    {
        return available_extra_shots;
    }

    public Date getCreated()
    {
        return created;
    }

    public UserDTO getDuelCreator()
    {
        return creator;
    }

    public List getDuelPlayers()
    {
        return players;
    }

    public int getDuelPosition()
    {
        return duel_position;
    }

    public List getDuelQuestions()
    {
        return questions;
    }

    public Date getEnded_date()
    {
        return ended_date;
    }

    public EndedReason getEnded_reason()
    {
        return ended_reason;
    }

    public List getEvents()
    {
        return events;
    }

    public Date getExpiration_date()
    {
        return expiration_date;
    }

    public int getFinisherCount()
    {
        return finisher_count;
    }

    public GameType getGameType()
    {
        if (type == null)
        {
            return GameType.NORMAL;
        } else
        {
            return type;
        }
    }

    public long getId()
    {
        return id;
    }

    public Language getLanguageCode()
    {
        return language;
    }

    public Date getLast_turn()
    {
        return last_turn;
    }

    public int getMaxReward()
    {
        return max_reward;
    }

    public GameUserDTO getMyPlayerInfo()
    {
        if (my_player_number == 1)
        {
            return player_one;
        } else
        {
            return player_two;
        }
    }

    public int getMyPlayerNumber()
    {
        return my_player_number;
    }

    public String getName()
    {
        return name;
    }

    public k getOpponent()
    {
        return opponent;
    }

    public GameUserDTO getOpponentPlayerInfo()
    {
        if (my_player_number == 1)
        {
            return player_two;
        } else
        {
            return player_one;
        }
    }

    public SpinType getQuestionType()
    {
        return ((SpinDTO)spins_data.getSpins().get(0)).getType();
    }

    public int getRound_number()
    {
        return round_number;
    }

    public int getSectionType()
    {
label0:
        {
            if (getGameType() != GameType.DUEL_GAME || getDuelPlayers() == null)
            {
                break label0;
            }
            Iterator iterator = getDuelPlayers().iterator();
            DuelPlayerDTO duelplayerdto;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                duelplayerdto = (DuelPlayerDTO)iterator.next();
            } while (!duelplayerdto.isMe() || duelplayerdto.getStatus() != DuelGamePlayerStatus.REJECTED);
            return 3;
        }
        return super.getSectionType();
    }

    public SpinsDataDTO getSpins_data()
    {
        return spins_data;
    }

    public StatisticsDTO getStatistics()
    {
        return statistics;
    }

    public long getStatusVersion()
    {
        return status_version;
    }

    public GameSubStatus getSubStatus()
    {
        return sub_status;
    }

    public UserLevelDataDTO getUserLevelDataDTO()
    {
        return my_level_data;
    }

    public boolean getWorldCupEnabled()
    {
        return world_cup;
    }

    public boolean hasNewAchievements()
    {
        return new_achievements;
    }

    public int hashCode()
    {
        return 31 + (int)(id ^ id >>> 32);
    }

    public boolean isActive()
    {
        return game_status == GameStatus.ACTIVE;
    }

    public boolean isEnded()
    {
label0:
        {
            if (getGameType() != GameType.DUEL_GAME || getDuelPlayers() == null)
            {
                break label0;
            }
            Iterator iterator = getDuelPlayers().iterator();
            DuelPlayerDTO duelplayerdto;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                duelplayerdto = (DuelPlayerDTO)iterator.next();
            } while (!duelplayerdto.isMe() || duelplayerdto.getStatus() != DuelGamePlayerStatus.REJECTED);
            return true;
        }
        boolean flag;
        if (game_status == GameStatus.ENDED)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public boolean isFirstTurn()
    {
        return round_number == 1 && (getSubStatus() == GameSubStatus.P1_PLAYING_FIRST_TURN || getSubStatus() == GameSubStatus.P1_WAITING_FIRST_TURN);
    }

    public boolean isImageTileLeft()
    {
        return true;
    }

    public boolean isLevelUp()
    {
        if (my_level_data != null)
        {
            return my_level_data.isLevelUp();
        } else
        {
            return false;
        }
    }

    public boolean isMyTurn()
    {
        return my_turn;
    }

    public boolean isPendingApproval()
    {
        return game_status == GameStatus.PENDING_APPROVAL;
    }

    public boolean isPendingMyApproval()
    {
        return isMyTurn() && !isEnded() && getMyPlayerNumber() == 2 && getRound_number() == 1 && getMyPlayerInfo().getCharges() == 0 && (getMyPlayerInfo().getCrowns() == null || getMyPlayerInfo().getCrowns().size() == 0);
    }

    public boolean isRandomGame()
    {
        return is_random;
    }

    public boolean isRandomOpponent()
    {
        return opponent != null && opponent.getId().longValue() == 0L;
    }

    public boolean isSecondTurn()
    {
        return round_number == 1 && (getSubStatus() == GameSubStatus.P2_PLAYING_FIRST_TURN || getSubStatus() == GameSubStatus.P2_WAITING_FIRST_TURN);
    }

    public boolean isWin()
    {
        return win;
    }

    protected boolean userWon()
    {
        return win;
    }
}
