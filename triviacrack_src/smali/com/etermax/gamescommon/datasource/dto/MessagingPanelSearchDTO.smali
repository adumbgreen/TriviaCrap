.class public Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field chat_headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;",
            ">;"
        }
    .end annotation
.end field

.field friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field searchingOnServer:Z

.field suggested_users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChatHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->chat_headers:Ljava/util/List;

    return-object v0
.end method

.method public getFriends()Ljava/util/List;
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
    .line 15
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->friends:Ljava/util/List;

    return-object v0
.end method

.method public getSuggested()Ljava/util/List;
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
    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->suggested_users:Ljava/util/List;

    return-object v0
.end method

.method public isSearchingOnServer()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->searchingOnServer:Z

    return v0
.end method

.method public setChatHeaders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->chat_headers:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setFriends(Ljava/util/List;)V
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
    .line 19
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->friends:Ljava/util/List;

    .line 20
    return-void
.end method

.method public setSearchingOnServer(Z)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->searchingOnServer:Z

    .line 43
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
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->suggested_users:Ljava/util/List;

    .line 36
    return-void
.end method
