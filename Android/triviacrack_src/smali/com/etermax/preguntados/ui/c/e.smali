.class public final enum Lcom/etermax/preguntados/ui/c/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/ui/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/ui/c/e;

.field public static final enum b:Lcom/etermax/preguntados/ui/c/e;

.field public static final enum c:Lcom/etermax/preguntados/ui/c/e;

.field private static final synthetic p:[Lcom/etermax/preguntados/ui/c/e;


# instance fields
.field private d:Lcom/etermax/gamescommon/promotion/Promotion;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 10
    new-instance v0, Lcom/etermax/preguntados/ui/c/e;

    const-string v1, "LIVES_EXTENDER_1"

    const/4 v2, 0x0

    sget-object v3, Lcom/etermax/gamescommon/promotion/Promotion;->LIVES_EXTENDER_1:Lcom/etermax/gamescommon/promotion/Promotion;

    sget v4, Lcom/etermax/f;->redLight:I

    sget v5, Lcom/etermax/h;->live_infinite_dashboard:I

    sget v6, Lcom/etermax/o;->super_promo:I

    sget v7, Lcom/etermax/o;->extend_limit_lives:I

    sget v8, Lcom/etermax/o;->extend_lives:I

    sget v9, Lcom/etermax/h;->live_infinite_pop_up:I

    sget v10, Lcom/etermax/o;->endless_lives:I

    sget v11, Lcom/etermax/o;->endless_lives_txt:I

    sget v12, Lcom/etermax/h;->live_pop_up:I

    sget v13, Lcom/etermax/o;->extend_5_lives:I

    sget v14, Lcom/etermax/o;->extend_5_lives_txt:I

    invoke-direct/range {v0 .. v14}, Lcom/etermax/preguntados/ui/c/e;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/promotion/Promotion;IIIIIIIIIII)V

    sput-object v0, Lcom/etermax/preguntados/ui/c/e;->a:Lcom/etermax/preguntados/ui/c/e;

    .line 11
    new-instance v0, Lcom/etermax/preguntados/ui/c/e;

    const-string v1, "PROMO_COINS"

    const/4 v2, 0x1

    sget-object v3, Lcom/etermax/gamescommon/promotion/Promotion;->PROMO_COINS:Lcom/etermax/gamescommon/promotion/Promotion;

    sget v4, Lcom/etermax/f;->pink:I

    sget v5, Lcom/etermax/h;->coins_promo_dashboard:I

    sget v6, Lcom/etermax/o;->super_promo:I

    sget v7, Lcom/etermax/o;->get_coins_deal:I

    sget v8, Lcom/etermax/o;->get_more_coins:I

    sget v9, Lcom/etermax/h;->coins_promo_dashboard:I

    sget v10, Lcom/etermax/o;->promo1_coins:I

    sget v11, Lcom/etermax/o;->promo1_coins_txt:I

    sget v12, Lcom/etermax/h;->coins_pop_up:I

    sget v13, Lcom/etermax/o;->promo2_coins:I

    sget v14, Lcom/etermax/o;->promo2_coins_txt:I

    invoke-direct/range {v0 .. v14}, Lcom/etermax/preguntados/ui/c/e;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/promotion/Promotion;IIIIIIIIIII)V

    sput-object v0, Lcom/etermax/preguntados/ui/c/e;->b:Lcom/etermax/preguntados/ui/c/e;

    .line 12
    new-instance v0, Lcom/etermax/preguntados/ui/c/e;

    const-string v1, "PROMO_SPINS"

    const/4 v2, 0x2

    sget-object v3, Lcom/etermax/gamescommon/promotion/Promotion;->PROMO_SPINS:Lcom/etermax/gamescommon/promotion/Promotion;

    sget v4, Lcom/etermax/f;->violetLight:I

    sget v5, Lcom/etermax/h;->spin_promo_dashboard:I

    sget v6, Lcom/etermax/o;->super_promo:I

    sget v7, Lcom/etermax/o;->get_spins_deal:I

    sget v8, Lcom/etermax/o;->get_more_spins:I

    sget v9, Lcom/etermax/h;->spin_promo_dashboard:I

    sget v10, Lcom/etermax/o;->promo1_spins:I

    sget v11, Lcom/etermax/o;->promo1_spins_txt:I

    sget v12, Lcom/etermax/h;->spin_pop_up:I

    sget v13, Lcom/etermax/o;->promo2_spins:I

    sget v14, Lcom/etermax/o;->promo2_spins_txt:I

    invoke-direct/range {v0 .. v14}, Lcom/etermax/preguntados/ui/c/e;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/promotion/Promotion;IIIIIIIIIII)V

    sput-object v0, Lcom/etermax/preguntados/ui/c/e;->c:Lcom/etermax/preguntados/ui/c/e;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/preguntados/ui/c/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/etermax/preguntados/ui/c/e;->a:Lcom/etermax/preguntados/ui/c/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/etermax/preguntados/ui/c/e;->b:Lcom/etermax/preguntados/ui/c/e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/etermax/preguntados/ui/c/e;->c:Lcom/etermax/preguntados/ui/c/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/c/e;->p:[Lcom/etermax/preguntados/ui/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/etermax/gamescommon/promotion/Promotion;IIIIIIIIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/promotion/Promotion;",
            "IIIIIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/etermax/preguntados/ui/c/e;->d:Lcom/etermax/gamescommon/promotion/Promotion;

    .line 29
    iput p4, p0, Lcom/etermax/preguntados/ui/c/e;->e:I

    .line 30
    iput p5, p0, Lcom/etermax/preguntados/ui/c/e;->f:I

    .line 31
    iput p6, p0, Lcom/etermax/preguntados/ui/c/e;->g:I

    .line 32
    iput p7, p0, Lcom/etermax/preguntados/ui/c/e;->h:I

    .line 33
    iput p8, p0, Lcom/etermax/preguntados/ui/c/e;->i:I

    .line 34
    iput p9, p0, Lcom/etermax/preguntados/ui/c/e;->j:I

    .line 35
    iput p10, p0, Lcom/etermax/preguntados/ui/c/e;->k:I

    .line 36
    iput p11, p0, Lcom/etermax/preguntados/ui/c/e;->l:I

    .line 37
    iput p12, p0, Lcom/etermax/preguntados/ui/c/e;->m:I

    .line 38
    iput p13, p0, Lcom/etermax/preguntados/ui/c/e;->n:I

    .line 39
    iput p14, p0, Lcom/etermax/preguntados/ui/c/e;->o:I

    .line 40
    return-void
.end method

.method public static a(Lcom/etermax/gamescommon/promotion/Promotion;)Lcom/etermax/preguntados/ui/c/e;
    .locals 6
    .parameter

    .prologue
    .line 91
    invoke-static {}, Lcom/etermax/preguntados/ui/c/e;->values()[Lcom/etermax/preguntados/ui/c/e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 92
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/c/e;->a()Lcom/etermax/gamescommon/promotion/Promotion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/gamescommon/promotion/Promotion;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/Promotion;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 96
    :goto_1
    return-object v0

    .line 91
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/etermax/preguntados/ui/c/e;->l()Lcom/etermax/preguntados/ui/c/e;

    move-result-object v0

    goto :goto_1
.end method

.method private static l()Lcom/etermax/preguntados/ui/c/e;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/etermax/preguntados/ui/c/e;->a:Lcom/etermax/preguntados/ui/c/e;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/ui/c/e;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/etermax/preguntados/ui/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/c/e;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/ui/c/e;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/etermax/preguntados/ui/c/e;->p:[Lcom/etermax/preguntados/ui/c/e;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/ui/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/ui/c/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/c/e;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public a()Lcom/etermax/gamescommon/promotion/Promotion;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/e;->d:Lcom/etermax/gamescommon/promotion/Promotion;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->i:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->m:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->n:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/etermax/preguntados/ui/c/e;->o:I

    return v0
.end method
