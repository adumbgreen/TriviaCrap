.class Lcom/etermax/preguntados/datasource/d$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->f()Lcom/etermax/preguntados/datasource/dto/DashboardDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/DashboardDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$12;->b:Lcom/etermax/preguntados/datasource/d;

    iput p2, p0, Lcom/etermax/preguntados/datasource/d$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/datasource/dto/DashboardDTO;
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$12;->b:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$12;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v1}, Lcom/etermax/preguntados/datasource/d;->b(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget v3, p0, Lcom/etermax/preguntados/datasource/d$12;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/etermax/preguntados/datasource/b;->a(JI)Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$12;->a()Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    move-result-object v0

    return-object v0
.end method
