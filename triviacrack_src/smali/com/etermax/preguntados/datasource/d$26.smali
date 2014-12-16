.class Lcom/etermax/preguntados/datasource/d$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->a(JILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

.field final synthetic d:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;JILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$26;->d:Lcom/etermax/preguntados/datasource/d;

    iput-wide p2, p0, Lcom/etermax/preguntados/datasource/d$26;->a:J

    iput p4, p0, Lcom/etermax/preguntados/datasource/d$26;->b:I

    iput-object p5, p0, Lcom/etermax/preguntados/datasource/d$26;->c:Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 726
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$26;->d:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-wide v1, p0, Lcom/etermax/preguntados/datasource/d$26;->a:J

    iget v3, p0, Lcom/etermax/preguntados/datasource/d$26;->b:I

    iget-object v4, p0, Lcom/etermax/preguntados/datasource/d$26;->c:Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/datasource/b;->a(JILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V

    .line 727
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$26;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
