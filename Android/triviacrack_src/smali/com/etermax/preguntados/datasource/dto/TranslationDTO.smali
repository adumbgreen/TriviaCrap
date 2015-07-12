.class public Lcom/etermax/preguntados/datasource/dto/TranslationDTO;
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
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;->answers:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;->id:J

    .line 23
    return-void
.end method

.method public setLanguage(Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 31
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;->text:Ljava/lang/String;

    .line 39
    return-void
.end method
