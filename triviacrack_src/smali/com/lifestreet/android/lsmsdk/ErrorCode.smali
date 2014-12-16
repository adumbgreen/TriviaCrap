.class public final enum Lcom/lifestreet/android/lsmsdk/ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum ADVIEW_TRANSITION_FAILED:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum BAD_STATUS_CODE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum EMPTY_NETWORKS_ARRAY:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum EMPTY_RESPONSE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum LOAD_NEXT_ADAPTER_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum LOAD_SLOT_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum MISSING_NETWORK_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum NETWORK_INFO_INVALID:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum NO_SLOT_TAG:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum PAUSE_AD_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum RESUME_AD_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum UNHANDLED_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum UNKNOWN_AD_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum UNKNOWN_CONTENT_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field public static final enum UNKNOWN_NETWORK_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;


# instance fields
.field private final mIntCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 9
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "UNHANDLED_EXCEPTION"

    invoke-direct {v0, v1, v5, v5}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNHANDLED_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 10
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION"

    invoke-direct {v0, v1, v6, v6}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 11
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "LOAD_NEXT_ADAPTER_EXCEPTION"

    invoke-direct {v0, v1, v7, v7}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_NEXT_ADAPTER_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 12
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "LOAD_SLOT_EXCEPTION"

    invoke-direct {v0, v1, v8, v8}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_SLOT_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 13
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "MISSING_NETWORK_TYPE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->MISSING_NETWORK_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 14
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "ADVIEW_TRANSITION_FAILED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->ADVIEW_TRANSITION_FAILED:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 15
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "BAD_STATUS_CODE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->BAD_STATUS_CODE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 16
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "EMPTY_NETWORKS_ARRAY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_NETWORKS_ARRAY:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 17
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "EMPTY_RESPONSE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_RESPONSE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 18
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "UNKNOWN_NETWORK_TYPE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_NETWORK_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 19
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "NETWORK_INFO_INVALID"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NETWORK_INFO_INVALID:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 20
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "UNKNOWN_AD_TYPE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_AD_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 21
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "UNKNOWN_CONTENT_TYPE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_CONTENT_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 22
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "NO_SLOT_TAG"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_SLOT_TAG:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 23
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "RESUME_AD_EXCEPTION"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->RESUME_AD_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 24
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "PAUSE_AD_EXCEPTION"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->PAUSE_AD_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 7
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/ErrorCode;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNHANDLED_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_NEXT_ADAPTER_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_SLOT_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->MISSING_NETWORK_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->ADVIEW_TRANSITION_FAILED:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->BAD_STATUS_CODE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_NETWORKS_ARRAY:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_RESPONSE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_NETWORK_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NETWORK_INFO_INVALID:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_AD_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_CONTENT_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_SLOT_TAG:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->RESUME_AD_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->PAUSE_AD_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->$VALUES:[Lcom/lifestreet/android/lsmsdk/ErrorCode;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->mIntCode:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/ErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/ErrorCode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->$VALUES:[Lcom/lifestreet/android/lsmsdk/ErrorCode;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->mIntCode:I

    return v0
.end method
