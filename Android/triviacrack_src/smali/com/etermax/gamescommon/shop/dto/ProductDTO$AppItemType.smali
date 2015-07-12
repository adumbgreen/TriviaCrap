.class public final enum Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

.field public static final enum EXTRA_SHOT:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

.field public static final enum LIFE:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

.field public static final enum LIVES_EXTENDER:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

.field public static final enum PROMO_COINS:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

.field public static final enum PROMO_SPINS:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    const-string v1, "LIFE"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->LIFE:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    const-string v1, "EXTRA_SHOT"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->EXTRA_SHOT:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    const-string v1, "LIVES_EXTENDER"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->LIVES_EXTENDER:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    const-string v1, "PROMO_COINS"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->PROMO_COINS:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    const-string v1, "PROMO_SPINS"

    invoke-direct {v0, v1, v6}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->PROMO_SPINS:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    sget-object v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->LIFE:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->EXTRA_SHOT:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->LIVES_EXTENDER:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->PROMO_COINS:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->PROMO_SPINS:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->$VALUES:[Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;
    .locals 1
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->$VALUES:[Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    return-object v0
.end method
