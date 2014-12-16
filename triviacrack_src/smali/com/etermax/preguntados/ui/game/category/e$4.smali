.class Lcom/etermax/preguntados/ui/game/category/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/e;->g()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/etermax/preguntados/ui/game/category/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/e;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->c:Lcom/etermax/preguntados/ui/game/category/e;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->a:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->c:Lcom/etermax/preguntados/ui/game/category/e;

    new-instance v1, Lcom/etermax/gamescommon/k/a;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/category/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->b:Landroid/view/View;

    invoke-direct {v1, v2, v4}, Lcom/etermax/gamescommon/k/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/e;->b(Lcom/etermax/preguntados/ui/game/category/e;Lcom/etermax/gamescommon/k/a;)Lcom/etermax/gamescommon/k/a;

    .line 205
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/e;->b(Lcom/etermax/preguntados/ui/game/category/e;)Lcom/etermax/gamescommon/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/k/a;->a()V

    .line 206
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/e;->b(Lcom/etermax/preguntados/ui/game/category/e;)Lcom/etermax/gamescommon/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/category/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->tutotial_tooltip_challenge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/k/a;->a(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/e;->b(Lcom/etermax/preguntados/ui/game/category/e;)Lcom/etermax/gamescommon/k/a;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x14

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/k/a;->a(IIZZZ)V

    .line 208
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$4;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
