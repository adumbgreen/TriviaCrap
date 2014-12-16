.class Lcom/etermax/preguntados/ui/dashboard/g$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/g;->a(Lorg/a/a/b/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/g;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/g;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/g$7;->a:Lcom/etermax/preguntados/ui/dashboard/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g$7;->a:Lcom/etermax/preguntados/ui/dashboard/g;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/g;->a(Ljava/lang/Object;)V

    .line 196
    return-void
.end method
