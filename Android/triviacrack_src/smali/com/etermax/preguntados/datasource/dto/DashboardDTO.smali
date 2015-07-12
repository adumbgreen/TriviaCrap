.class public Lcom/etermax/preguntados/datasource/dto/DashboardDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/dashboard/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/gamescommon/dashboard/a/d",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private app_config:Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

.field private coins:I

.field private country:Lcom/etermax/tools/nationality/Nationality;

.field private country_confirmation:Z

.field private current_promotion:Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;

.field private extra_shots:I

.field private inactive_friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private inbox:Lcom/etermax/preguntados/datasource/dto/InboxDTO;

.field private last_chat_activity:Ljava/util/Date;

.field private level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation
.end field

.field private lives:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

.field private new_achievements:Z

.field private notification_id:Ljava/lang/String;

.field private see_ranking:Z

.field private shows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/ShowDTO;",
            ">;"
        }
    .end annotation
.end field

.field private suggested_opponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/util/Date;

.field private unread_conversations:I

.field private version_status:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAppConfig()Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getAppConfig()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    return-object v0
.end method

.method public getAppConfig()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->app_config:Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    return-object v0
.end method

.method public getCoins()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->coins:I

    return v0
.end method

.method public getCountry()Lcom/etermax/tools/nationality/Nationality;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->country:Lcom/etermax/tools/nationality/Nationality;

    return-object v0
.end method

.method public getCurrentPromotion()Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->current_promotion:Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;

    return-object v0
.end method

.method public getExtra_shots()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->extra_shots:I

    return v0
.end method

.method public getGames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->list:Ljava/util/List;

    return-object v0
.end method

.method public getInactiveFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->inactive_friends:Ljava/util/List;

    return-object v0
.end method

.method public getInbox()Lcom/etermax/preguntados/datasource/dto/InboxDTO;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->inbox:Lcom/etermax/preguntados/datasource/dto/InboxDTO;

    return-object v0
.end method

.method public getLastChatActivity()Ljava/util/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->last_chat_activity:Ljava/util/Date;

    return-object v0
.end method

.method public getLives()Lcom/etermax/preguntados/datasource/dto/LivesDTO;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->lives:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->notification_id:Ljava/lang/String;

    return-object v0
.end method

.method public getShow()Lcom/etermax/preguntados/datasource/dto/ShowDTO;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->shows:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->shows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->shows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestedOpponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->suggested_opponents:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getUnreadConversations()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->unread_conversations:I

    return v0
.end method

.method public getVersionStatus()Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->version_status:Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    return-object v0
.end method

.method public hasConfirmedCountry()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->country_confirmation:Z

    return v0
.end method

.method public hasNewAchievements()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->new_achievements:Z

    return v0
.end method

.method public isLevelUp()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->isLevelUp()Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWeeklyRank()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->see_ranking:Z

    return v0
.end method

.method public setGames(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->list:Ljava/util/List;

    .line 129
    return-void
.end method

.method public setHasConfirmedCountry(Z)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->country_confirmation:Z

    .line 133
    return-void
.end method

.method public setInactiveFriends(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->inactive_friends:Ljava/util/List;

    .line 137
    return-void
.end method

.method public setLevelUp(Z)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->setLevelUp(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method public setNewAchievements(Z)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->new_achievements:Z

    .line 125
    return-void
.end method

.method public setWeeklyRank(Z)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->see_ranking:Z

    .line 167
    return-void
.end method
