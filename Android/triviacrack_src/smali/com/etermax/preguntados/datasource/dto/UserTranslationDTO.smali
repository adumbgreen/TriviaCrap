.class public Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private language:Lcom/etermax/gamescommon/language/Language;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->answers:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->answers:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->id:J

    .line 23
    return-void
.end method

.method public setLanguage(Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 31
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->text:Ljava/lang/String;

    .line 39
    return-void
.end method
