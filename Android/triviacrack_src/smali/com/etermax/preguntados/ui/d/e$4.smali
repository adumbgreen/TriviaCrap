.class Lcom/etermax/preguntados/ui/d/e$4;
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
    .line 91
    iput-object p1, p0, Lcom/etermax/preguntados/ui/d/e$4;->a:Lcom/etermax/preguntados/ui/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/etermax/i;->spin_button_image:I

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/e$4;->a:Lcom/etermax/preguntados/ui/d/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/d/e;->d()V

    .line 97
    :cond_0
    return-void
.end method
