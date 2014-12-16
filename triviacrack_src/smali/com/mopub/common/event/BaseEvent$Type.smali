.class public final enum Lcom/mopub/common/event/BaseEvent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/event/BaseEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATA_ERROR:Lcom/mopub/common/event/BaseEvent$Type;

.field public static final enum NETWORK_REQUEST:Lcom/mopub/common/event/BaseEvent$Type;

.field private static final synthetic a:[Lcom/mopub/common/event/BaseEvent$Type;


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Type;

    const-string v1, "NETWORK_REQUEST"

    const-string v2, "request"

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/common/event/BaseEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Type;->NETWORK_REQUEST:Lcom/mopub/common/event/BaseEvent$Type;

    .line 8
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Type;

    const-string v1, "DATA_ERROR"

    const-string v2, "invalid_data"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/event/BaseEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Type;->DATA_ERROR:Lcom/mopub/common/event/BaseEvent$Type;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/common/event/BaseEvent$Type;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Type;->NETWORK_REQUEST:Lcom/mopub/common/event/BaseEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Type;->DATA_ERROR:Lcom/mopub/common/event/BaseEvent$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Type;->a:[Lcom/mopub/common/event/BaseEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/mopub/common/event/BaseEvent$Type;->mName:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Type;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/mopub/common/event/BaseEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/event/BaseEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/event/BaseEvent$Type;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Type;->a:[Lcom/mopub/common/event/BaseEvent$Type;

    invoke-virtual {v0}, [Lcom/mopub/common/event/BaseEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/event/BaseEvent$Type;

    return-object v0
.end method
