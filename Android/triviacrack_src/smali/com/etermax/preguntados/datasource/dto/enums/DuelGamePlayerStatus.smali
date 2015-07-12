.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

.field public static final enum ENDED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

.field public static final enum EXPIRED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

.field public static final enum PENDING:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

.field public static final enum REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->PENDING:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ENDED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->EXPIRED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v5}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->PENDING:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ENDED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->EXPIRED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    return-object v0
.end method
