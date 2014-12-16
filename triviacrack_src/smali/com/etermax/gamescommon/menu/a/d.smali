.class public Lcom/etermax/gamescommon/menu/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/datasource/f;
.implements Lcom/etermax/gamescommon/notification/b;


# instance fields
.field protected a:Lcom/etermax/gamescommon/datasource/e;

.field protected b:Lcom/etermax/gamescommon/e/a;

.field protected c:Lcom/etermax/gamescommon/datasource/a;

.field protected d:Lcom/etermax/gamescommon/notification/d;

.field private e:Landroid/support/v4/app/FragmentActivity;

.field private f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

.field private g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/etermax/gamescommon/menu/a/e;

.field private p:Lcom/etermax/gamescommon/menu/a/h;

.field private q:Lcom/etermax/gamescommon/menu/a/i;

.field private r:Lcom/etermax/gamescommon/menu/a/g;

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide v1, p0, Lcom/etermax/gamescommon/menu/a/d;->h:J

    .line 52
    iput-wide v1, p0, Lcom/etermax/gamescommon/menu/a/d;->i:J

    .line 53
    iput-wide v1, p0, Lcom/etermax/gamescommon/menu/a/d;->j:J

    .line 55
    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->k:Z

    .line 56
    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->l:Z

    .line 58
    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->m:Z

    .line 59
    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->n:Z

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->s:Landroid/os/Handler;

    .line 836
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/d;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/etermax/gamescommon/menu/a/d;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    return-object p1
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    return-object p1
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/g;)Lcom/etermax/gamescommon/menu/a/g;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d;->r:Lcom/etermax/gamescommon/menu/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/i;)Lcom/etermax/gamescommon/menu/a/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d;->q:Lcom/etermax/gamescommon/menu/a/i;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 641
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 644
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v4

    .line 645
    invoke-virtual {p0, v4, p1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 646
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 652
    :cond_2
    return-object v1
.end method

.method private a(Lcom/etermax/gamescommon/menu/a/f;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/etermax/gamescommon/menu/a/d$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/menu/a/d$2;-><init>(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/f;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d$2;->a(Ljava/lang/Object;)Z

    .line 322
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/d;Ljava/lang/Exception;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/d;->a(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Exception;)Z
    .locals 2
    .parameter

    .prologue
    .line 713
    instance-of v0, p1, Lcom/etermax/tools/a/c/b;

    if-eqz v0, :cond_0

    .line 714
    check-cast p1, Lcom/etermax/tools/a/c/b;

    invoke-virtual {p1}, Lcom/etermax/tools/a/c/b;->c()I

    move-result v0

    .line 715
    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_0

    .line 716
    const/4 v0, 0x1

    .line 719
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/menu/a/d;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/etermax/gamescommon/menu/a/d;->h:J

    return-wide p1
.end method

.method static synthetic b(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/menu/a/e;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->o:Lcom/etermax/gamescommon/menu/a/e;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    if-eqz v0, :cond_3

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 660
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 664
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 665
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 666
    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 667
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 673
    :cond_3
    return-object v1
.end method

.method private b(Lcom/etermax/gamescommon/menu/a/f;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/etermax/gamescommon/menu/a/d$3;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/menu/a/d$3;-><init>(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/f;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d$3;->a(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/etermax/gamescommon/menu/a/d;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/etermax/gamescommon/menu/a/d;->j:J

    return-wide p1
.end method

.method static synthetic c(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    if-eqz v0, :cond_3

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 682
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 685
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 686
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 687
    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 688
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 694
    :cond_3
    return-object v1
.end method

.method private c(Lcom/etermax/gamescommon/menu/a/f;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Lcom/etermax/gamescommon/menu/a/d$6;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/menu/a/d$6;-><init>(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/f;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d$6;->a(Ljava/lang/Object;)Z

    .line 508
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/etermax/gamescommon/menu/a/d;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private d(Lcom/etermax/gamescommon/menu/a/f;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/etermax/gamescommon/menu/a/d$7;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/menu/a/d$7;-><init>(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/f;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d$7;->a(Ljava/lang/Object;)Z

    .line 548
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/menu/a/g;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->r:Lcom/etermax/gamescommon/menu/a/g;

    return-object v0
.end method

.method private e(Lcom/etermax/gamescommon/menu/a/f;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/etermax/gamescommon/menu/a/d$8;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/menu/a/d$8;-><init>(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/f;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d$8;->a(Ljava/lang/Object;)Z

    .line 588
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/datasource/f;)V

    .line 85
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->d:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/notification/d;->a(Lcom/etermax/gamescommon/notification/b;)V

    .line 86
    return-void
.end method

.method public a(ILcom/etermax/gamescommon/menu/a/f;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 231
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->hasMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    invoke-interface {p2, v0}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    .line 272
    :goto_0
    return-void

    .line 236
    :cond_1
    new-instance v1, Lcom/etermax/gamescommon/menu/a/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$1;-><init>(Lcom/etermax/gamescommon/menu/a/d;ILcom/etermax/gamescommon/menu/a/f;)V

    .line 247
    if-ne p1, v0, :cond_2

    .line 248
    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/f;)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/f;)V

    goto :goto_0

    .line 254
    :cond_3
    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-direct {v2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;-><init>()V

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v4, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v4}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setChatHeaders(Ljava/util/List;)V

    .line 260
    iget-object v3, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, p1, :cond_4

    iget-object v3, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {v2, v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setHasMore(Z)V

    .line 261
    invoke-interface {p2, v2}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    .line 270
    iput-boolean v1, p0, Lcom/etermax/gamescommon/menu/a/d;->k:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 260
    goto :goto_1
.end method

.method public a(J)V
    .locals 5
    .parameter

    .prologue
    .line 761
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 762
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 763
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 764
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 765
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->setUnreadCount(Ljava/lang/Integer;)V

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->k:Z

    .line 772
    :cond_2
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 733
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 735
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 736
    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 737
    invoke-virtual {v1, p3}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->setLastText(Ljava/lang/String;)V

    .line 739
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 740
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 742
    iput-boolean v7, p0, Lcom/etermax/gamescommon/menu/a/d;->k:Z

    .line 750
    :goto_0
    return-void

    .line 749
    :cond_2
    iput-boolean v7, p0, Lcom/etermax/gamescommon/menu/a/d;->l:Z

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    .line 90
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/menu/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d;->o:Lcom/etermax/gamescommon/menu/a/e;

    .line 100
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/menu/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d;->p:Lcom/etermax/gamescommon/menu/a/h;

    .line 110
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->m:Z

    .line 883
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/etermax/gamescommon/menu/a/f;Lcom/etermax/gamescommon/menu/a/f;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;",
            ">;",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/d;->k()V

    .line 609
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;-><init>()V

    .line 610
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->setChatHeaders(Ljava/util/List;)V

    .line 611
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->setFriends(Ljava/util/List;)V

    .line 612
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->setSuggested(Ljava/util/List;)V

    .line 614
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 615
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->setSearchingOnServer(Z)V

    .line 616
    invoke-interface {p2, v0}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->setSearchingOnServer(Z)V

    .line 619
    invoke-interface {p2, v0}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    .line 620
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Lcom/etermax/gamescommon/menu/a/i;

    invoke-direct {v0, p0, p1, p3}, Lcom/etermax/gamescommon/menu/a/i;-><init>(Lcom/etermax/gamescommon/menu/a/d;Ljava/lang/String;Lcom/etermax/gamescommon/menu/a/f;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->q:Lcom/etermax/gamescommon/menu/a/i;

    .line 622
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->q:Lcom/etermax/gamescommon/menu/a/i;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 699
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 700
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFb_show_name()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    :cond_0
    const/4 v0, 0x1

    .line 706
    :goto_0
    return v0

    .line 703
    :catch_0
    move-exception v0

    .line 706
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Landroid/os/Bundle;)Z
    .locals 2
    .parameter

    .prologue
    .line 905
    const-string v0, "data.TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NEW_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->p:Lcom/etermax/gamescommon/menu/a/h;

    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/d;->h()V

    .line 909
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->p:Lcom/etermax/gamescommon/menu/a/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/a/h;->j()V

    .line 914
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/d;->e()V

    goto :goto_0
.end method

.method public b(J)I
    .locals 6
    .parameter

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 802
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 803
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 804
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 805
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUnreadCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-eqz v0, :cond_1

    .line 806
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 811
    :cond_3
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->b:Lcom/etermax/gamescommon/e/a;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/e/a;->a(I)V

    .line 812
    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->m:Z

    .line 120
    return-void
.end method

.method public b(ILcom/etermax/gamescommon/menu/a/f;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 380
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_3

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreFriends()Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    invoke-interface {p2, v0}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    .line 414
    :goto_0
    return-void

    .line 385
    :cond_1
    new-instance v1, Lcom/etermax/gamescommon/menu/a/d$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$4;-><init>(Lcom/etermax/gamescommon/menu/a/d;ILcom/etermax/gamescommon/menu/a/f;)V

    .line 397
    if-ne p1, v0, :cond_2

    .line 398
    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/f;)V

    goto :goto_0

    .line 400
    :cond_2
    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/menu/a/d;->d(Lcom/etermax/gamescommon/menu/a/f;)V

    goto :goto_0

    .line 404
    :cond_3
    new-instance v1, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-direct {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;-><init>()V

    .line 406
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 407
    iget-object v3, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setFriends(Ljava/util/List;)V

    .line 410
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_4

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreFriends()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setHasMoreFriends(Z)V

    .line 412
    invoke-interface {p2, v1}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    if-ne v0, p1, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->e:Landroid/support/v4/app/FragmentActivity;

    .line 96
    :cond_0
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/menu/a/e;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->o:Lcom/etermax/gamescommon/menu/a/e;

    if-ne v0, p1, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->o:Lcom/etermax/gamescommon/menu/a/e;

    .line 106
    :cond_0
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/menu/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->p:Lcom/etermax/gamescommon/menu/a/h;

    if-ne v0, p1, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->p:Lcom/etermax/gamescommon/menu/a/h;

    .line 116
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->m:Z

    .line 888
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->n:Z

    .line 124
    return-void
.end method

.method public c(ILcom/etermax/gamescommon/menu/a/f;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 426
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_3

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreSuggested()Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    invoke-interface {p2, v0}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    .line 459
    :goto_0
    return-void

    .line 431
    :cond_1
    new-instance v1, Lcom/etermax/gamescommon/menu/a/d$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/d$5;-><init>(Lcom/etermax/gamescommon/menu/a/d;ILcom/etermax/gamescommon/menu/a/f;)V

    .line 442
    if-ne p1, v0, :cond_2

    .line 443
    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/menu/a/d;->c(Lcom/etermax/gamescommon/menu/a/f;)V

    goto :goto_0

    .line 445
    :cond_2
    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/menu/a/d;->e(Lcom/etermax/gamescommon/menu/a/f;)V

    goto :goto_0

    .line 449
    :cond_3
    new-instance v1, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-direct {v1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;-><init>()V

    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v3, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setSuggested(Ljava/util/List;)V

    .line 455
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_4

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreSuggested()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setHasMoreSuggested(Z)V

    .line 457
    invoke-interface {p2, v1}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(J)V
    .locals 6
    .parameter

    .prologue
    .line 891
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 893
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 894
    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 895
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 901
    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->k:Z

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/d;->l:Z

    .line 141
    return-void
.end method

.method public f()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    iget-boolean v2, p0, Lcom/etermax/gamescommon/menu/a/d;->n:Z

    if-eqz v2, :cond_1

    .line 150
    iput-boolean v1, p0, Lcom/etermax/gamescommon/menu/a/d;->n:Z

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->b:Lcom/etermax/gamescommon/e/a;

    new-instance v3, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    invoke-direct {v3}, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;-><init>()V

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    invoke-virtual {v2, v3, v4}, Lcom/etermax/gamescommon/e/a;->a(Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;Ljava/lang/Class;)Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    move-result-object v2

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/etermax/gamescommon/menu/a/d;->i:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 157
    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;->getFriendsPanelChatsTTL()I

    move-result v2

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->b:Lcom/etermax/gamescommon/e/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/e/a;->a()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->b:Lcom/etermax/gamescommon/e/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/e/a;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/etermax/gamescommon/menu/a/d;->h:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v7

    if-gtz v2, :cond_0

    :cond_2
    iget-boolean v2, p0, Lcom/etermax/gamescommon/menu/a/d;->l:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 161
    goto :goto_0
.end method

.method public g()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    iget-boolean v2, p0, Lcom/etermax/gamescommon/menu/a/d;->m:Z

    if-eqz v2, :cond_1

    .line 172
    iput-boolean v1, p0, Lcom/etermax/gamescommon/menu/a/d;->m:Z

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->b:Lcom/etermax/gamescommon/e/a;

    new-instance v3, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    invoke-direct {v3}, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;-><init>()V

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    invoke-virtual {v2, v3, v4}, Lcom/etermax/gamescommon/e/a;->a(Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;Ljava/lang/Class;)Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/etermax/gamescommon/menu/a/d;->j:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;->getFriendsPanelFriendsTTL()I

    move-result v2

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    .line 179
    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    .line 187
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/etermax/gamescommon/menu/a/d;->i:J

    .line 188
    iput-boolean v2, p0, Lcom/etermax/gamescommon/menu/a/d;->l:Z

    .line 189
    iput-boolean v2, p0, Lcom/etermax/gamescommon/menu/a/d;->k:Z

    .line 190
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->g:Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/etermax/gamescommon/menu/a/d;->j:J

    .line 198
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/d;->h()V

    .line 205
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/d;->i()V

    .line 206
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 628
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->q:Lcom/etermax/gamescommon/menu/a/i;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->q:Lcom/etermax/gamescommon/menu/a/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 630
    iput-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->q:Lcom/etermax/gamescommon/menu/a/i;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->r:Lcom/etermax/gamescommon/menu/a/g;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d;->r:Lcom/etermax/gamescommon/menu/a/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/g;->b()V

    .line 634
    iput-object v2, p0, Lcom/etermax/gamescommon/menu/a/d;->r:Lcom/etermax/gamescommon/menu/a/g;

    .line 636
    :cond_1
    return-void
.end method

.method public l()I
    .locals 4

    .prologue
    .line 779
    const/4 v0, 0x0

    .line 780
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 781
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->f:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 782
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 783
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUnreadCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 789
    :cond_3
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/d;->b:Lcom/etermax/gamescommon/e/a;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/e/a;->a(I)V

    .line 790
    return v0
.end method
