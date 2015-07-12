.class Lcom/etermax/gamescommon/menu/a/d$7;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/d;->d(Lcom/etermax/gamescommon/menu/a/f;)V
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
    .line 512
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/d$7;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 516
    const/4 v0, 0x1

    .line 517
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v1, v1, Lcom/etermax/gamescommon/menu/a/d;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/e;->b(I)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 535
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 539
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreFriends()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setHasMoreFriends(Z)V

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$7;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    .line 545
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setHasMoreFriends(Z)V

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$7;->b:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0, p2}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Ljava/lang/Exception;)Z

    move-result v0

    .line 527
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d$7;->a:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    .line 529
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/a/d$7;->b(Z)V

    .line 530
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 531
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 512
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$7;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 512
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$7;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V

    return-void
.end method
