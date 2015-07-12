.class public Lcom/etermax/preguntados/datasource/d;
.super Lcom/etermax/gamescommon/d;
.source "SourceFile"


# instance fields
.field protected c:Lcom/etermax/preguntados/datasource/b;

.field protected d:Lcom/etermax/tools/a/a/j;

.field e:Lcom/etermax/gamescommon/resources/a;

.field f:Lcom/etermax/gamescommon/datasource/j;

.field g:Lcom/etermax/tools/social/a/b;

.field h:Lcom/etermax/gamescommon/promotion/PromotionsManager;

.field i:Lcom/etermax/preguntados/e/c;

.field j:Lcom/etermax/gamescommon/e/a;

.field protected k:Landroid/content/SharedPreferences;

.field protected l:Landroid/os/Handler;

.field protected m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

.field protected n:I

.field protected o:I

.field protected p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

.field protected q:Z

.field protected r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 80
    invoke-direct {p0}, Lcom/etermax/gamescommon/d;-><init>()V

    .line 95
    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    .line 96
    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/datasource/d;->q:Z

    .line 129
    new-instance v0, Lcom/etermax/preguntados/datasource/d$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$1;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/d;->r:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic B(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic C(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic D(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic E(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic F(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method private I()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".DATASOURCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method private J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "com.etermax.preguntados.LIVES"

    const-class v2, Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    return-object v0
.end method

.method private K()J
    .locals 4

    .prologue
    .line 565
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    const-string v1, "DASHBOARD_RECEIVED_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private L()J
    .locals 4

    .prologue
    .line 569
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    const-string v1, "NEXT_INCREMENT_INTERVAL"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/preguntados/datasource/dto/LivesDTO;
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic g(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic h(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic i(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic j(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic k(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic l(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic m(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic n(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic o(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic p(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic q(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic r(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic s(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic t(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic u(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic v(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic w(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic x(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic y(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic z(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;
    .locals 1

    .prologue
    .line 666
    new-instance v0, Lcom/etermax/preguntados/datasource/d$22;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$22;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;

    return-object v0
.end method

.method public B()Z
    .locals 2

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->isUnlimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    :cond_0
    const/4 v0, 0x1

    .line 698
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Lcom/etermax/preguntados/datasource/dto/RankingsDTO;
    .locals 1

    .prologue
    .line 735
    new-instance v0, Lcom/etermax/preguntados/datasource/d$27;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$27;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    return-object v0
.end method

.method public D()Lcom/etermax/preguntados/datasource/dto/UserRankDTO;
    .locals 1

    .prologue
    .line 744
    new-instance v0, Lcom/etermax/preguntados/datasource/d$28;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$28;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    return-object v0
.end method

.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 578
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    .line 579
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    return v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/CodeDTO;)Lcom/etermax/preguntados/datasource/dto/CouponDTO;
    .locals 1
    .parameter

    .prologue
    .line 457
    new-instance v0, Lcom/etermax/preguntados/datasource/d$10;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$10;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/CodeDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/CouponDTO;

    .line 464
    return-object v0
.end method

.method public a(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 1
    .parameter

    .prologue
    .line 292
    new-instance v0, Lcom/etermax/preguntados/datasource/d$31;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$31;-><init>(Lcom/etermax/preguntados/datasource/d;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 299
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 301
    return-object v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/AnswerListDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 360
    new-instance v0, Lcom/etermax/preguntados/datasource/d$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/etermax/preguntados/datasource/d$2;-><init>(Lcom/etermax/preguntados/datasource/d;JLcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 366
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->i:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v1}, Lcom/etermax/preguntados/e/c;->c()V

    .line 367
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->i:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 368
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 370
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 5
    .parameter

    .prologue
    .line 264
    new-instance v0, Lcom/etermax/preguntados/datasource/d$23;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$23;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 270
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->i:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 273
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getLives()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    .line 274
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getLives()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 275
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getLivesConfig()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;->getIncrement_interval()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->setNextIncrement(I)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getLives()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->setQuantity(I)V

    .line 278
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v2, "com.etermax.preguntados.LIVES"

    iget-object v3, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NEXT_INCREMENT_INTERVAL"

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DASHBOARD_RECEIVED_TIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v1

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getMax()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 282
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d;->r:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    :cond_1
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 288
    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 403
    new-instance v0, Lcom/etermax/preguntados/datasource/d$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$5;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/preguntados/datasource/dto/enums/Country;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 428
    new-instance v0, Lcom/etermax/preguntados/datasource/d$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$7;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    .locals 1
    .parameter

    .prologue
    .line 338
    new-instance v0, Lcom/etermax/preguntados/datasource/d$35;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$35;-><init>(Lcom/etermax/preguntados/datasource/d;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    return-object v0
.end method

.method public a(JI)Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 714
    new-instance v0, Lcom/etermax/preguntados/datasource/d$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/etermax/preguntados/datasource/d$25;-><init>(Lcom/etermax/preguntados/datasource/d;JI)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/etermax/preguntados/datasource/d$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$16;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/Map;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    new-instance v0, Lcom/etermax/preguntados/datasource/d$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/datasource/d$17;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public a(JILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    new-instance v0, Lcom/etermax/preguntados/datasource/d$26;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/datasource/d$26;-><init>(Lcom/etermax/preguntados/datasource/d;JILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 730
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 527
    new-instance v0, Lcom/etermax/preguntados/datasource/d$18;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$18;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 534
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->setGames(Ljava/util/List;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->setGames(Ljava/util/List;)V

    .line 247
    :cond_2
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 468
    new-instance v0, Lcom/etermax/preguntados/datasource/d$11;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$11;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 475
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 704
    new-instance v0, Lcom/etermax/preguntados/datasource/d$24;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$24;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 711
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 488
    new-instance v0, Lcom/etermax/preguntados/datasource/d$14;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$14;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 478
    new-instance v0, Lcom/etermax/preguntados/datasource/d$13;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$13;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 485
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 446
    new-instance v0, Lcom/etermax/preguntados/datasource/d$9;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$9;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 453
    return-void
.end method

.method public a(Lcom/etermax/tools/nationality/Nationality;)V
    .locals 2
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/datasource/a;->a(Lcom/etermax/tools/nationality/Nationality;)V

    .line 645
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->setHasConfirmedCountry(Z)V

    .line 646
    return-void
.end method

.method public b(I)I
    .locals 1
    .parameter

    .prologue
    .line 583
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    .line 584
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    return v0
.end method

.method public b(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 1
    .parameter

    .prologue
    .line 305
    new-instance v0, Lcom/etermax/preguntados/datasource/d$32;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$32;-><init>(Lcom/etermax/preguntados/datasource/d;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 312
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 314
    return-object v0
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/RoomDTO;
    .locals 1
    .parameter

    .prologue
    .line 754
    new-instance v0, Lcom/etermax/preguntados/datasource/d$29;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/datasource/d$29;-><init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    return-object v0
.end method

.method public c(I)I
    .locals 1
    .parameter

    .prologue
    .line 588
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    .line 589
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    return v0
.end method

.method public c(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 2
    .parameter

    .prologue
    .line 347
    new-instance v0, Lcom/etermax/preguntados/datasource/d$36;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$36;-><init>(Lcom/etermax/preguntados/datasource/d;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 353
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->i:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 356
    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->F()Lorg/b/e/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/datasource/b;->a(Lorg/b/e/a/k;)V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/d;->l:Landroid/os/Handler;

    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->s:Landroid/content/Context;

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->I()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    .line 112
    return-void
.end method

.method public d(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 2
    .parameter

    .prologue
    .line 374
    new-instance v0, Lcom/etermax/preguntados/datasource/d$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$3;-><init>(Lcom/etermax/preguntados/datasource/d;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 380
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->i:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 381
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 383
    return-object v0
.end method

.method protected d()Lcom/etermax/tools/a/b/a;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/etermax/preguntados/datasource/a/a;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/a/a;-><init>()V

    return-object v0
.end method

.method public e(J)Lcom/etermax/preguntados/datasource/dto/ProfileDTO;
    .locals 1
    .parameter

    .prologue
    .line 606
    new-instance v0, Lcom/etermax/preguntados/datasource/d$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$19;-><init>(Lcom/etermax/preguntados/datasource/d;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    .line 613
    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->d:Lcom/etermax/tools/a/a/j;

    invoke-virtual {v1}, Lcom/etermax/tools/a/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/datasource/b;->a(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public f(J)Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;
    .locals 1
    .parameter

    .prologue
    .line 617
    new-instance v0, Lcom/etermax/preguntados/datasource/d$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$20;-><init>(Lcom/etermax/preguntados/datasource/d;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;

    .line 624
    return-object v0
.end method

.method public f()Lcom/etermax/preguntados/datasource/dto/DashboardDTO;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iput-boolean v0, p0, Lcom/etermax/preguntados/datasource/d;->q:Z

    .line 148
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getAvailableLanguages()[Lcom/etermax/gamescommon/language/Language;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getRejectedQuestionsExpirationTime()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDashboardTTL()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelModeMinPlayers()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelModeMaxPlayers()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getShowQuestionsReloadSeconds()I

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    move v1, v0

    .line 160
    :goto_0
    new-instance v0, Lcom/etermax/preguntados/datasource/d$12;

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/datasource/d$12;-><init>(Lcom/etermax/preguntados/datasource/d;I)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    .line 168
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getTime()Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)V

    .line 171
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 172
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/etermax/preguntados/datasource/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->setGames(Ljava/util/List;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getCoins()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    .line 176
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getExtra_shots()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    .line 177
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "COINS"

    iget v3, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "EXTRA_SHOTS"

    iget v3, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getAppConfig()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getAppConfig()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getVersion()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 185
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getAppConfig()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v2, "com.etermax.preguntados.APP_CONFIG"

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    :goto_1
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->j:Lcom/etermax/gamescommon/e/a;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/e/a;->a(Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;)V

    .line 193
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getCurrentPromotion()Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;

    move-result-object v5

    .line 194
    if-eqz v5, :cond_6

    .line 195
    new-instance v0, Lcom/etermax/preguntados/ui/c/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;->getId()Lcom/etermax/gamescommon/promotion/Promotion;

    move-result-object v1

    invoke-virtual {v5}, Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;->getAppItemType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;->getRemainingTime()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/etermax/preguntados/ui/c/a;-><init>(Lcom/etermax/gamescommon/promotion/Promotion;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;JJ)V

    .line 196
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->h:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->setCurrentPromotion(Lcom/etermax/gamescommon/promotion/BasePromotion;)V

    .line 202
    :goto_2
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getCountry()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getCountry()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->a(Lcom/etermax/tools/nationality/Nationality;)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getShow()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 208
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "prefs_show_dto"

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getShow()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :goto_3
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getLives()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    .line 214
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "com.etermax.preguntados.LIVES"

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEXT_INCREMENT_INTERVAL"

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DASHBOARD_RECEIVED_TIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v0

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->r:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    return-object v0

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getVersion()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "com.etermax.preguntados.APP_CONFIG"

    const-class v2, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    goto/16 :goto_1

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->h:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->clearCurrentPromotion()V

    goto/16 :goto_2

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "prefs_show_dto"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public g(J)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    new-instance v0, Lcom/etermax/preguntados/datasource/d$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$21;-><init>(Lcom/etermax/preguntados/datasource/d;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 636
    return-object v0
.end method

.method public g()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 226
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/etermax/preguntados/datasource/d;->q:Z

    if-eq v1, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->K()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDashboardTTL()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(J)Lcom/etermax/preguntados/datasource/dto/RoomDTO;
    .locals 1
    .parameter

    .prologue
    .line 763
    new-instance v0, Lcom/etermax/preguntados/datasource/d$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/datasource/d$30;-><init>(Lcom/etermax/preguntados/datasource/d;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/datasource/d;->q:Z

    .line 233
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getGames()Ljava/util/List;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/etermax/preguntados/datasource/dto/ShowDTO;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getShow()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getShow()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "prefs_show_dto"

    const-class v2, Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/etermax/preguntados/datasource/d$33;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$33;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 325
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 326
    return-void
.end method

.method public l()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/etermax/preguntados/datasource/d$34;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$34;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;

    return-object v0
.end method

.method public m()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    .locals 4

    .prologue
    .line 387
    new-instance v0, Lcom/etermax/preguntados/datasource/d$4;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$4;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    .line 395
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 396
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 399
    :cond_0
    return-object v0
.end method

.method public n()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    .locals 4

    .prologue
    .line 412
    new-instance v0, Lcom/etermax/preguntados/datasource/d$6;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$6;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    .line 420
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 421
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 424
    :cond_0
    return-object v0
.end method

.method public o()Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/etermax/preguntados/datasource/d$8;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$8;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    return-object v0
.end method

.method public p()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;
    .locals 1

    .prologue
    .line 498
    new-instance v0, Lcom/etermax/preguntados/datasource/d$15;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/datasource/d$15;-><init>(Lcom/etermax/preguntados/datasource/d;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    return-object v0
.end method

.method public q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;
    .locals 6

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->L()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->K()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    sub-double/2addr v0, v2

    .line 538
    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;->J()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v2

    const-wide v3, 0x408f400000000000L

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->setNextIncrement(I)V

    .line 539
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->m:Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    return-object v0
.end method

.method public r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getLivesConfig()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->f:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "com.etermax.preguntados.APP_CONFIG"

    const-class v2, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    return-object v0
.end method

.method public t()I
    .locals 3

    .prologue
    .line 551
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    const-string v1, "COINS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    .line 554
    :cond_0
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->n:I

    return v0
.end method

.method public u()I
    .locals 3

    .prologue
    .line 593
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    const-string v1, "EXTRA_SHOTS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    .line 596
    :cond_0
    iget v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    return v0
.end method

.method public v()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/datasource/b;->a()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/etermax/preguntados/datasource/d;->o:I

    .line 641
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInactiveFriends()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInactiveFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 651
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->setInactiveFriends(Ljava/util/List;)V

    .line 653
    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->setNewAchievements(Z)V

    .line 657
    return-void
.end method

.method public z()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInbox()Lcom/etermax/preguntados/datasource/dto/InboxDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d;->p:Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInbox()Lcom/etermax/preguntados/datasource/dto/InboxDTO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/InboxDTO;->setNews(I)V

    .line 663
    :cond_0
    return-void
.end method
