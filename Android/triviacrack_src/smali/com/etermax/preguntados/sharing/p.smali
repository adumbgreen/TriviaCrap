.class public interface abstract Lcom/etermax/preguntados/sharing/p;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAnswers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
.end method

.method public abstract getId()I
.end method

.method public abstract getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;
.end method

.method public abstract getText()Ljava/lang/String;
.end method
