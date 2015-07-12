.class Lcom/etermax/gamescommon/dashboard/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/dashboard/a/c/a;

.field private b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/dashboard/a/c/a;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/etermax/gamescommon/dashboard/a/c/e;->a:Lcom/etermax/gamescommon/dashboard/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/etermax/gamescommon/dashboard/a/c/e;->b:Ljava/lang/Long;

    .line 288
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/e;->a:Lcom/etermax/gamescommon/dashboard/a/c/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/dashboard/a/c/a;->b(Lcom/etermax/gamescommon/dashboard/a/c/a;)Lcom/etermax/gamescommon/dashboard/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/e;->a:Lcom/etermax/gamescommon/dashboard/a/c/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/dashboard/a/c/a;->b(Lcom/etermax/gamescommon/dashboard/a/c/a;)Lcom/etermax/gamescommon/dashboard/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/c/e;->b:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/c/c;->a(Ljava/lang/Long;)V

    .line 295
    :cond_0
    return-void
.end method
