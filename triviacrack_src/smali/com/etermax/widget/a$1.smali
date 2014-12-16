.class Lcom/etermax/widget/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/widget/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/widget/c;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/widget/c;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/etermax/widget/a;


# direct methods
.method constructor <init>(Lcom/etermax/widget/a;Lcom/etermax/widget/c;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etermax/widget/a$1;->c:Lcom/etermax/widget/a;

    iput-object p2, p0, Lcom/etermax/widget/a$1;->a:Lcom/etermax/widget/c;

    iput-object p3, p0, Lcom/etermax/widget/a$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/widget/a$1;->a:Lcom/etermax/widget/c;

    iget-object v1, p0, Lcom/etermax/widget/a$1;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/widget/c;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
