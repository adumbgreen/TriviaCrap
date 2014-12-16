.class Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->a(Ljava/lang/String;I)Landroid/view/View$OnClickListener;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;->c:Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;->c:Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->a(Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;)Lcom/etermax/preguntados/ui/withoutcoins/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;->c:Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->a(Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;)Lcom/etermax/preguntados/ui/withoutcoins/i;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;->b:I

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/withoutcoins/i;->a(Ljava/lang/String;I)V

    .line 96
    :cond_0
    return-void
.end method
