.class Lcom/etermax/preguntados/ui/d/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/d/e;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/d/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/d/e;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etermax/preguntados/ui/d/e$2;->a:Lcom/etermax/preguntados/ui/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/e$2;->a:Lcom/etermax/preguntados/ui/d/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/d/e;->a(Lcom/etermax/preguntados/ui/d/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/d/f;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/d/f;->f()V

    .line 74
    return-void
.end method
