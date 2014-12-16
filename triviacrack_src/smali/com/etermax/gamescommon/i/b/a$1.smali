.class Lcom/etermax/gamescommon/i/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/i/b/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$1;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$1;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/b;->a(I)V

    .line 186
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$1;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->b(Lcom/etermax/gamescommon/i/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$1;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->c(Lcom/etermax/gamescommon/i/b/a;)V

    .line 189
    :cond_0
    return-void
.end method
