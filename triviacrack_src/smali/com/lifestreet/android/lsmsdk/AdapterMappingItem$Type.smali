.class public final enum Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

.field public static final enum BANNER:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

.field public static final enum BOTH:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

.field public static final enum INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

.field public static final enum UNKNOWN:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->UNKNOWN:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->BANNER:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->BOTH:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->UNKNOWN:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->BANNER:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->BOTH:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->$VALUES:[Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->$VALUES:[Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    return-object v0
.end method
