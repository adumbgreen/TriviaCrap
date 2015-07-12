.class public Lcom/etermax/preguntados/ui/game/category/CategoryActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/achievements/ui/o;
.implements Lcom/etermax/gamescommon/shop/b;
.implements Lcom/etermax/preguntados/ui/b/b;
.implements Lcom/etermax/preguntados/ui/d/b;
.implements Lcom/etermax/preguntados/ui/d/f;
.implements Lcom/etermax/preguntados/ui/game/category/a/b;
.implements Lcom/etermax/preguntados/ui/game/category/b;
.implements Lcom/etermax/preguntados/ui/game/category/f;
.implements Lcom/etermax/preguntados/ui/game/category/j;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field b:I

.field c:I

.field d:Z

.field e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field f:Lcom/etermax/preguntados/ui/newgame/e;

.field g:Lcom/etermax/preguntados/datasource/d;

.field h:Lcom/etermax/tools/f/a;

.field i:Lcom/etermax/gamescommon/achievements/ui/k;

.field j:Lcom/etermax/gamescommon/shop/c;

.field k:Lcom/etermax/preguntados/ui/d/i;

.field l:Lcom/etermax/gamescommon/social/a;

.field m:Lcom/etermax/tools/social/a/b;

.field n:Lcom/etermax/preguntados/datasource/d;

.field o:Lcom/etermax/gamescommon/login/datasource/a;

.field p:Lcom/etermax/preguntados/sharing/m;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mCoins"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mStartsFromDashboard"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZZLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mCoins"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mStartsFromDashboard"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mSelectedCrown"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 1
    .parameter

    .prologue
    .line 452
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$3;-><init>(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;J)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$3;->a(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method private a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 412
    new-instance v0, Lcom/etermax/gamescommon/b/v;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/v;-><init>()V

    .line 413
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/v;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 414
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/b/v;->a(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 417
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->o(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    new-instance v0, Lcom/etermax/preguntados/a/j;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/j;-><init>()V

    .line 422
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/Integer;)V

    .line 424
    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/Long;)V

    .line 426
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 428
    return-void
.end method

.method private c(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 206
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->o:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->l:Lcom/etermax/gamescommon/social/a;

    new-instance v1, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;-><init>(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    invoke-virtual {v0, p0, v1}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->o(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0
.end method

.method private o(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 7
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->f:Lcom/etermax/preguntados/ui/newgame/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->f:Lcom/etermax/preguntados/ui/newgame/e;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/newgame/e;->a(I)V

    .line 395
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->d:Z

    if-nez v0, :cond_1

    .line 390
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLanguageCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    const-string v1, "rematch"

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->f:Lcom/etermax/preguntados/ui/newgame/e;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLanguageCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    iget v5, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/preguntados/ui/newgame/e;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Ljava/lang/Long;IIZ)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/etermax/preguntados/sharing/b;->a(Landroid/content/Context;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)Lcom/etermax/preguntados/sharing/a;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->p:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 443
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 169
    const-string v2, "resigned"

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 171
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 172
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 327
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IILcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 329
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V

    .line 203
    return-void
.end method

.method public a(Lcom/etermax/preguntados/sharing/ShareView;)V
    .locals 1
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->p:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 474
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 479
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 480
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->hasNewAchievements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCharges()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/etermax/preguntados/ui/game/category/i;->q:Z

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->i:Lcom/etermax/gamescommon/achievements/ui/k;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/k;->a()V

    .line 484
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 265
    invoke-static {p1}, Lcom/etermax/preguntados/ui/d/e;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "fgTutorialCategory"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 266
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->q:Z

    .line 400
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 176
    invoke-static {p1}, Lcom/etermax/preguntados/ui/game/category/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "fgCategory"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IILcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 335
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-static {p1, p2}, Lcom/etermax/preguntados/ui/game/category/a/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "fgGameEnded"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 256
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 162
    const-string v1, "fgCategory"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "fgCrown"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 192
    return-void
.end method

.method public c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    invoke-static {p1, v0}, Lcom/etermax/preguntados/ui/game/category/e;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "fgCrown"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 182
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/etermax/gamescommon/b/g;->b:Lcom/etermax/gamescommon/b/g;

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->a(Landroid/content/Context;JLjava/lang/String;ZLcom/etermax/gamescommon/b/g;)Landroid/content/Intent;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method public d(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 6
    .parameter

    .prologue
    .line 186
    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    iget v3, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    const/4 v4, 0x1

    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZLcom/etermax/preguntados/datasource/dto/enums/SpinType;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 188
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 251
    return-void
.end method

.method public e(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 240
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fgTutorialCategory"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 316
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "main_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/i;->e()V

    .line 317
    return-void
.end method

.method public f(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 6
    .parameter

    .prologue
    .line 244
    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    iget v3, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    const/4 v4, 0x0

    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZLcom/etermax/preguntados/datasource/dto/enums/SpinType;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 246
    return-void
.end method

.method public g(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/d/k;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "fgTutorialYouWon"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 261
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fgTutorialCategory"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 322
    return-void
.end method

.method public h(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 271
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    .line 272
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fgCategory"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 273
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "main_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/i;->d()V

    .line 274
    return-void
.end method

.method public h_()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->o:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->l:Lcom/etermax/gamescommon/social/a;

    new-instance v1, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;-><init>(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    goto :goto_0
.end method

.method public i(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fgCategory"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {p1}, Lcom/etermax/preguntados/ui/game/category/m;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "fgGetSpins"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 282
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->o:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(J)V

    .line 448
    return-void
.end method

.method public j(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 292
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->k:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/i;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fgCategory"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->k:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/d/i;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v3, p1, v1}, Lcom/etermax/preguntados/ui/d/a;->a(ILcom/etermax/preguntados/datasource/dto/GameDTO;I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "fgTutorialPowerUps"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    invoke-static {p0, p1, v0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 296
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    goto :goto_0
.end method

.method public k(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->k:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/i;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fgCrown"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->k:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/ui/d/i;->c(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/etermax/preguntados/ui/d/a;->a(ILcom/etermax/preguntados/datasource/dto/GameDTO;I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "fgTutorialPowerUps"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    invoke-static {p0, p1, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    goto :goto_0
.end method

.method public l(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 6
    .parameter

    .prologue
    .line 339
    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->b:I

    iget v3, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c:I

    const/4 v4, 0x0

    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZLcom/etermax/preguntados/datasource/dto/enums/SpinType;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 341
    return-void
.end method

.method public m(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fgGameEnded"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {p1}, Lcom/etermax/preguntados/ui/game/category/a/e;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "fgMatchScores"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 347
    return-void
.end method

.method public n(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 434
    const-string v1, "fgGameStats"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerNumber()I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/b/a;->a(Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "fgGameStats"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 437
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->j:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/etermax/gamescommon/shop/c;->a(IILandroid/content/Intent;)V

    .line 153
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->m:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->q:Z

    if-nez v0, :cond_0

    .line 405
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onBackPressed()V

    .line 407
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 139
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->j:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->j:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 147
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;)V

    .line 148
    return-void
.end method
