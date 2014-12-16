.class Lcom/etermax/preguntados/ui/game/category/e$3;
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
    .line 178
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->c:Lcom/etermax/preguntados/ui/game/category/e;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->a:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->b:Landroid/view/View;

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
    const/4 v1, 0x0

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->c:Lcom/etermax/preguntados/ui/game/category/e;

    new-instance v2, Lcom/etermax/gamescommon/k/a;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/category/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->b:Landroid/view/View;

    invoke-direct {v2, v3, v4}, Lcom/etermax/gamescommon/k/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, v2}, Lcom/etermax/preguntados/ui/game/category/e;->a(Lcom/etermax/preguntados/ui/game/category/e;Lcom/etermax/gamescommon/k/a;)Lcom/etermax/gamescommon/k/a;

    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/e;->a(Lcom/etermax/preguntados/ui/game/category/e;)Lcom/etermax/gamescommon/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/k/a;->a()V

    .line 189
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/e;->a(Lcom/etermax/preguntados/ui/game/category/e;)Lcom/etermax/gamescommon/k/a;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/category/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->tutotial_tooltip_crown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/k/a;->a(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->c:Lcom/etermax/preguntados/ui/game/category/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/e;->a(Lcom/etermax/preguntados/ui/game/category/e;)Lcom/etermax/gamescommon/k/a;

    move-result-object v0

    const/16 v2, -0x14

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/k/a;->a(IIZZZ)V

    .line 191
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e$3;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
