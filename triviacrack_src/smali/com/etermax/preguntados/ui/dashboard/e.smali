.class public Lcom/etermax/preguntados/ui/dashboard/e;
.super Lcom/etermax/gamescommon/dashboard/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/menu/a/e;
.implements Lcom/etermax/gamescommon/notification/b;
.implements Lcom/etermax/preguntados/ui/dashboard/h;
.implements Lcom/etermax/preguntados/ui/dashboard/j;
.implements Lcom/etermax/tools/widget/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/dashboard/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/f;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;",
        "Lcom/etermax/gamescommon/menu/a/e;",
        "Lcom/etermax/gamescommon/notification/b;",
        "Lcom/etermax/preguntados/ui/dashboard/h;",
        "Lcom/etermax/preguntados/ui/dashboard/j;",
        "Lcom/etermax/tools/widget/b/b;"
    }
.end annotation


# instance fields
.field c:Lcom/etermax/preguntados/datasource/d;

.field d:Lcom/etermax/gamescommon/login/datasource/a;

.field e:Lcom/etermax/gamescommon/menu/a/d;

.field f:Lcom/etermax/gamescommon/login/datasource/c;

.field g:Lcom/etermax/tools/f/a;

.field h:Lcom/etermax/preguntados/ui/game/a/a;

.field i:Lcom/etermax/gamescommon/notification/d;

.field j:Lcom/etermax/tools/social/a/b;

.field k:Lcom/etermax/preguntados/g/a;

.field l:Lcom/etermax/gamescommon/social/a;

.field m:Lcom/etermax/gamescommon/c/a;

.field n:Lcom/etermax/gamescommon/e;

.field o:Lcom/etermax/gamescommon/version/VersionManager;

.field p:Lcom/etermax/tools/b/a;

.field q:Z

.field private r:Landroid/os/CountDownTimer;

.field private s:Lcom/etermax/tools/widget/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/tools/widget/a/f",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/etermax/preguntados/ui/dashboard/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/a;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->q:Z

    .line 87
    return-void
.end method

