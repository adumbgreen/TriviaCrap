.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

.field public static final enum CROWNS_EXCEDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

.field public static final enum DUEL_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

.field public static final enum DUEL_STARTED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

.field public static final enum FINAL_DUEL_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

.field public static final enum FINAL_DUEL_STARTED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

.field public static final enum GAME_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    const-string v1, "DUEL_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->DUEL_STARTED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    const-string v1, "DUEL_ENDED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->DUEL_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    const-string v1, "FINAL_DUEL_STARTED"

    invoke-direct {v0, v1, v5}, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->FINAL_DUEL_STARTED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    const-string v1, "FINAL_DUEL_ENDED"

    invoke-direct {v0, v1, v6}, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->FINAL_DUEL_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    .line 8
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    const-string v1, "GAME_ENDED"

    invoke-direct {v0, v1, v7}, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->GAME_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    .line 9
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    const-string v1, "CROWNS_EXCEDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->CROWNS_EXCEDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->DUEL_STARTED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->DUEL_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->FINAL_DUEL_STARTED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->FINAL_DUEL_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->GAME_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->CROWNS_EXCEDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    return-object v0
.end method
