.class public final enum Lcom/lifestreet/android/lsmsdk/SlotType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/SlotType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/SlotType;

.field public static final enum INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/SlotType;

.field public static final enum NORMAL:Lcom/lifestreet/android/lsmsdk/SlotType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotType;->NORMAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    .line 14
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/lifestreet/android/lsmsdk/SlotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/SlotType;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotType;->NORMAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/SlotType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/SlotType;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/lifestreet/android/lsmsdk/SlotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/SlotType;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/SlotType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/SlotType;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/SlotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/SlotType;

    return-object v0
.end method
