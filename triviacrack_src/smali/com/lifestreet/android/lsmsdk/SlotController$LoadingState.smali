.class public final enum Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

.field public static final enum LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

.field public static final enum LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

.field public static final enum NOT_LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

.field public static final enum SHOWN:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    const-string v1, "NOT_LOADED"

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->NOT_LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    const-string v1, "SHOWN"

    invoke-direct {v0, v1, v5}, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->SHOWN:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->NOT_LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->SHOWN:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->$VALUES:[Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;
    .locals 1
    .parameter

    .prologue
    .line 72
    const-class v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->$VALUES:[Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    return-object v0
.end method
