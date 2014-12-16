.class Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$2;->c:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$2;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;->a(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
