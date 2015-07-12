.class Lcom/etermax/gamescommon/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/g/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/l;->a(Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/n;

.field final synthetic b:Lcom/etermax/gamescommon/l;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/l;Lcom/etermax/gamescommon/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/etermax/gamescommon/l$1;->b:Lcom/etermax/gamescommon/l;

    iput-object p2, p0, Lcom/etermax/gamescommon/l$1;->a:Lcom/etermax/gamescommon/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/g/i;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-virtual {p2}, Lcom/etermax/gamescommon/g/i;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/etermax/gamescommon/l$1;->b:Lcom/etermax/gamescommon/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error consuming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->e(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/etermax/gamescommon/l$1;->a:Lcom/etermax/gamescommon/n;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/etermax/gamescommon/l$1;->a:Lcom/etermax/gamescommon/n;

    invoke-interface {v0}, Lcom/etermax/gamescommon/n;->b()V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/l$1;->b:Lcom/etermax/gamescommon/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consumed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->d(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/etermax/gamescommon/l$1;->a:Lcom/etermax/gamescommon/n;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/etermax/gamescommon/l$1;->a:Lcom/etermax/gamescommon/n;

    invoke-interface {v0}, Lcom/etermax/gamescommon/n;->a()V

    goto :goto_0
.end method
