.class public Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

.field private languages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/etermax/gamescommon/language/Language;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/Country;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->config:Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    return-object v0
.end method

.method public getLanguages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/etermax/gamescommon/language/Language;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/Country;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->languages:Ljava/util/HashMap;

    return-object v0
.end method
