.class Lcom/etermax/gamescommon/menu/a/d$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/f;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/f;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/d$3;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 329
    const/4 v0, 0x1

    .line 330
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v1, v1, Lcom/etermax/gamescommon/menu/a/d;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/e;->a(I)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    invoke-virtual {p2, v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setHasMore(Z)V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0, p2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    .line 361
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    .line 362
    return-void

    .line 356
    :cond_4
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->hasMore()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setHasMore(Z)V

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$3;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0, p2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Ljava/lang/Exception;)Z

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$3;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    .line 342
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/a/d$3;->b(Z)V

    .line 343
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 344
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$3;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$3;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V

    return-void
.end method
