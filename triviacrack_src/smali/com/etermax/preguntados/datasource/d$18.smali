.class Lcom/etermax/preguntados/datasource/d$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V
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
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;

.field final synthetic b:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$18;->b:Lcom/etermax/preguntados/datasource/d;

    iput-object p2, p0, Lcom/etermax/preguntados/datasource/d$18;->a:Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 530
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$18;->b:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$18;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v1}, Lcom/etermax/preguntados/datasource/d;->y(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/datasource/d$18;->a:Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;

    invoke-interface {v0, v1, v2, v3}, Lcom/etermax/preguntados/datasource/b;->a(JLcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V

    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$18;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
