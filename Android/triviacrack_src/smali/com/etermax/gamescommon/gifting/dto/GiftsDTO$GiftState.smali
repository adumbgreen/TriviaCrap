.class public final enum Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

.field public static final enum READ:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

.field public static final enum UNREAD:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->READ:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    .line 13
    new-instance v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    const-string v1, "UNREAD"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->UNREAD:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->READ:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->UNREAD:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->$VALUES:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->$VALUES:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    return-object v0
.end method
