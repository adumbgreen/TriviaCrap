.class public final enum Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/ClientMetadata$MoPubNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field private static final synthetic b:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 79
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "ETHERNET"

    invoke-direct {v0, v1, v3, v3}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 80
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4, v4}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 81
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v5, v5}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    sget-object v1, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->b:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->a:I

    .line 87
    return-void
.end method

.method static synthetic a(I)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->b(I)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 1
    .parameter

    .prologue
    .line 95
    packed-switch p0, :pswitch_data_0

    .line 107
    :pswitch_0
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    :goto_0
    return-object v0

    .line 97
    :pswitch_1
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    goto :goto_0

    .line 99
    :pswitch_2
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    goto :goto_0

    .line 105
    :pswitch_3
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 1
    .parameter

    .prologue
    .line 77
    const-class v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->b:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    invoke-virtual {v0}, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
