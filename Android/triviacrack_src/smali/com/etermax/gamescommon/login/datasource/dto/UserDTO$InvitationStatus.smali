.class public final enum Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

.field public static final enum INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

.field public static final enum INVITING:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

.field public static final enum NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    const-string v1, "INVITED"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    const-string v1, "NOT_INVITED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    const-string v1, "INVITING"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITING:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITING:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->$VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->$VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    return-object v0
.end method
