.class public final enum Lcom/lifestreet/android/lsmsdk/TransitionAnimation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/TransitionAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

.field public static final enum CURLDOWN:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

.field public static final enum CURLUP:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

.field public static final DEFAULT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

.field public static final enum FLIPFROMLEFT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

.field public static final enum FLIPFROMRIGHT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

.field public static final enum NONE:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

.field public static final enum RANDOM:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->NONE:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    const-string v1, "RANDOM"

    invoke-direct {v0, v1, v4}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->RANDOM:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    const-string v1, "FLIPFROMLEFT"

    invoke-direct {v0, v1, v5}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->FLIPFROMLEFT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    const-string v1, "FLIPFROMRIGHT"

    invoke-direct {v0, v1, v6}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->FLIPFROMRIGHT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    const-string v1, "CURLUP"

    invoke-direct {v0, v1, v7}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->CURLUP:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    const-string v1, "CURLDOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->CURLDOWN:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->NONE:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->RANDOM:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->FLIPFROMLEFT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->FLIPFROMRIGHT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->CURLUP:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->CURLDOWN:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->$VALUES:[Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    .line 10
    sget-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->NONE:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    sput-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->DEFAULT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

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
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-static {}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->values()[Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 14
    invoke-virtual {v4}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    :goto_1
    return v0

    .line 13
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/TransitionAnimation;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/TransitionAnimation;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->$VALUES:[Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    return-object v0
.end method
