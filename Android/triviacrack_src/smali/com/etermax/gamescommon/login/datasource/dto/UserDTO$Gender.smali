.class public final enum Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

.field public static final enum FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

.field public static final enum MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->$VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->$VALUES:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    return-object v0
.end method
