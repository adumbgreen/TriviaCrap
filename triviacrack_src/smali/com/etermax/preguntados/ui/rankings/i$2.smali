.class Lcom/etermax/preguntados/ui/rankings/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/rankings/i;->e()V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/ViewTreeObserver;

.field final synthetic c:Lcom/etermax/preguntados/ui/rankings/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/rankings/i;ILandroid/view/ViewTreeObserver;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->c:Lcom/etermax/preguntados/ui/rankings/i;

    iput p2, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->a:I

    iput-object p3, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->b:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->c:Lcom/etermax/preguntados/ui/rankings/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/rankings/i;->c:Landroid/widget/ListView;

    iget v1, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->a:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 117
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->b:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->c:Lcom/etermax/preguntados/ui/rankings/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/rankings/i;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 122
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 123
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i$2;->b:Landroid/view/ViewTreeObserver;

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method
