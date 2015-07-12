.class public Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isBlocked:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_blacklisted"
    .end annotation
.end field

.field private isFriend:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_favorite"
    .end annotation
.end field

.field private lastSeen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_access"
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessageDTO;",
            ">;"
        }
    .end annotation
.end field

.field private more:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "more"
    .end annotation
.end field

.field private opponentFacebookId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "opp_fcbk_id"
    .end annotation
.end field

.field private userIsBlocked:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "you_are_blacklisted"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->opponentFacebookId:J

    return-void
.end method


# virtual methods
.method public getLastSeen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->lastSeen:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->list:Ljava/util/List;

    return-object v0
.end method

.method public getOpponentFacebookId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->opponentFacebookId:J

    return-wide v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isBlocked:Z

    return v0
.end method

.method public isFriend()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isFriend:Z

    return v0
.end method

.method public isMore()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->more:Z

    return v0
.end method

.method public isUserIsBlocked()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->userIsBlocked:Z

    return v0
.end method
