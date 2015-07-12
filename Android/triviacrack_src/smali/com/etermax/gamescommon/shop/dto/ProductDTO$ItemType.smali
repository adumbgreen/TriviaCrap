.class public final enum Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

.field public static final enum APP_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

.field public static final enum COIN_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    const-string v1, "COIN_ITEM"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->COIN_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    const-string v1, "APP_ITEM"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->APP_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    sget-object v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->COIN_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->APP_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->$VALUES:[Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->$VALUES:[Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    return-object v0
.end method
