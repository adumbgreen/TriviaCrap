.class public Lcom/etermax/preguntados/datasource/dto/GameDTO;
.super Lcom/etermax/gamescommon/dashboard/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private available_crowns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;"
        }
    .end annotation
.end field

.field private available_extra_shots:I

.field private created:Ljava/util/Date;

.field private creator:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field private duel_position:I

.field private ended_date:Ljava/util/Date;

.field private ended_reason:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/EventDTO;",
            ">;"
        }
    .end annotation
.end field

.field private expiration_date:Ljava/util/Date;

.field private finisher_count:I

.field private game_status:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

.field private id:J

.field private is_random:Z

.field private language:Lcom/etermax/gamescommon/language/Language;

.field private last_turn:Ljava/util/Date;

.field private max_reward:I

.field private my_level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

.field private my_player_number:I

.field private my_turn:Z

.field private name:Ljava/lang/String;

.field private new_achievements:Z

.field private opponent:Lcom/etermax/preguntados/datasource/dto/PregUserDTO;

.field private player_one:Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

.field private player_two:Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

.field private players:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
            ">;"
        }
    .end annotation
.end field

.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private round_number:I

.field private spins_data:Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

.field private statistics:Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

.field private status_version:J

.field private sub_status:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

.field private type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

.field private win:Z

.field private world_cup:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    if-ne p0, p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 287
    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 289
    goto :goto_0

    .line 290
    :cond_3
    check-cast p1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 291
    iget-wide v2, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->id:J

    iget-wide v4, p1, Lcom/etermax/preguntados/datasource/dto/GameDTO;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 292
    goto :goto_0
.end method

.method public getAvailableCrowns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->available_crowns:Ljava/util/List;

    return-object v0
.end method

.method public getAvailable_extra_shots()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->available_extra_shots:I

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getDuelCreator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->creator:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public getDuelPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->players:Ljava/util/List;

    return-object v0
.end method

.method public getDuelPosition()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->duel_position:I

    return v0
.end method

.method public getDuelQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->questions:Ljava/util/List;

    return-object v0
.end method

.method public getEnded_date()Ljava/util/Date;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->ended_date:Ljava/util/Date;

    return-object v0
.end method

.method public getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->ended_reason:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/EventDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->events:Ljava/util/List;

    return-object v0
.end method

.method public getExpiration_date()Ljava/util/Date;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->expiration_date:Ljava/util/Date;

    return-object v0
.end method

.method public getFinisherCount()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->finisher_count:I

    return v0
.end method

.method public getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->id:J

    return-wide v0
.end method

.method public getLanguageCode()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->language:Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method

.method public getLast_turn()Ljava/util/Date;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->last_turn:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxReward()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->max_reward:I

    return v0
.end method

.method public getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->my_player_number:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->player_one:Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->player_two:Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    goto :goto_0
.end method

.method public getMyPlayerNumber()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->my_player_number:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpponent()Lcom/etermax/gamescommon/k;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->opponent:Lcom/etermax/preguntados/datasource/dto/PregUserDTO;

    return-object v0
.end method

.method public getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->my_player_number:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->player_two:Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->player_one:Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    goto :goto_0
.end method

.method public getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->spins_data:Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getType()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v0

    return-object v0
.end method

.method public getRound_number()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->round_number:I

    return v0
.end method

.method public getSectionType()I
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 231
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->isMe()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getStatus()Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    move-result-object v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    if-ne v0, v2, :cond_0

    .line 232
    const/4 v0, 0x3

    .line 236
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->getSectionType()I

    move-result v0

    goto :goto_0
.end method

.method public getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->spins_data:Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    return-object v0
.end method

.method public getStatistics()Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->statistics:Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    return-object v0
.end method

.method public getStatusVersion()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->status_version:J

    return-wide v0
.end method

.method public getSubStatus()Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->sub_status:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    return-object v0
.end method

.method public getUserLevelDataDTO()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->my_level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    return-object v0
.end method

.method public getWorldCupEnabled()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->world_cup:Z

    return v0
.end method

.method public hasNewAchievements()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->new_achievements:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 276
    .line 278
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->id:J

    iget-wide v2, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 279
    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->game_status:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->ACTIVE:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnded()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 204
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->isMe()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getStatus()Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    move-result-object v0

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    if-ne v0, v3, :cond_0

    .line 209
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->game_status:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isFirstTurn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 305
    iget v1, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->round_number:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSubStatus()Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    move-result-object v1

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P1_PLAYING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSubStatus()Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    move-result-object v1

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P1_WAITING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageTileLeft()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public isLevelUp()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->my_level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->my_level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->isLevelUp()Z

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMyTurn()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->my_turn:Z

    return v0
.end method

.method public isPendingApproval()Z
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->game_status:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->PENDING_APPROVAL:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingMyApproval()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerNumber()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCharges()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRandomGame()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->is_random:Z

    return v0
.end method

.method public isRandomOpponent()Z
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->opponent:Lcom/etermax/preguntados/datasource/dto/PregUserDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->opponent:Lcom/etermax/preguntados/datasource/dto/PregUserDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PregUserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecondTurn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 310
    iget v1, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->round_number:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSubStatus()Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    move-result-object v1

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P2_PLAYING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSubStatus()Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    move-result-object v1

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P2_WAITING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWin()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->win:Z

    return v0
.end method

.method protected userWon()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/GameDTO;->win:Z

    return v0
.end method
