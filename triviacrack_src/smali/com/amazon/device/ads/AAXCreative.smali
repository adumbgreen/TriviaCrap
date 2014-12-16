.class final enum Lcom/amazon/device/ads/AAXCreative;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/AAXCreative;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum HTML:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum MRAID1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum MRAID2:Lcom/amazon/device/ads/AAXCreative;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "HTML"

    const/16 v2, 0x3ef

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    .line 17
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "MRAID1"

    const/16 v2, 0x3f8

    invoke-direct {v0, v1, v5, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    .line 18
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "MRAID2"

    const/16 v2, 0x3f9

    invoke-direct {v0, v1, v6, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    .line 19
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "INTERSTITIAL"

    const/16 v2, 0x3f0

    invoke-direct {v0, v1, v7, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    .line 20
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_PLAY_AUDIO1"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v8, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    .line 21
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_PLAY_AUDIO2"

    const/4 v2, 0x5

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    .line 22
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_EXPAND1"

    const/4 v2, 0x6

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    .line 23
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_EXPAND2"

    const/4 v2, 0x7

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    .line 24
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_PLAY_VIDEO"

    const/16 v2, 0x8

    const/16 v3, 0x3f6

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    .line 14
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/amazon/device/ads/AAXCreative;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->$VALUES:[Lcom/amazon/device/ads/AAXCreative;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/amazon/device/ads/AAXCreative;->id:I

    .line 31
    return-void
.end method

.method public static getPrimaryCreativeType(I)Lcom/amazon/device/ads/AAXCreative;
    .locals 1
    .parameter

    .prologue
    .line 40
    sparse-switch p0, :sswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 43
    :sswitch_0
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 45
    :sswitch_1
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 47
    :sswitch_2
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 49
    :sswitch_3
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ef -> :sswitch_0
        0x3f0 -> :sswitch_3
        0x3f8 -> :sswitch_1
        0x3f9 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getSecondaryCreativeType(I)Lcom/amazon/device/ads/AAXCreative;
    .locals 1
    .parameter

    .prologue
    .line 57
    sparse-switch p0, :sswitch_data_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 60
    :sswitch_0
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 62
    :sswitch_1
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 64
    :sswitch_2
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 66
    :sswitch_3
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 68
    :sswitch_4
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_1
        0x3f6 -> :sswitch_4
    .end sparse-switch
.end method

.method static getTopCreative(Ljava/util/Set;)Lcom/amazon/device/ads/AAXCreative;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;)",
            "Lcom/amazon/device/ads/AAXCreative;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    .line 93
    :goto_0
    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 89
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AAXCreative;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/amazon/device/ads/AAXCreative;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AAXCreative;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/AAXCreative;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->$VALUES:[Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AAXCreative;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AAXCreative;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/amazon/device/ads/AAXCreative;->id:I

    return v0
.end method
