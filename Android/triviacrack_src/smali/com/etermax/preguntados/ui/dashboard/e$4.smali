.class Lcom/etermax/preguntados/ui/dashboard/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/e;->p()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/e;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/e$4;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$4;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/e;->g(Lcom/etermax/preguntados/ui/dashboard/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/f;->p()V

    .line 352
    const/4 v0, 0x0

    return v0
.end method
