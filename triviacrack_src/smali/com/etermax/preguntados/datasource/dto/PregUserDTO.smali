.class public Lcom/etermax/preguntados/datasource/dto/PregUserDTO;
.super Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
.source "SourceFile"


# instance fields
.field private level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevelData()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/PregUserDTO;->level_data:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    return-object v0
.end method
