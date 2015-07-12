.class public Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private recommended:Lcom/etermax/gamescommon/language/Language;

.field private source_languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/language/Language;",
            ">;"
        }
    .end annotation
.end field

.field private target_languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/language/Language;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecommendedLanguage()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->recommended:Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method

.method public getSourceLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/language/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->source_languages:Ljava/util/List;

    return-object v0
.end method

.method public getTargetLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/language/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->target_languages:Ljava/util/List;

    return-object v0
.end method
