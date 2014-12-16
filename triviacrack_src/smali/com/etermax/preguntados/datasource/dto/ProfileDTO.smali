.class public Lcom/etermax/preguntados/datasource/dto/ProfileDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/profile/ui/h;


# instance fields
.field private blocked:I

.field private facebook_id:Ljava/lang/String;

.field private facebook_name:Ljava/lang/String;

.field private fb_show_name:Z

.field private fb_show_picture:Z

.field private friends:I

.field private friends_facebook_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private is_blocked:Z

.field private is_friend:Z

.field private last_play_date:Ljava/lang/String;

.field private level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

.field private statistics:Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

.field private username:Ljava/lang/String;

.field private versus:Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->friends_facebook_ids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBlocked()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->blocked:I

    return v0
.end method

.method public getConsultedUserId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->id:J

    return-wide v0
.end method

.method public getFacebookFriendsIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->friends_facebook_ids:Ljava/util/List;

    return-object v0
.end method

.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->facebook_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->facebook_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFriends()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->friends:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLast_play_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->last_play_date:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->facebook_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->facebook_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->fb_show_name:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->facebook_name:Ljava/lang/String;

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->statistics:Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVersus()Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->versus:Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;

    return-object v0
.end method

.method public getVisibleUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->username:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->is_blocked:Z

    return v0
.end method

.method public isFbShowPicture()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->fb_show_picture:Z

    return v0
.end method

.method public isFriend()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->is_friend:Z

    return v0
.end method

.method public setBlocked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->is_blocked:Z

    .line 95
    return-void
.end method

.method public setFriend(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->is_friend:Z

    .line 100
    return-void
.end method

.method public showFacebookName()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->fb_show_name:Z

    return v0
.end method
