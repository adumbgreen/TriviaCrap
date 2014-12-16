.class public Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field chat_headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field has_more:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
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
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->chat_headers:Ljava/util/List;

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->has_more:Z

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
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->chat_headers:Ljava/util/List;

    .line 17
    return-void
.end method

.method public setHasMore(Z)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->has_more:Z

    .line 25
    return-void
.end method
