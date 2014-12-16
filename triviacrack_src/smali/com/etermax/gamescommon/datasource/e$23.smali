.class Lcom/etermax/gamescommon/datasource/e$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->g()Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$23;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$23;->a:Lcom/etermax/gamescommon/datasource/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$23;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/e;->h(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/a/a;->b(J)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$23;->a()Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    return-object v0
.end method
