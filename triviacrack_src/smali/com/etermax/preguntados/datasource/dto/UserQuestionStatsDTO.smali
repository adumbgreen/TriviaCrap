.class public Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;->questions:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;->total:I

    return v0
.end method
