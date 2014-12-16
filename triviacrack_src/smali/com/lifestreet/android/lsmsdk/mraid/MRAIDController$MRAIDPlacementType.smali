.class public final enum Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

.field public static final enum INLINE:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

.field public static final enum INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INLINE:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INLINE:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;
    .locals 1
    .parameter

    .prologue
    .line 82
    const-class v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    return-object v0
.end method
