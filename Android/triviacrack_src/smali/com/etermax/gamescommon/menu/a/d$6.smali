.class Lcom/etermax/gamescommon/menu/a/d$6;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/f;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
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
    .line 463
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/d$6;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/d;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/e;->g()Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0, p2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    .line 486
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setFriends(Ljava/util/List;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setSuggested(Ljava/util/List;)V

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setHasMoreFriends(Z)V

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setHasMoreSuggested(Z)V

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;J)J

    .line 504
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    .line 505
    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$6;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0, p2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Ljava/lang/Exception;)Z

    move-result v0

    .line 474
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$6;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    .line 476
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/a/d$6;->b(Z)V

    .line 477
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 478
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$6;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$6;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V

    return-void
.end method
