.class public Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field lastText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_text"
    .end annotation
.end field

.field unreadCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unread_count"
    .end annotation
.end field

.field user:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->lastText:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->unreadCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->user:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public setLastText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->lastText:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUnreadCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->unreadCount:Ljava/lang/Integer;

    .line 41
    return-void
.end method
