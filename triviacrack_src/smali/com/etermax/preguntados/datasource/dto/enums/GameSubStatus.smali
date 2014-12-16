.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

.field public static final enum P1_PLAYING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

.field public static final enum P1_WAITING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

.field public static final enum P2_PLAYING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

.field public static final enum P2_WAITING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    const-string v1, "P1_WAITING_FIRST_TURN"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P1_WAITING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    const-string v1, "P1_PLAYING_FIRST_TURN"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P1_PLAYING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    const-string v1, "P2_WAITING_FIRST_TURN"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P2_WAITING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    const-string v1, "P2_PLAYING_FIRST_TURN"

    invoke-direct {v0, v1, v5}, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P2_PLAYING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P1_WAITING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P1_PLAYING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P2_WAITING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->P2_PLAYING_FIRST_TURN:Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameSubStatus;

    return-object v0
.end method
