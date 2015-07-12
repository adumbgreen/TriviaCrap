.class synthetic Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 266
    invoke-static {}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->values()[Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$3;->$SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType:[I

    :try_start_0
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$3;->$SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType:[I

    sget-object v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INLINE:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$3;->$SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType:[I

    sget-object v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
