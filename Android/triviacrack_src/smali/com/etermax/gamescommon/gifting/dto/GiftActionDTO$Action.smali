.class public final enum Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

.field public static final enum ACCEPT:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

.field public static final enum ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

.field public static final enum SEND:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    const-string v1, "SEND"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->SEND:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    .line 10
    new-instance v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    .line 11
    new-instance v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    const-string v1, "ACCEPT"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ACCEPT:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->SEND:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ACCEPT:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->$VALUES:[Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->$VALUES:[Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    return-object v0
.end method
