.class public abstract Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/question/d;
.implements Lcom/etermax/preguntados/ui/game/question/l;
.implements Lcom/etermax/preguntados/ui/withoutcoins/d;


# instance fields
.field private a:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

.field private b:Lcom/etermax/adsinterface/b;

.field protected c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field protected d:I

.field protected e:I

.field protected f:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

.field protected g:Lcom/etermax/preguntados/datasource/d;

.field protected h:Lcom/etermax/tools/f/a;

.field protected i:Lcom/etermax/gamescommon/login/datasource/a;

.field protected j:Lcom/etermax/preguntados/ui/game/a/a;

.field protected k:Lcom/etermax/gamescommon/datasource/j;

.field protected l:Lcom/etermax/preguntados/e/c;

.field protected m:Lcom/etermax/gamescommon/mediation/MediationManager;

.field protected n:Lcom/etermax/gamescommon/shop/c;

.field protected o:Lcom/etermax/preguntados/ui/withoutcoins/g;

.field p:Lcom/etermax/preguntados/ui/game/question/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    .line 341
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/a;

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/game/question/a;-><init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->p:Lcom/etermax/preguntados/ui/game/question/a;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;)Lcom/etermax/adsinterface/b;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 110
    sget-object v1, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$4;->a:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 118
    const/4 v1, 0x0

    .line 121
    :goto_0
    if-eqz v1, :cond_0

    .line 122
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/adsinterface/b;

    .line 124
    :cond_0
    return-object v0

    .line 112
    :pswitch_0
    sget v1, Lcom/etermax/k;->ad_place_interstitial_admob:I

    goto :goto_0

    .line 115
    :pswitch_1
    sget v1, Lcom/etermax/k;->ad_place_interstitial_mopub:I

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(IJLjava/util/Date;Ljava/util/Date;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    const-string v0, "normal"

    .line 237
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomGame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v0, "aleatorio"

    .line 241
    :cond_0
    new-instance v1, Lcom/etermax/preguntados/a/c;

    invoke-direct {v1}, Lcom/etermax/preguntados/a/c;-><init>()V

    .line 242
    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/a/c;->a(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, p1}, Lcom/etermax/preguntados/a/c;->a(I)V

    .line 244
    invoke-virtual {v1, p2, p3}, Lcom/etermax/preguntados/a/c;->a(J)V

    .line 245
    invoke-virtual {p4, p5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "time_expired"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/a/c;->b(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p6}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const-string v0, "winner_creator"

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/a/c;->c(Ljava/lang/String;)V

    .line 251
    :goto_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 252
    return-void

    .line 245
    :cond_1
    const-string v0, "all_replied"

    goto :goto_0

    .line 249
    :cond_2
    const-string v0, "winner_other"

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/a/c;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(JJLcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    const-string v0, "normal"

    .line 220
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomGame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v0, "aleatorio"

    .line 223
    :cond_0
    new-instance v1, Lcom/etermax/preguntados/a/e;

    invoke-direct {v1}, Lcom/etermax/preguntados/a/e;-><init>()V

    .line 224
    invoke-virtual {v1, p1, p2}, Lcom/etermax/preguntados/a/e;->a(J)V

    .line 225
    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/a/e;->b(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p5}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p3

    if-nez v0, :cond_2

    const-string v0, "creator"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/a/e;->a(Ljava/lang/String;)V

    .line 227
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 228
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getCorrectAnswers()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/a/e;->a(I)V

    goto :goto_1

    .line 226
    :cond_2
    const-string v0, "other"

    goto :goto_0

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 233
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;IJLjava/util/Date;Ljava/util/Date;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(IJLjava/util/Date;Ljava/util/Date;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;JJLcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(JJLcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Ljava/lang/String;Ljava/lang/Integer;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Ljava/lang/String;Ljava/lang/Integer;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    new-instance v0, Lcom/etermax/preguntados/a/j;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/j;-><init>()V

    .line 397
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/Integer;)V

    .line 399
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/Long;)V

    .line 401
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 403
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    const-string v0, "interstitial"

    .line 98
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v1

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getWorldCupEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "interstitial_duel_wc"

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    const-string v0, "interstitial_duel"

    goto :goto_0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I
    .locals 3
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->g:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getPowerUps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;

    .line 386
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->getName()Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->getCost()I

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    .line 377
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getType()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 381
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;Z)V

    .line 154
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->l:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/c;->b()V

    .line 158
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;-><init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;Z)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->a(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    instance-of v1, v1, Lcom/etermax/adsinterface/dummy/AdDummyInterstitialView;

    if-nez v1, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 309
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->p:Lcom/etermax/preguntados/ui/game/question/a;

    invoke-virtual {v1, p1}, Lcom/etermax/preguntados/ui/game/question/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 310
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    new-instance v2, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$3;-><init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    invoke-interface {v1, v2}, Lcom/etermax/adsinterface/b;->a(Lcom/etermax/adsinterface/d;)V

    .line 318
    :cond_0
    if-nez v0, :cond_1

    .line 319
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 321
    :cond_1
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLanguageCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/gamescommon/language/Language;)Landroid/content/Intent;

    move-result-object v0

    .line 285
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/c;->a(I)V

    .line 130
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->z()V

    .line 131
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->y()V

    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 133
    return-void
.end method

.method protected a(JLjava/lang/Exception;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 255
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;-><init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Ljava/lang/String;JLjava/lang/Exception;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 325
    return-void
.end method

.method public c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 330
    invoke-static {p0, p1, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/content/Intent;

    move-result-object v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    :cond_1
    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->d:I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->e:I

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->finish()V

    .line 338
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;)Lcom/etermax/adsinterface/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    .line 139
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->p:Lcom/etermax/preguntados/ui/game/question/a;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/etermax/adsinterface/b;->a(Landroid/app/Activity;Lcom/etermax/adsinterface/c;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->o:Lcom/etermax/preguntados/ui/withoutcoins/g;

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/withoutcoins/g;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 428
    return-void
.end method

.method public h_()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_1

    .line 291
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 293
    instance-of v1, v0, Lcom/etermax/preguntados/ui/game/question/k;

    if-eqz v1, :cond_0

    .line 294
    check-cast v0, Lcom/etermax/preguntados/ui/game/question/k;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/k;->h()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->n:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/etermax/gamescommon/shop/c;->a(IILandroid/content/Intent;)V

    .line 299
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->v()V

    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->m:Lcom/etermax/gamescommon/mediation/MediationManager;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/mediation/MediationManager;->getMediationForAdUnitType(Ljava/lang/String;)Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b:Lcom/etermax/adsinterface/b;

    invoke-interface {v0}, Lcom/etermax/adsinterface/b;->b()V

    .line 150
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->n:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 415
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;)V

    .line 416
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 417
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->n:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 408
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;)V

    .line 409
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 410
    return-void
.end method
