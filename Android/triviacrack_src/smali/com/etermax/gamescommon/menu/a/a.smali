.class public Lcom/etermax/gamescommon/menu/a/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/menu/a/h;
.implements Lcom/etermax/tools/navigation/e;


# instance fields
.field protected a:Landroid/widget/ListView;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Landroid/widget/EditText;

.field protected d:Landroid/widget/ImageButton;

.field protected e:Landroid/widget/ImageButton;

.field protected f:Lcom/etermax/gamescommon/datasource/e;

.field protected g:Lcom/etermax/gamescommon/menu/a/d;

.field protected h:Lcom/etermax/tools/f/a;

.field i:Lcom/etermax/gamescommon/menu/a/m;

.field j:Landroid/widget/AdapterView$OnItemClickListener;

.field k:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private l:Lcom/etermax/gamescommon/menu/a/l;

.field private m:Lcom/etermax/gamescommon/menu/a/b;

.field private n:Lcom/etermax/gamescommon/menu/a/c;

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput v0, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    .line 82
    iput v0, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    .line 83
    iput v0, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    .line 135
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/a$1;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->j:Landroid/widget/AdapterView$OnItemClickListener;

    .line 178
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a$10;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/a$10;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->k:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 98
    new-instance v0, Lcom/etermax/gamescommon/menu/a/l;

    invoke-direct {v0, p1}, Lcom/etermax/gamescommon/menu/a/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    .line 99
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/gamescommon/menu/a/b;Lcom/etermax/gamescommon/menu/a/c;)Lcom/etermax/gamescommon/menu/a/a;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Lcom/etermax/gamescommon/menu/a/p;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/a;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1, p2}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/menu/a/b;Lcom/etermax/gamescommon/menu/a/c;)V

    .line 104
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/a;)Lcom/etermax/gamescommon/menu/a/l;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 509
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    if-ne v0, v5, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;)V

    .line 546
    :goto_0
    return-void

    .line 515
    :cond_1
    if-nez p1, :cond_2

    .line 516
    new-instance p1, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-direct {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;-><init>()V

    .line 517
    invoke-virtual {p1, v2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setHasMore(Z)V

    .line 519
    :cond_2
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->setChatHeaders(Ljava/util/List;)V

    .line 522
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_4
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    iget v2, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    if-ne v2, v5, :cond_5

    .line 530
    new-instance v2, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v3, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v2, v3}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 534
    new-instance v3, Lcom/etermax/gamescommon/menu/a/a/b;

    sget-object v4, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v3, v4, v0}, Lcom/etermax/gamescommon/menu/a/a/b;-><init>(Lcom/etermax/gamescommon/menu/a/o;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 537
    :cond_6
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 538
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v2}, Lcom/etermax/gamescommon/menu/a/a/e;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_7
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    if-ne v0, v5, :cond_8

    .line 542
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v2, v1}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 544
    :cond_8
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v2, v1}, Lcom/etermax/gamescommon/menu/a/l;->b(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 549
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    if-ne v0, v5, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;)V

    .line 585
    :goto_0
    return-void

    .line 554
    :cond_1
    if-nez p1, :cond_2

    .line 555
    new-instance p1, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-direct {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;-><init>()V

    .line 556
    invoke-virtual {p1, v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setHasMoreFriends(Z)V

    .line 558
    :cond_2
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setFriends(Ljava/util/List;)V

    .line 561
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_4
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    iget v2, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    if-ne v2, v5, :cond_5

    .line 569
    new-instance v2, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v3, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v2, v3}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 573
    new-instance v3, Lcom/etermax/gamescommon/menu/a/a/h;

    sget-object v4, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v3, v4, v0}, Lcom/etermax/gamescommon/menu/a/a/h;-><init>(Lcom/etermax/gamescommon/menu/a/o;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 576
    :cond_6
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreFriends()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 577
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v2}, Lcom/etermax/gamescommon/menu/a/a/e;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_7
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    if-ne v0, v5, :cond_8

    .line 581
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v2, v1}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 583
    :cond_8
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v2, v1}, Lcom/etermax/gamescommon/menu/a/l;->b(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 627
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 628
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 629
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 631
    const/4 v0, 0x0

    .line 632
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 633
    :cond_0
    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 634
    new-instance v5, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v6, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v5, v6}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v5, Lcom/etermax/gamescommon/menu/a/a/c;

    sget-object v6, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v5, v6}, Lcom/etermax/gamescommon/menu/a/a/c;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getFriends()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getFriends()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 652
    :cond_2
    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 653
    new-instance v5, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v6, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v5, v6}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v5, Lcom/etermax/gamescommon/menu/a/a/c;

    sget-object v6, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v5, v6}, Lcom/etermax/gamescommon/menu/a/a/c;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getSuggested()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getSuggested()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 671
    :cond_4
    if-eqz p2, :cond_12

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 672
    new-instance v1, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v1, v5}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v1, Lcom/etermax/gamescommon/menu/a/a/c;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v1, v5}, Lcom/etermax/gamescommon/menu/a/a/c;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_5
    :goto_2
    if-nez p2, :cond_6

    .line 690
    new-instance v1, Lcom/etermax/gamescommon/b/u;

    sget-object v5, Lcom/etermax/gamescommon/b/u;->c:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/etermax/gamescommon/b/u;-><init>(Ljava/lang/String;)V

    .line 691
    if-eqz v0, :cond_16

    .line 692
    const-string v0, "yes"

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/b/u;->d(Ljava/lang/String;)V

    .line 696
    :goto_3
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 699
    :cond_6
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/l;->a()V

    .line 700
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 701
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    .line 703
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 704
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v1, v3}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    .line 706
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 707
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v1, v4}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    .line 709
    :cond_9
    return-void

    .line 636
    :cond_a
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v5

    if-nez v5, :cond_1

    .line 637
    new-instance v5, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v6, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v5, v6}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v5, Lcom/etermax/gamescommon/menu/a/a/d;

    sget-object v6, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v5, v6}, Lcom/etermax/gamescommon/menu/a/a/d;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 641
    :cond_b
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v5}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getChatHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 643
    new-instance v6, Lcom/etermax/gamescommon/menu/a/a/b;

    sget-object v7, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v6, v7, v0}, Lcom/etermax/gamescommon/menu/a/a/b;-><init>(Lcom/etermax/gamescommon/menu/a/o;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 645
    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 646
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/c;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v5}, Lcom/etermax/gamescommon/menu/a/a/c;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    move v0, v1

    .line 648
    goto/16 :goto_0

    .line 655
    :cond_e
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v5

    if-nez v5, :cond_3

    .line 656
    new-instance v5, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v6, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v5, v6}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v5, Lcom/etermax/gamescommon/menu/a/a/d;

    sget-object v6, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v5, v6}, Lcom/etermax/gamescommon/menu/a/a/d;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 660
    :cond_f
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v5}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 662
    new-instance v6, Lcom/etermax/gamescommon/menu/a/a/h;

    sget-object v7, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v6, v7, v0}, Lcom/etermax/gamescommon/menu/a/a/h;-><init>(Lcom/etermax/gamescommon/menu/a/o;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 664
    :cond_10
    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 665
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/c;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v5}, Lcom/etermax/gamescommon/menu/a/a/c;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    move v0, v1

    .line 667
    goto/16 :goto_1

    .line 674
    :cond_12
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v1

    if-nez v1, :cond_5

    .line 675
    new-instance v1, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v1, v5}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v1, Lcom/etermax/gamescommon/menu/a/a/d;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v1, v5}, Lcom/etermax/gamescommon/menu/a/a/d;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 679
    :cond_13
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v5}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 681
    new-instance v6, Lcom/etermax/gamescommon/menu/a/a/h;

    sget-object v7, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v6, v7, v0}, Lcom/etermax/gamescommon/menu/a/a/h;-><init>(Lcom/etermax/gamescommon/menu/a/o;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 683
    :cond_14
    if-eqz p2, :cond_15

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;->isSearchingOnServer()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 684
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/c;

    sget-object v5, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v5}, Lcom/etermax/gamescommon/menu/a/a/c;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    move v0, v1

    .line 686
    goto/16 :goto_2

    .line 694
    :cond_16
    const-string v0, "no"

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/b/u;->d(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private a(Lcom/etermax/gamescommon/menu/a/a/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 198
    .line 199
    sget-object v1, Lcom/etermax/gamescommon/menu/a/a$9;->b:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/a/a/a;->a()Lcom/etermax/gamescommon/menu/a/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/menu/a/a/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 237
    :goto_0
    if-eqz v0, :cond_0

    .line 238
    sget-object v1, Lcom/etermax/gamescommon/menu/a/a$9;->a:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/a/a/a;->b()Lcom/etermax/gamescommon/menu/a/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/menu/a/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 251
    :cond_0
    return-void

    .line 201
    :pswitch_0
    new-instance v0, Lcom/etermax/gamescommon/b/u;

    sget-object v1, Lcom/etermax/gamescommon/b/u;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/u;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_1
    new-instance v1, Lcom/etermax/gamescommon/b/u;

    sget-object v2, Lcom/etermax/gamescommon/b/u;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/b/u;-><init>(Ljava/lang/String;)V

    .line 209
    const-string v2, "dashboard"

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/b/u;->b(Ljava/lang/String;)V

    .line 213
    instance-of v2, p1, Lcom/etermax/gamescommon/menu/a/a/b;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/b;->c()Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    move-result-object v0

    .line 219
    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    .line 220
    sget-object v2, Lcom/etermax/gamescommon/menu/a/a$9;->c:[I

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_2

    :goto_3
    move-object v0, v1

    .line 229
    goto :goto_0

    .line 215
    :cond_2
    instance-of v2, p1, Lcom/etermax/gamescommon/menu/a/a/h;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 216
    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/h;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/h;->c()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    move-result-object v0

    goto :goto_2

    .line 222
    :pswitch_2
    const-string v0, "idle"

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/b/u;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 225
    :pswitch_3
    const-string v0, "offline"

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/b/u;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 228
    :pswitch_4
    const-string v0, "online"

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/b/u;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 240
    :pswitch_5
    const-string v1, "chats"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/u;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :pswitch_6
    const-string v1, "friends"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/u;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :pswitch_7
    const-string v1, "suggested"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/u;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 238
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 220
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;Z)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/menu/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/menu/a/a/a;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/menu/a/a;)Lcom/etermax/gamescommon/menu/a/b;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->m:Lcom/etermax/gamescommon/menu/a/b;

    return-object v0
.end method

.method private b(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 588
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    if-ne v0, v5, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;)V

    .line 624
    :goto_0
    return-void

    .line 593
    :cond_1
    if-nez p1, :cond_2

    .line 594
    new-instance p1, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-direct {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;-><init>()V

    .line 595
    invoke-virtual {p1, v2}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setHasMoreSuggested(Z)V

    .line 597
    :cond_2
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->setSuggested(Ljava/util/List;)V

    .line 600
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 601
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_4
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->getSuggested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 607
    iget v2, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    if-ne v2, v5, :cond_5

    .line 608
    new-instance v2, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v3, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v2, v3}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 612
    new-instance v3, Lcom/etermax/gamescommon/menu/a/a/h;

    sget-object v4, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v3, v4, v0}, Lcom/etermax/gamescommon/menu/a/a/h;-><init>(Lcom/etermax/gamescommon/menu/a/o;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 615
    :cond_6
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;->hasMoreSuggested()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 616
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v0, v2}, Lcom/etermax/gamescommon/menu/a/a/e;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_7
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    if-ne v0, v5, :cond_8

    .line 620
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v2, v1}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 622
    :cond_8
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0, v2, v1}, Lcom/etermax/gamescommon/menu/a/l;->b(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/a;->b(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V

    return-void
.end method

.method static synthetic c(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 2
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    return v0
.end method

.method static synthetic d(Lcom/etermax/gamescommon/menu/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/a;->n()V

    return-void
.end method

.method static synthetic e(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 2
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    return v0
.end method

.method static synthetic f(Lcom/etermax/gamescommon/menu/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/a;->o()V

    return-void
.end method

.method static synthetic g(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 2
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    return v0
.end method

.method static synthetic h(Lcom/etermax/gamescommon/menu/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/a;->p()V

    return-void
.end method

.method static synthetic i(Lcom/etermax/gamescommon/menu/a/a;)Lcom/etermax/gamescommon/menu/a/c;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->n:Lcom/etermax/gamescommon/menu/a/c;

    return-object v0
.end method

.method static synthetic j(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    return v0
.end method

.method static synthetic k(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 2
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    return v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v1, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lcom/etermax/gamescommon/menu/a/a/c;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/menu/a/a/c;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    .line 129
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    new-instance v1, Lcom/etermax/gamescommon/menu/a/a/f;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/menu/a/a/f;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/etermax/gamescommon/menu/a/a/c;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/menu/a/a/c;-><init>(Lcom/etermax/gamescommon/menu/a/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    sget-object v2, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/menu/a/l;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    .line 133
    return-void
.end method

.method static synthetic l(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$11;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$11;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$12;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$12;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$13;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$13;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 294
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$14;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$14;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 304
    return-void
.end method

.method static synthetic m(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 2
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    return v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$15;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$15;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$16;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$16;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$17;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$17;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$2;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/a$3;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/a$3;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 352
    return-void
.end method

.method static synthetic n(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    return v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    iget v1, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    new-instance v2, Lcom/etermax/gamescommon/menu/a/a$4;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/menu/a/a$4;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->a(ILcom/etermax/gamescommon/menu/a/f;)V

    .line 408
    return-void
.end method

.method static synthetic o(Lcom/etermax/gamescommon/menu/a/a;)I
    .locals 2
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    return v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    iget v1, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    new-instance v2, Lcom/etermax/gamescommon/menu/a/a$5;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/menu/a/a$5;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->b(ILcom/etermax/gamescommon/menu/a/f;)V

    .line 439
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    iget v1, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    new-instance v2, Lcom/etermax/gamescommon/menu/a/a$6;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/menu/a/a$6;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->c(ILcom/etermax/gamescommon/menu/a/f;)V

    .line 464
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/h;)V

    .line 363
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 356
    if-eqz v0, :cond_0

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 359
    :cond_0
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/menu/a/b;Lcom/etermax/gamescommon/menu/a/c;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 108
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/a;->m:Lcom/etermax/gamescommon/menu/a/b;

    .line 109
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/a;->n:Lcom/etermax/gamescommon/menu/a/c;

    .line 110
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a;->k:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 114
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 115
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->b()V

    .line 116
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->c()V

    .line 117
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/a;->m()V

    .line 118
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/a;->l()V

    .line 119
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/a;->k()V

    .line 120
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->a()V

    .line 121
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/h;)V

    .line 367
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->c()V

    .line 368
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->d()V

    .line 369
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "FriendsPanel"

    const-string v1, "Updating ChatHeaders"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x1

    iput v0, p0, Lcom/etermax/gamescommon/menu/a/a;->o:I

    .line 374
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/a;->n()V

    .line 375
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 378
    const-string v0, "FriendsPanel"

    const-string v1, "Updating MessagingPanel"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iput v2, p0, Lcom/etermax/gamescommon/menu/a/a;->p:I

    .line 380
    iput v2, p0, Lcom/etermax/gamescommon/menu/a/a;->q:I

    .line 381
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/a;->o()V

    .line 382
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->g()V

    .line 469
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 474
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->b()V

    .line 475
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->k()V

    .line 480
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->b()V

    .line 506
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/etermax/gamescommon/menu/a/a$7;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/menu/a/a$7;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    new-instance v3, Lcom/etermax/gamescommon/menu/a/a$8;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/menu/a/a$8;-><init>(Lcom/etermax/gamescommon/menu/a/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/menu/a/d;->a(Ljava/lang/String;Lcom/etermax/gamescommon/menu/a/f;Lcom/etermax/gamescommon/menu/a/f;)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->i:Lcom/etermax/gamescommon/menu/a/m;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/m;->a()Lcom/etermax/gamescommon/menu/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->i:Lcom/etermax/gamescommon/menu/a/m;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/m;->b()V

    .line 718
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->l:Lcom/etermax/gamescommon/menu/a/l;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/l;->notifyDataSetChanged()V

    .line 722
    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    :cond_0
    const-string v0, "FriendsPanel"

    const-string v1, "needToUpdateChatHeaders"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->h()V

    .line 731
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->c()V

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 735
    const-string v0, "FriendsPanel"

    const-string v1, "needToUpdateMessagingPanel"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->i()V

    .line 737
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->d()V

    .line 739
    :cond_3
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a;->c()V

    .line 757
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 743
    const-string v0, "FriendsPanel"

    const-string v1, "Agregando NotificationListener"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 745
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 749
    const-string v0, "FriendsPanel"

    const-string v1, "Eliminando NotificationListener"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/h;)V

    .line 751
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 752
    return-void
.end method
