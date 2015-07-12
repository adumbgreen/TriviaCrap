.class public Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private language:Lcom/etermax/gamescommon/language/Language;

.field private name:Ljava/lang/String;

.field private opponent:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field private opponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 22
    iput-object p2, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/j;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 46
    iput-object p2, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 47
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->opponent:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 48
    invoke-interface {p3}, Lcom/etermax/gamescommon/j;->getFacebookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->opponent:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {p3}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setId(Ljava/lang/Long;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->opponent:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {p3}, Lcom/etermax/gamescommon/j;->getFacebookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFacebook_id(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 40
    iput-object p2, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 41
    iput-object p3, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->opponent:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 27
    iput-object p2, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 28
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {v0, p3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>(Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->opponent:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/enums/GameType;",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/language/Language;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 58
    iput-object p2, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->name:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 60
    iput-object p4, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->opponents:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public getLanguage()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->language:Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method
