.class Lcom/etermax/preguntados/ui/dashboard/widget/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/widget/a;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/widget/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/a$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/a$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/a;->getClickAction()V

    .line 35
    return-void
.end method
