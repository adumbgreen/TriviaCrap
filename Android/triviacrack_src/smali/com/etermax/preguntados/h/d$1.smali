.class Lcom/etermax/preguntados/h/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/h/d;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/h/e;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/h/e;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/etermax/preguntados/h/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/h/d;Lcom/etermax/preguntados/h/e;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etermax/preguntados/h/d$1;->c:Lcom/etermax/preguntados/h/d;

    iput-object p2, p0, Lcom/etermax/preguntados/h/d$1;->a:Lcom/etermax/preguntados/h/e;

    iput-object p3, p0, Lcom/etermax/preguntados/h/d$1;->b:Ljava/util/List;

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
    iget-object v1, p0, Lcom/etermax/preguntados/h/d$1;->a:Lcom/etermax/preguntados/h/e;

    iget-object v0, p0, Lcom/etermax/preguntados/h/d$1;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/etermax/preguntados/h/e;->b(Ljava/lang/String;)V

    .line 44
    return-void
.end method
