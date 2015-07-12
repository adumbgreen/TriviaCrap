.class Lcom/etermax/gamescommon/menu/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/menu/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a;->a(Lcom/etermax/gamescommon/menu/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/b;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a;Lcom/etermax/gamescommon/menu/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a$1;->b:Lcom/etermax/gamescommon/menu/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a$1;->a:Lcom/etermax/gamescommon/menu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/menu/a/a/a;)Z
    .locals 4
    .parameter

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/a/a/a;->a()Lcom/etermax/gamescommon/menu/a/a/g;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/menu/a/a/g;->e:Lcom/etermax/gamescommon/menu/a/a/g;

    if-eq v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$1;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/etermax/tools/navigation/f;

    invoke-interface {v0}, Lcom/etermax/tools/navigation/f;->g()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$1;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/gamescommon/menu/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/menu/a$1$1;-><init>(Lcom/etermax/gamescommon/menu/a$1;Lcom/etermax/gamescommon/menu/a/a/a;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    const/4 v0, 0x0

    return v0
.end method
