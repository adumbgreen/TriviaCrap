.class Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;

    check-cast p2, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$1;->a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;)I

    move-result v0

    return v0
.end method
