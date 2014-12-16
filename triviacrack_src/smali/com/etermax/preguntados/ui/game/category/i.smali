.class public Lcom/etermax/preguntados/ui/game/category/i;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/notification/b;
.implements Lcom/etermax/tools/widget/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/category/j;",
        ">;",
        "Lcom/etermax/gamescommon/notification/b;",
        "Lcom/etermax/tools/widget/b/b;"
    }
.end annotation


# static fields
.field protected static q:Z


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field b:Lcom/etermax/tools/b/a;

.field c:Lcom/etermax/preguntados/datasource/d;

.field d:Lcom/etermax/gamescommon/login/datasource/a;

.field e:Lcom/etermax/preguntados/g/a;

.field f:Lcom/etermax/preguntados/ui/d/i;

.field g:Lcom/etermax/preguntados/ui/game/a/a;

.field h:Lcom/etermax/tools/f/a;

.field i:Lcom/etermax/gamescommon/social/a;

.field j:Lcom/etermax/preguntados/ui/a/a;

.field k:Lcom/etermax/gamescommon/achievements/ui/k;

.field l:Lcom/etermax/preguntados/c/a/b;

.field m:Lcom/etermax/gamescommon/notification/d;

.field n:Lcom/etermax/gamescommon/login/datasource/c;

.field o:Lcom/etermax/gamescommon/datasource/l;

.field p:Lcom/etermax/preguntados/sharing/m;

.field private r:Z

.field private s:J

.field private t:Z

.field private u:Lcom/etermax/preguntados/ui/game/category/widget/a;

