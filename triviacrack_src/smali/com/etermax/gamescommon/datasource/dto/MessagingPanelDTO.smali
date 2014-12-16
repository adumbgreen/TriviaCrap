.class public Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field friends:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field hasMoreFriends:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_more_friends"
    .end annotation
.end field

.field hasMoreSuggested:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_more_suggested"
    .end annotation
.end field

.field suggested:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggested"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->friends:Ljava/util/List;

    return-object v0
.end method

.method public getSuggested()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->suggested:Ljava/util/List;

    return-object v0
.end method

.method public hasMoreFriends()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreFriends:Z

    return v0
.end method

.method public hasMoreSuggested()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreSuggested:Z

    return v0
.end method

.method public setFriends(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->friends:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setHasMoreFriends(Z)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreFriends:Z

    .line 41
    return-void
.end method

.method public setHasMoreSuggested(Z)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreSuggested:Z

    .line 49
    return-void
.end method

.method public setSuggested(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->suggested:Ljava/util/List;

    .line 33
    return-void
.end method
