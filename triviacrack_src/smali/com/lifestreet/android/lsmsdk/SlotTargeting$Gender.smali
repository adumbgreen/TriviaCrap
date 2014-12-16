.class public final enum Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

.field public static final enum FEMALE:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

.field public static final enum MALE:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

.field public static final enum UNKNOWN:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->MALE:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->FEMALE:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->UNKNOWN:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->MALE:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->FEMALE:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->UNKNOWN:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->$VALUES:[Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->$VALUES:[Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    return-object v0
.end method