.field private v:Lcom/etermax/preguntados/ui/game/category/wheel/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->s:J

    .line 280
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/i$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/i$2;-><init>(Lcom/etermax/preguntados/ui/game/category/i;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->u:Lcom/etermax/preguntados/ui/game/category/widget/a;

    .line 369
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/i$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/i$3;-><init>(Lcom/etermax/preguntados/ui/game/category/i;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->v:Lcom/etermax/preguntados/ui/game/category/wheel/b;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->r:Z

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/i;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/etermax/preguntados/ui/game/category/i;->s:J

    return-wide p1
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-static {}, Lcom/etermax/preguntados/ui/game/category/k;->i()Lcom/etermax/preguntados/ui/game/category/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/l;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/l;->a()Lcom/etermax/preguntados/ui/game/category/i;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/EventDTO;)V
    .locals 12
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 535
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getChallengerScore()I

    move-result v1

    .line 536
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getChallengedScore()I

    move-result v3

    .line 537
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v4

    .line 538
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->l:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getRequestedCrown()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 539
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->l:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getOfferedCrown()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 540
    const-string v0, "null"

    const-string v0, "null"

    .line 544
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getMe()Lcom/etermax/preguntados/datasource/dto/enums/DuelPlayerStatus;

    move-result-object v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/DuelPlayerStatus;->CHALLENGER:Lcom/etermax/preguntados/datasource/dto/enums/DuelPlayerStatus;

    if-ne v0, v2, :cond_3

    .line 546
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->isWin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    sget v0, Lcom/etermax/preguntados/g/a;->o:I

    .line 548
    sget v2, Lcom/etermax/o;->DUEL_ENDED_WON:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p0, v2, v6}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 550
    if-ne v3, v1, :cond_0

    .line 551
    sget v1, Lcom/etermax/o;->trivia_challenge_result_tie_won_01:I

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v4, v3, v8

    aput-object v5, v3, v9

    invoke-virtual {p0, v1, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 586
    :goto_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->isWin()Z

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/etermax/preguntados/ui/game/category/i;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 587
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->e:Lcom/etermax/preguntados/g/a;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 588
    return-void

    .line 553
    :cond_0
    sget v6, Lcom/etermax/o;->trivia_challenge_result_won_01:I

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    aput-object v4, v7, v10

    aput-object v5, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 556
    :cond_1
    sget v0, Lcom/etermax/preguntados/g/a;->p:I

    .line 557
    sget v2, Lcom/etermax/o;->DUEL_ENDED_LOST:I

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-virtual {p0, v2, v5}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 559
    if-ne v3, v1, :cond_2

    .line 560
    sget v1, Lcom/etermax/o;->trivia_challenge_result_tie_lost_01:I

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v6, v3, v8

    invoke-virtual {p0, v1, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 562
    :cond_2
    sget v4, Lcom/etermax/o;->trivia_challenge_result_lost_01:I

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 568
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->isWin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 569
    sget v0, Lcom/etermax/preguntados/g/a;->o:I

    .line 570
    sget v2, Lcom/etermax/o;->DUEL_ENDED_WON:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p0, v2, v6}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 571
    if-ne v3, v1, :cond_4

    .line 572
    sget v1, Lcom/etermax/o;->trivia_challenge_result_tie_won_02:I

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v5, v3, v8

    invoke-virtual {p0, v1, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 574
    :cond_4
    sget v4, Lcom/etermax/o;->trivia_challenge_result_won_02:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    aput-object v5, v6, v10

    invoke-virtual {p0, v4, v6}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 577
    :cond_5
    sget v0, Lcom/etermax/preguntados/g/a;->p:I

    .line 578
    sget v2, Lcom/etermax/o;->DUEL_ENDED_LOST:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p0, v2, v6}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 579
    if-ne v3, v1, :cond_6

    .line 580
    sget v1, Lcom/etermax/o;->trivia_challenge_result_tie_lost_02:I

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v5, v3, v8

    aput-object v4, v3, v9

    invoke-virtual {p0, v1, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 582
    :cond_6
    sget v6, Lcom/etermax/o;->trivia_challenge_result_lost_02:I

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    aput-object v5, v7, v10

    aput-object v4, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/i;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/i;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/i;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 593
    const-string v1, "dialogAcceptButtonListener"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    const-string v1, "dialog_duel_result"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    sget v1, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 598
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 599
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "duel_ended"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->resign_game_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->stat_game_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 433
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->chat_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 435
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->user_2_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->right_tile_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 437
    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 306
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/i;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    if-ne p1, v2, :cond_1

    .line 309
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/j;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 321
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 310
    :cond_1
    if-lez p1, :cond_0

    if-ge p1, v2, :cond_0

    .line 311
    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_first_charge"

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->q()V

    goto :goto_1

    .line 314
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_second_charge"

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->q()V

    goto :goto_1

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->e:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->s:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/i;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/i;->a(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/category/i;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private b(J)V
    .locals 4
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->o:Lcom/etermax/gamescommon/datasource/l;

    sget-object v1, Lcom/etermax/preguntados/notification/b;->a:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v1}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/datasource/l;->a(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 257
    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1, p1}, Lcom/etermax/preguntados/ui/game/category/j;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V

    .line 617
    return-void
.end method

.method private static b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/category/i;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/etermax/preguntados/ui/game/category/i;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/game/category/i;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 416
    .line 418
    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-ne v0, v2, :cond_1

    .line 420
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->l:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/c/a/b;->a()[Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    array-length v0, v0

    move v1, v0

    .line 426
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-virtual {v0, v1, p1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(ILjava/lang/Object;)V

    .line 427
    return-void

    .line 422
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->l:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/c/a/b;->c(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/game/category/i;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/etermax/preguntados/ui/game/category/i;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/game/category/i;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/game/category/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/game/category/i;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->k()V

    return-void
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/game/category/i;)J
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->s:J

    return-wide v0
.end method

.method static synthetic h(Lcom/etermax/preguntados/ui/game/category/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->t:Z

    return v0
.end method

.method static synthetic i(Lcom/etermax/preguntados/ui/game/category/i;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->waiting:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/etermax/f;->black:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 241
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/h;->game_spin_button_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    sget v1, Lcom/etermax/f;->black:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 243
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->spin:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 249
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/h;->game_spin_button_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->e:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->e:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 412
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a()V

    .line 413
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/i$4;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/i$4;-><init>(Lcom/etermax/preguntados/ui/game/category/i;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/i$4;->a(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/i$5;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/game/category/i$5;-><init>(Lcom/etermax/preguntados/ui/game/category/i;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/i$5;->a(Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 524
    const-string v1, "dialogAcceptButtonListener"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    sget v1, Lcom/etermax/o;->DUEL_STARTED:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->trivia_challenge_description:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->play:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 528
    invoke-virtual {v0, v5}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 529
    invoke-virtual {v0, p0, v5}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 530
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 605
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 606
    const-string v1, "dialogAcceptButtonListener"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    sget v1, Lcom/etermax/o;->final_duel:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->final_duel_txt:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->start:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 610
    invoke-virtual {v0, v4}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 611
    invoke-virtual {v0, p0, v4}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 612
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_duel_final_started"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 620
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 621
    const-string v1, "dialogAcceptButtonListener"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    sget v1, Lcom/etermax/o;->character_first_turn_title:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->character_first_turn_txt:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 625
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 626
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_crowns_exceeded"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method private p()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 636
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCharges()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getAvailableCrowns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 638
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_category_fragment"

    invoke-virtual {v0, v2, v3}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    const-string v2, "tutorial_start"

    invoke-interface {v0, v2}, Lcom/etermax/preguntados/ui/game/category/j;->a(Ljava/lang/String;)V

    move v0, v1

    .line 650
    :goto_0
    return v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/d/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_you_won"

    invoke-virtual {v0, v2, v3}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v2}, Lcom/etermax/preguntados/ui/game/category/j;->g(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    move v0, v1

    .line 647
    goto :goto_0

    .line 650
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    const-string v1, "tutorial_charges"

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/j;->a(Ljava/lang/String;)V

    .line 657
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/category/j;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/i$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/i$1;-><init>(Lcom/etermax/preguntados/ui/game/category/i;)V

    return-object v0
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 675
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/i$6;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/etermax/preguntados/ui/game/category/i$6;-><init>(Lcom/etermax/preguntados/ui/game/category/i;Ljava/lang/String;J)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/i$6;->a(Ljava/lang/Object;)Z

    .line 690
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    const-string v0, "dialogAcceptButtonListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 512
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/category/j;->c()V

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a_(Landroid/os/Bundle;)Z
    .locals 6
    .parameter

    .prologue
    .line 662
    const-string v0, "data.TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v1, "data.GID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 666
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USER_PLAYED_02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v2, v1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 667
    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->a(J)V

    .line 668
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 150
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/i;->b(J)V

    .line 152
    sput-boolean v0, Lcom/etermax/preguntados/ui/game/category/i;->q:Z

    .line 154
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    move v2, v0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    .line 160
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/EventDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getType()Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    move-result-object v0

    sget-object v4, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->FINAL_DUEL_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    if-ne v0, v4, :cond_0

    move v2, v3

    .line 159
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/game/category/i;->b(Z)V

    .line 194
    :cond_2
    return-void

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/EventDTO;

    .line 171
    sget-object v2, Lcom/etermax/preguntados/ui/game/category/i$7;->a:[I

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getType()Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 167
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 173
    :pswitch_1
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->m()V

    .line 174
    sput-boolean v3, Lcom/etermax/preguntados/ui/game/category/i;->q:Z

    goto :goto_2

    .line 178
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/datasource/dto/EventDTO;)V

    .line 179
    sput-boolean v3, Lcom/etermax/preguntados/ui/game/category/i;->q:Z

    goto :goto_2

    .line 182
    :pswitch_3
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->n()V

    .line 183
    sput-boolean v3, Lcom/etermax/preguntados/ui/game/category/i;->q:Z

    goto :goto_2

    .line 186
    :pswitch_4
    sput-boolean v3, Lcom/etermax/preguntados/ui/game/category/i;->q:Z

    .line 187
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->o()V

    goto :goto_2

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected c()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 198
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/etermax/o;->round_:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/i;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getFinalDuelRounds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->category_wheel_header_text_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->category_wheel_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->category_header_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 202
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    .line 203
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->v:Lcom/etermax/preguntados/ui/game/category/wheel/b;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->setListener(Lcom/etermax/preguntados/ui/game/category/wheel/b;)V

    .line 205
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/dashboard/i;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/i;->d:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 208
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->resign_game_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->i()V

    .line 214
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomOpponent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->chat_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->resign_game_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->charges_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    .line 227
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCharges()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 228
    invoke-direct {p0, v5}, Lcom/etermax/preguntados/ui/game/category/i;->a(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->u:Lcom/etermax/preguntados/ui/game/category/widget/a;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->setChargeAnimationListener(Lcom/etermax/preguntados/ui/game/category/widget/a;)V

    .line 232
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCharges()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->setCharges(I)V

    .line 233
    return-void

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 221
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->user_2_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->right_tile_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/etermax/preguntados/h/g;

    invoke-direct {v2, p0, v0}, Lcom/etermax/preguntados/h/g;-><init>(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->r:Z

    if-nez v0, :cond_0

    .line 326
    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->t:Z

    .line 327
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/j;->a(Z)V

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/i;->a(Z)V

    .line 329
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->j()V

    .line 330
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->k()V

    .line 332
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/category/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->a(Z)V

    .line 338
    iput-boolean v2, p0, Lcom/etermax/preguntados/ui/game/category/i;->t:Z

    .line 339
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    invoke-interface {v0, v2}, Lcom/etermax/preguntados/ui/game/category/j;->a(Z)V

    .line 340
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->r:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->j()V

    .line 342
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/i;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 343
    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->r:Z

    .line 346
    :cond_0
    return-void
.end method

.method f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    const-string v1, "dialogAcceptButtonListener"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    sget v1, Lcom/etermax/o;->dialog_resign:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->resign:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/category/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p0, v4}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 356
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "resign_confirmation"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/j;->n(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 362
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->a()Lcom/etermax/preguntados/ui/game/category/j;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/category/j;->d()V

    .line 367
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 480
    const-string v0, "dialogAcceptButtonListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 505
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 483
    :pswitch_1
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;->l()V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/j;->e(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0

    .line 489
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/j;->d(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0

    .line 492
    :pswitch_4
    const-string v0, "dialog_duel_result"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 493
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v2, v1}, Lcom/etermax/preguntados/ui/game/category/j;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V

    goto :goto_0

    .line 496
    :pswitch_5
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/j;->f(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0

    .line 499
    :pswitch_6
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/category/j;->e()V

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->m:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/notification/d;->b(Lcom/etermax/gamescommon/notification/b;)V

    .line 268
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 269
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 262
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i;->m:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/notification/d;->a(Lcom/etermax/gamescommon/notification/b;)V

    .line 263
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->charges_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    .line 274
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->a()V

    .line 275
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onStop()V

    .line 276
    return-void
.end method
