.class Lcom/etermax/gamescommon/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/g/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/l;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/l;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/etermax/gamescommon/l$2;->a:Lcom/etermax/gamescommon/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/g/i;)V
    .locals 3
    .parameter

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l$2;->a:Lcom/etermax/gamescommon/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/l;->a(Lcom/etermax/gamescommon/l;)Lcom/etermax/gamescommon/g/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/g/c;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    iget-object v1, p0, Lcom/etermax/gamescommon/l$2;->a:Lcom/etermax/gamescommon/l;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/etermax/gamescommon/l$2;->a:Lcom/etermax/gamescommon/l;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/l;->c()V

    goto :goto_0
.end method
