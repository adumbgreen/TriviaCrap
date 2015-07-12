.class final enum Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

.field public static final enum HTML:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

.field public static final enum JSON:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->JSON:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v3}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->HTML:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->JSON:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->HTML:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    return-object v0
.end method
