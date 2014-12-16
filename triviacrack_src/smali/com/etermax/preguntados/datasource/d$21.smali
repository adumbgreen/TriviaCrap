.class Lcom/etermax/preguntados/datasource/d$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->g(J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$21;->b:Lcom/etermax/preguntados/datasource/d;

    iput-wide p2, p0, Lcom/etermax/preguntados/datasource/d$21;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$21;->b:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-wide v1, p0, Lcom/etermax/preguntados/datasource/d$21;->a:J

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/datasource/b;->g(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$21;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
