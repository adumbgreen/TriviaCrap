.class public Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;
.super Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private available_languages:[Lcom/etermax/gamescommon/language/Language;

.field private dashboardTTL:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dashboard_ttl"
    .end annotation
.end field

.field private duel_games_enabled:Z

.field private duel_games_players_max:I

.field private duel_games_players_min:I

.field private final_duel_rounds:I

.field private lives:Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

.field private power_ups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;",
            ">;"
        }
    .end annotation
.end field

.field private questions_time:I

.field private rejected_questions_expiration:I

.field private show_questions_reload_seconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;-><init>()V

    .line 14
    const/16 v0, 0x3c

    iput v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->dashboardTTL:I

    return-void
.end method


# virtual methods
.method public getAvailableLanguages()[Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->available_languages:[Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method

.method public getDashboardTTL()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->dashboardTTL:I

    return v0
.end method

.method public getDuelGamesEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->duel_games_enabled:Z

    return v0
.end method

.method public getDuelModeMaxPlayers()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->duel_games_players_max:I

    return v0
.end method

.method public getDuelModeMinPlayers()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->duel_games_players_min:I

    return v0
.end method

.method public getFinalDuelRounds()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->final_duel_rounds:I

    return v0
.end method

.method public getLivesConfig()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->lives:Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    return-object v0
.end method

.method public getPowerUps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->power_ups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQuestionTime()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->questions_time:I

    return v0
.end method

.method public getRejectedQuestionsExpirationTime()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->rejected_questions_expiration:I

    return v0
.end method

.method public getShowQuestionsReloadSeconds()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->show_questions_reload_seconds:I

    return v0
.end method
