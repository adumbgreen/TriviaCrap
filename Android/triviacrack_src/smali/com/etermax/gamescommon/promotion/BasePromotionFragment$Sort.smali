.class public final enum Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

.field public static final enum ASCENDING:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

.field public static final enum DESCENDING:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

.field public static final enum NONE:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->NONE:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    .line 47
    new-instance v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    const-string v1, "ASCENDING"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->ASCENDING:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    .line 48
    new-instance v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    const-string v1, "DESCENDING"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->DESCENDING:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    sget-object v1, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->NONE:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->ASCENDING:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->DESCENDING:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->$VALUES:[Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->$VALUES:[Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    return-object v0
.end method
