.class public final enum Lcom/etermax/gamescommon/promotion/Promotion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/promotion/Promotion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/promotion/Promotion;

.field public static final enum LIVES_EXTENDER_1:Lcom/etermax/gamescommon/promotion/Promotion;

.field public static final enum PROMO_COINS:Lcom/etermax/gamescommon/promotion/Promotion;

.field public static final enum PROMO_SPINS:Lcom/etermax/gamescommon/promotion/Promotion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/gamescommon/promotion/Promotion;

    const-string v1, "LIVES_EXTENDER_1"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/promotion/Promotion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/promotion/Promotion;->LIVES_EXTENDER_1:Lcom/etermax/gamescommon/promotion/Promotion;

    .line 5
    new-instance v0, Lcom/etermax/gamescommon/promotion/Promotion;

    const-string v1, "PROMO_COINS"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/promotion/Promotion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/promotion/Promotion;->PROMO_COINS:Lcom/etermax/gamescommon/promotion/Promotion;

    .line 6
    new-instance v0, Lcom/etermax/gamescommon/promotion/Promotion;

    const-string v1, "PROMO_SPINS"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/promotion/Promotion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/promotion/Promotion;->PROMO_SPINS:Lcom/etermax/gamescommon/promotion/Promotion;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/promotion/Promotion;

    sget-object v1, Lcom/etermax/gamescommon/promotion/Promotion;->LIVES_EXTENDER_1:Lcom/etermax/gamescommon/promotion/Promotion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/promotion/Promotion;->PROMO_COINS:Lcom/etermax/gamescommon/promotion/Promotion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/promotion/Promotion;->PROMO_SPINS:Lcom/etermax/gamescommon/promotion/Promotion;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/promotion/Promotion;->$VALUES:[Lcom/etermax/gamescommon/promotion/Promotion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/promotion/Promotion;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/gamescommon/promotion/Promotion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/promotion/Promotion;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/promotion/Promotion;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/gamescommon/promotion/Promotion;->$VALUES:[Lcom/etermax/gamescommon/promotion/Promotion;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/promotion/Promotion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/promotion/Promotion;

    return-object v0
.end method
