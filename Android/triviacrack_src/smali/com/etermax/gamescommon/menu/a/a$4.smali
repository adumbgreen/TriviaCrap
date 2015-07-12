.class Lcom/etermax/gamescommon/menu/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/menu/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/a;->n()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/gamescommon/menu/a/f",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/a$4;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 404
    const-string v0, "FriendsPanel"

    const-string v1, "loadChatHeaders - onRequestComplete"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$4;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v0, p1}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V

    .line 406
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    check-cast p1, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/menu/a/a$4;->a(Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V

    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 389
    const-string v0, "FriendsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadChatHeaders - onRequestFail - noMorePages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;-><init>()V

    .line 391
    if-eqz p1, :cond_0

    .line 392
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setHasMore(Z)V

    .line 399
    :goto_0
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a$4;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V

    .line 400
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a$4;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/a;->j(Lcom/etermax/gamescommon/menu/a/a;)I

    move-result v1

    if-le v1, v3, :cond_1

    .line 395
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a$4;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/a;->k(Lcom/etermax/gamescommon/menu/a/a;)I

    .line 397
    :cond_1
    invoke-virtual {v0, v3}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setHasMore(Z)V

    goto :goto_0
.end method
