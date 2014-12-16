.class Lcom/etermax/gamescommon/menu/a/d$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/f;)V
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
    .line 276
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/d$2;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/d;->a:Lcom/etermax/gamescommon/datasource/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/e;->a(I)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0, p2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    .line 307
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setChatHeaders(Ljava/util/List;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;J)J

    .line 312
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v1, v1, Lcom/etermax/gamescommon/menu/a/d;->b:Lcom/etermax/gamescommon/e/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/e/a;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/d;J)J

    .line 314
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/menu/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/menu/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/a/e;->i()V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$2;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v1, p2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Ljava/lang/Exception;)Z

    move-result v1

    .line 286
    if-eqz v1, :cond_0

    .line 287
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;J)J

    .line 288
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v3, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v3, v3, Lcom/etermax/gamescommon/menu/a/d;->b:Lcom/etermax/gamescommon/e/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/e/a;->a()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/d;J)J

    .line 290
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    new-instance v3, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-direct {v3}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;-><init>()V

    invoke-static {v2, v3}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    .line 291
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setChatHeaders(Ljava/util/List;)V

    .line 292
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d$2;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setHasMore(Z)V

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d$2;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v2, v1}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    .line 297
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/a/d$2;->b(Z)V

    .line 298
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 299
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$2;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$2;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V

    return-void
.end method