.method private D()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/e$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/e$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/e;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/e$2;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 241
    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->f()V

    .line 244
    :cond_0
    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/e$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/e$3;-><init>(Lcom/etermax/preguntados/ui/dashboard/e;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/e$3;->a(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method private F()Lcom/etermax/gamescommon/language/Language;
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "last_played_language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    const-string v1, "selected_flag_item_tag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-nez v0, :cond_2

    .line 284
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/b/d/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string v0, "EN_UK"

    .line 288
    :cond_0
    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const-string v0, "PT_BR"

    .line 291
    :cond_1
    const-string v1, "NewGameFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT LANGUAGE FOR THIS DEVICE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_2
    invoke-static {v0}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    return-object v0
.end method

.method private G()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->isUnlimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->I()V

    .line 362
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->icon_live_infinite:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_remaining_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->full:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->icon_live:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->I()V

    .line 372
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_remaining_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->full:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :goto_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private H()V
    .locals 6

    .prologue
    .line 528
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v1

    .line 530
    if-lez v1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->I()V

    .line 532
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/e$8;

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0xfa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/dashboard/e$8;-><init>(Lcom/etermax/preguntados/ui/dashboard/e;JJ)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->r:Landroid/os/CountDownTimer;

    .line 547
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->r:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 549
    :cond_0
    return-void
.end method

.method private I()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->r:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->r:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 663
    :cond_0
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;->getFriends()Ljava/util/List;

    move-result-object v3

    .line 424
    sget v1, Lcom/etermax/o;->try_out:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/etermax/o;->app_name:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/dashboard/e;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 425
    const-string v1, ""

    .line 426
    const/16 v2, 0x30

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v0

    move-object v0, v1

    move v1, v6

    .line 427
    :goto_0
    if-ge v1, v5, :cond_0

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->j:Lcom/etermax/tools/social/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/etermax/preguntados/ui/dashboard/e$7;

    invoke-direct {v3, p0}, Lcom/etermax/preguntados/ui/dashboard/e$7;-><init>(Lcom/etermax/preguntados/ui/dashboard/e;)V

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/etermax/tools/social/a/b;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/tools/social/a/g;)V

    .line 449
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/e;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->f()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/e;Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/e;->a(Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/dashboard/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/dashboard/e;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->H()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 637
    new-instance v0, Lcom/etermax/gamescommon/b/p;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/p;-><init>()V

    .line 638
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/p;->a(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->g:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 640
    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/dashboard/e;)Lcom/etermax/preguntados/ui/dashboard/i;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->t:Lcom/etermax/preguntados/ui/dashboard/i;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/dashboard/e;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->f()V

    return-void
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/dashboard/e;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->f()V

    return-void
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/dashboard/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/etermax/preguntados/ui/dashboard/e;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->G()V

    return-void
.end method

.method public static n()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/dashboard/g;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/f;->q()V

    .line 687
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/f;->r()V

    .line 692
    return-void
.end method

.method public C()Lcom/etermax/preguntados/ui/dashboard/widget/a;
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->j()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/c;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/etermax/preguntados/ui/dashboard/widget/c;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/dashboard/h;)V

    .line 701
    :goto_0
    return-object v0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelGamesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/dashboard/h;)V

    goto :goto_0

    .line 701
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(J)Lcom/etermax/gamescommon/dashboard/a/a/b;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/etermax/gamescommon/dashboard/a/a/b",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->t:Lcom/etermax/preguntados/ui/dashboard/i;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/etermax/preguntados/ui/dashboard/e;->d:Lcom/etermax/gamescommon/login/datasource/a;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/etermax/preguntados/ui/dashboard/i;-><init>(Lcom/etermax/gamescommon/dashboard/a/c/c;Lcom/etermax/preguntados/ui/dashboard/j;Lcom/etermax/gamescommon/dashboard/a/c/b;Lcom/etermax/gamescommon/dashboard/a/c/d;Lcom/etermax/preguntados/ui/dashboard/h;Landroid/content/Context;Lcom/etermax/gamescommon/login/datasource/a;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->t:Lcom/etermax/preguntados/ui/dashboard/i;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->t:Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/i;->a(J)V

    .line 507
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->t:Lcom/etermax/preguntados/ui/dashboard/i;

    return-object v0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->unreadMessages:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 614
    if-gtz p1, :cond_0

    .line 615
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    :goto_0
    return-void

    .line 618
    :cond_0
    const/16 v1, 0x63

    if-le p1, v1, :cond_1

    .line 619
    const-string v1, "99"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :goto_1
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->k:Lcom/etermax/preguntados/g/a;

    sget v2, Lcom/etermax/preguntados/g/a;->x:I

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 624
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 621
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 311
    if-eqz p1, :cond_2

    .line 312
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isPendingMyApproval()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomOpponent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelCreator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelCreator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getExpiration_date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_3

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/ui/dashboard/f;->d(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 320
    :cond_2
    :goto_0
    return-void

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/ui/dashboard/f;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/InboxDTO;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/InboxDTO;->getTotal()I

    move-result v0

    move v1, v0

    .line 579
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/etermax/i;->inbox_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 580
    if-nez v1, :cond_1

    .line 581
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 577
    goto :goto_0

    .line 583
    :cond_1
    sget v0, Lcom/etermax/i;->inbox_counter:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected a(Lcom/etermax/tools/widget/a/g;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/tools/widget/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->g()Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 268
    :cond_0
    return-void
.end method

.method protected a(Lcom/etermax/tools/widget/a/i;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/tools/widget/a/i",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/f;->a(Lcom/etermax/preguntados/datasource/dto/LivesDTO;Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->F()Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    invoke-virtual {p1}, Lcom/etermax/tools/widget/a/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {v0, v2, v1}, Lcom/etermax/preguntados/ui/dashboard/f;->a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/tools/widget/pulltorefresh/c;)V
    .locals 1
    .parameter

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->g()Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->setLoadingAnimation(Lcom/etermax/tools/widget/pulltorefresh/c;)V

    .line 670
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/ui/dashboard/f;->a(Ljava/lang/Long;)V

    .line 383
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->h:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 205
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->h:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->s()V

    .line 206
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/dashboard/a;->a(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/DashboardDTO;)Z
    .locals 3
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->o:Lcom/etermax/gamescommon/version/VersionManager;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getVersionStatus()Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/version/VersionManager;->checkVersionUpdate(Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a_(Landroid/os/Bundle;)Z
    .locals 2
    .parameter

    .prologue
    .line 650
    const-string v0, "data.TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NEW_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 653
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->l()V

    .line 654
    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(J)V
    .locals 5
    .parameter

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->i()Ljava/util/List;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 301
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 306
    :goto_0
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 308
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected b(Lcom/etermax/preguntados/datasource/dto/DashboardDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/dashboard/a;->a(Lcom/etermax/gamescommon/dashboard/a/d;)V

    .line 332
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->coins_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->spins_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->secondary_nav_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->G()V

    .line 338
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInbox()Lcom/etermax/preguntados/datasource/dto/InboxDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->a(Lcom/etermax/preguntados/datasource/dto/InboxDTO;)V

    .line 339
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getUnreadConversations()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->a(I)V

    .line 341
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->r()V

    .line 343
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 631
    new-instance v0, Lcom/etermax/preguntados/a/c/a;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/c/a;-><init>()V

    .line 632
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/c/a;->a(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->g:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 634
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->q()V

    .line 405
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->l:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/preguntados/ui/dashboard/e$5;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/dashboard/e$5;-><init>(Lcom/etermax/preguntados/ui/dashboard/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 675
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/a;->d()V

    .line 676
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->o()Lcom/etermax/preguntados/ui/dashboard/f;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->e:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->l()I

    move-result v0

    .line 603
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->a(I)V

    .line 604
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->j()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 711
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/a;->k()Z

    move-result v0

    goto :goto_0
.end method

.method protected l()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->e()V

    .line 198
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->D()V

    .line 199
    return-void
.end method

.method protected m()Lcom/etermax/tools/widget/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/tools/widget/a/f",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->s:Lcom/etermax/tools/widget/a/f;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/etermax/gamescommon/dashboard/a/b/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->s:Lcom/etermax/tools/widget/a/f;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->s:Lcom/etermax/tools/widget/a/f;

    return-object v0
.end method

.method public o()Lcom/etermax/preguntados/ui/dashboard/f;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/e$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/e;)V

    return-object v0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->k:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->t:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 516
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->E()V

    .line 518
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/a;->onDestroy()V

    .line 193
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/a;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->i:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/notification/d;->b(Lcom/etermax/gamescommon/notification/b;)V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/a;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->i:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/notification/d;->a(Lcom/etermax/gamescommon/notification/b;)V

    .line 169
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->l()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->f:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/c;->g()V

    .line 174
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/a;->onStart()V

    .line 159
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->e:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 160
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->e:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/e;)V

    .line 161
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->a(Lcom/etermax/tools/widget/pulltorefresh/c;)V

    .line 162
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/a;->onStop()V

    .line 185
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->e:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 186
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->e:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/e;)V

    .line 187
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->I()V

    .line 188
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->dashboard_header_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/e$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/e$4;-><init>(Lcom/etermax/preguntados/ui/dashboard/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 356
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 408
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/e$6;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->j:Lcom/etermax/tools/social/a/b;

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/dashboard/e$6;-><init>(Lcom/etermax/preguntados/ui/dashboard/e;Lcom/etermax/tools/social/a/b;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/e$6;->a(Ljava/lang/Object;)Z

    .line 420
    return-void
.end method

.method public r()V
    .locals 4

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "launch_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    const-string v1, "launch_data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "launch_data"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    const-string v0, "facebook"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->g:Lcom/etermax/tools/f/a;

    new-instance v2, Lcom/etermax/gamescommon/b/ag;

    invoke-direct {v2}, Lcom/etermax/gamescommon/b/ag;-><init>()V

    invoke-virtual {v1, v2}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 462
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->j:Lcom/etermax/tools/social/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 465
    :cond_0
    return-void
.end method

.method public s()V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->k:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->z:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 471
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/f;->a(Lcom/etermax/preguntados/datasource/dto/LivesDTO;Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;)V

    .line 473
    const-string v0, "play"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->b(Ljava/lang/String;)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->t()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/f;->a(II)V

    goto :goto_0
.end method

.method public t()V
    .locals 3

    .prologue
    .line 482
    sget v0, Lcom/etermax/o;->dialog_remove_games:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/dashboard/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 483
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 484
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "delete_games_confirmation"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public u()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->isUnlimited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const-string v0, "stats_bar"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->b(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v0

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/f;->a(Lcom/etermax/preguntados/datasource/dto/LivesDTO;Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/f;->b(Lcom/etermax/preguntados/datasource/dto/LivesDTO;Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;)V

    goto :goto_0
.end method

.method public v()V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->k:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->B:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 567
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v1

    const-string v2, "dashboard_header"

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->startActivity(Landroid/content/Intent;)V

    .line 568
    return-void
.end method

.method public w()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->k:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->B:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 573
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v1

    const-string v2, "dashboard_header"

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/e;->startActivity(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->z()V

    .line 591
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->A()V

    .line 596
    return-void
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->j()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelGamesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
