.class public final enum Lcom/facebook/ads/AdSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/AdSize;

.field public static final enum BANNER_320_50:Lcom/facebook/ads/AdSize;

.field public static final enum BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

.field public static final enum BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

.field public static final enum INTERSTITIAL:Lcom/facebook/ads/AdSize;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "BANNER_320_50"

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    .line 31
    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v6, v4, v4}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    .line 36
    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "BANNER_HEIGHT_50"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    .line 41
    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "BANNER_HEIGHT_90"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v8, v5, v2}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/ads/AdSize;

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    aput-object v1, v0, v8

    sput-object v0, Lcom/facebook/ads/AdSize;->$VALUES:[Lcom/facebook/ads/AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/facebook/ads/AdSize;->width:I

    .line 48
    iput p4, p0, Lcom/facebook/ads/AdSize;->height:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdSize;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/facebook/ads/AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdSize;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AdSize;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/ads/AdSize;->$VALUES:[Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/ads/AdSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/facebook/ads/AdSize;->width:I

    return v0
.end method
