.class Lcom/etermax/preguntados/ui/dashboard/i$4;
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
    .line 138
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/i$4;->a:Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i$4;->a:Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/i;->c(Lcom/etermax/preguntados/ui/dashboard/i;)Lcom/etermax/gamescommon/dashboard/a/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/c/d;->j()V

    .line 142
    return-void
.end method
