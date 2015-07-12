.class Lcom/etermax/preguntados/ui/dashboard/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/dashboard/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/i;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/i$2;->a:Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i$2;->a:Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Lcom/etermax/preguntados/ui/dashboard/i;)Lcom/etermax/preguntados/ui/dashboard/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i$2;->a:Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Lcom/etermax/preguntados/ui/dashboard/i;)Lcom/etermax/preguntados/ui/dashboard/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/j;->t()V

    .line 127
    :cond_0
    return-void
.end method
