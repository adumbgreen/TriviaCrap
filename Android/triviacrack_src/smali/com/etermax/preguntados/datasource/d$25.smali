.class Lcom/etermax/preguntados/datasource/d$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->a(JI)Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$25;->c:Lcom/etermax/preguntados/datasource/d;

    iput-wide p2, p0, Lcom/etermax/preguntados/datasource/d$25;->a:J

    iput p4, p0, Lcom/etermax/preguntados/datasource/d$25;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;
    .locals 4

    .prologue
    .line 717
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$25;->c:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-wide v1, p0, Lcom/etermax/preguntados/datasource/d$25;->a:J

    iget v3, p0, Lcom/etermax/preguntados/datasource/d$25;->b:I

    invoke-interface {v0, v1, v2, v3}, Lcom/etermax/preguntados/datasource/b;->b(JI)Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$25;->a()Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    move-result-object v0

    return-object v0
.end method
