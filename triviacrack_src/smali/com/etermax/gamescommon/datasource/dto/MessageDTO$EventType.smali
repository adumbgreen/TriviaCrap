.class public final enum Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

.field public static final enum CHAT:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

.field public static final enum GAME_ENDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

.field public static final enum GAME_STARTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->CHAT:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    .line 28
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    const-string v1, "GAME_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_STARTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    .line 29
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    const-string v1, "GAME_ENDED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_ENDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->CHAT:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_STARTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_ENDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;
    .locals 1
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_ENDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_ENDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_STARTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_STARTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->CHAT:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    return-object v0
.end method
