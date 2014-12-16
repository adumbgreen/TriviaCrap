.class public final enum Lcom/lifestreet/android/lsmsdk/AdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/AdType;

.field public static final enum AUDIO:Lcom/lifestreet/android/lsmsdk/AdType;

.field public static final enum BANNER:Lcom/lifestreet/android/lsmsdk/AdType;

.field public static final DEFAULT:Lcom/lifestreet/android/lsmsdk/AdType;

.field public static final enum INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdType;

.field public static final enum VIDEO:Lcom/lifestreet/android/lsmsdk/AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdType;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->BANNER:Lcom/lifestreet/android/lsmsdk/AdType;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/lifestreet/android/lsmsdk/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdType;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/lifestreet/android/lsmsdk/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->VIDEO:Lcom/lifestreet/android/lsmsdk/AdType;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdType;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v5}, Lcom/lifestreet/android/lsmsdk/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->AUDIO:Lcom/lifestreet/android/lsmsdk/AdType;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/AdType;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdType;->BANNER:Lcom/lifestreet/android/lsmsdk/AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdType;->VIDEO:Lcom/lifestreet/android/lsmsdk/AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdType;->AUDIO:Lcom/lifestreet/android/lsmsdk/AdType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/AdType;

    .line 10
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->BANNER:Lcom/lifestreet/android/lsmsdk/AdType;

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->DEFAULT:Lcom/lifestreet/android/lsmsdk/AdType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static doesNotExist(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 15
    invoke-static {}, Lcom/lifestreet/android/lsmsdk/AdType;->values()[Lcom/lifestreet/android/lsmsdk/AdType;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 16
    invoke-virtual {v5}, Lcom/lifestreet/android/lsmsdk/AdType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 22
    :goto_1
    return v0

    .line 15
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdType;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/lifestreet/android/lsmsdk/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/AdType;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/AdType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/AdType;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/AdType;

    return-object v0
.end method
