.class public final enum Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

.field public static final enum IDLE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

.field public static final enum OFFLINE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

.field public static final enum ONLINE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->ONLINE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->OFFLINE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->IDLE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->ONLINE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->OFFLINE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->IDLE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->$VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->$VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    return-object v0
.end method
