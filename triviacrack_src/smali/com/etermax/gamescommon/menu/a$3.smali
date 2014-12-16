.class Lcom/etermax/gamescommon/menu/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/menu/navigation/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a;->a(Ljava/lang/String;Lcom/etermax/gamescommon/menu/navigation/d;Lcom/etermax/gamescommon/menu/c;[Lcom/etermax/gamescommon/menu/navigation/e;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/c;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a;Lcom/etermax/gamescommon/menu/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a$3;->b:Lcom/etermax/gamescommon/menu/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/menu/navigation/c;)Z
    .locals 4
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/etermax/tools/navigation/f;

    invoke-interface {v0}, Lcom/etermax/tools/navigation/f;->g()V

    .line 287
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/gamescommon/menu/a$3$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/menu/a$3$1;-><init>(Lcom/etermax/gamescommon/menu/a$3;Lcom/etermax/gamescommon/menu/navigation/c;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    const/4 v0, 0x0

    return v0
.end method
