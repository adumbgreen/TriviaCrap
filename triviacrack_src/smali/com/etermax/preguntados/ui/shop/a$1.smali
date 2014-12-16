.class Lcom/etermax/preguntados/ui/shop/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/etermax/preguntados/ui/shop/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/shop/a;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/etermax/preguntados/ui/shop/a$1;->d:Lcom/etermax/preguntados/ui/shop/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/shop/a$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/etermax/preguntados/ui/shop/a$1;->b:I

    iput p4, p0, Lcom/etermax/preguntados/ui/shop/a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a$1;->d:Lcom/etermax/preguntados/ui/shop/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/shop/a;->a(Lcom/etermax/preguntados/ui/shop/a;Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a$1;->b:I

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a$1;->d:Lcom/etermax/preguntados/ui/shop/a;

    iget v1, p0, Lcom/etermax/preguntados/ui/shop/a$1;->b:I

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/shop/a;->a(Lcom/etermax/preguntados/ui/shop/a;I)I

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a$1;->c:I

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a$1;->d:Lcom/etermax/preguntados/ui/shop/a;

    iget v1, p0, Lcom/etermax/preguntados/ui/shop/a$1;->c:I

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/shop/a;->b(Lcom/etermax/preguntados/ui/shop/a;I)V

    .line 246
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a$1;->d:Lcom/etermax/preguntados/ui/shop/a;

    iget v1, p0, Lcom/etermax/preguntados/ui/shop/a$1;->c:I

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/shop/a;->c(Lcom/etermax/preguntados/ui/shop/a;I)I

    goto :goto_0
.end method
