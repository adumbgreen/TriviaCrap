.class public final enum Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

.field public static final enum EXPIRED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

.field public static final enum NORMAL:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

.field public static final enum REJECTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

.field public static final enum RESIGNED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->EXPIRED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    .line 42
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->NORMAL:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    .line 43
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->REJECTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    .line 44
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    const-string v1, "RESIGNED"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->RESIGNED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->EXPIRED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->NORMAL:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->REJECTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->RESIGNED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;
    .locals 1
    .parameter

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->EXPIRED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->EXPIRED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->REJECTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->REJECTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    goto :goto_0

    .line 53
    :cond_2
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->RESIGNED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->RESIGNED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    goto :goto_0

    .line 55
    :cond_3
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->EXPIRED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->EXPIRED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    goto :goto_0

    .line 58
    :cond_4
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->NORMAL:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    return-object v0
.end method
