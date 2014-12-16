.class Lcom/etermax/preguntados/ui/dashboard/a/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/a/e;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/a/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$3;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$3;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    const-string v1, "click_ask_friends"

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->b(Lcom/etermax/preguntados/ui/dashboard/a/e;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$3;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->c(Lcom/etermax/preguntados/ui/dashboard/a/e;)V

    .line 252
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
