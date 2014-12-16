.class Lcom/etermax/preguntados/ui/dashboard/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/i;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/i;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/i$3;->a:Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i$3;->a:Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/i;->b(Lcom/etermax/preguntados/ui/dashboard/i;)Lcom/etermax/gamescommon/dashboard/a/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/c/d;->h()V

    .line 136
    return-void
.end method
