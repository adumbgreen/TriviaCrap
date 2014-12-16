.class public final enum Lcom/lifestreet/android/lsmsdk/ads/AdSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/ads/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/ads/AdSize;

.field public static final enum SIZE_1024x768:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

.field public static final enum SIZE_300x250:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

.field public static final enum SIZE_320x480:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

.field public static final enum SIZE_320x50:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

.field public static final enum SIZE_728x90:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

.field public static final enum SIZE_768x1024:Lcom/lifestreet/android/lsmsdk/ads/AdSize;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    const-string v1, "SIZE_1024x768"

    const/16 v2, 0x400

    const/16 v3, 0x300

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_1024x768:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 9
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    const-string v1, "SIZE_768x1024"

    const/16 v2, 0x300

    const/16 v3, 0x400

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_768x1024:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 10
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    const-string v1, "SIZE_728x90"

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_728x90:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 11
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    const-string v1, "SIZE_320x480"

    const/16 v2, 0x140

    const/16 v3, 0x1e0

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x480:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 12
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    const-string v1, "SIZE_300x250"

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_300x250:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 13
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    const-string v1, "SIZE_320x50"

    const/4 v2, 0x5

    const/16 v3, 0x140

    const/16 v4, 0x32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x50:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_1024x768:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_768x1024:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_728x90:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x480:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    aput-object v1, v0, v8

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_300x250:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x50:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->$VALUES:[Lcom/lifestreet/android/lsmsdk/ads/AdSize;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->mWidth:I

    .line 20
    iput p4, p0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->mHeight:I

    .line 21
    return-void
.end method

.method public static findAdSizeThatFits(II)Lcom/lifestreet/android/lsmsdk/ads/AdSize;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x50:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 34
    invoke-static {}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->values()[Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 35
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v5

    if-lt p0, v5, :cond_0

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v5

    if-lt p1, v5, :cond_0

    .line 41
    :goto_1
    return-object v0

    .line 34
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/ads/AdSize;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/ads/AdSize;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->$VALUES:[Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/ads/AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->mWidth:I

    return v0
.end method
