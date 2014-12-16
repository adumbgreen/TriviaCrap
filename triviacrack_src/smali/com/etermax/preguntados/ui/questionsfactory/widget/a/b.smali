.class public Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/a;

    const v1, 0x1090011

    invoke-direct {v0, p1, v1, p3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    if-eqz p5, :cond_0

    .line 29
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$1;

    invoke-direct {v2, p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {p3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 40
    :cond_1
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$2;

    invoke-direct {v2, p0, p4, p3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a:Landroid/app/AlertDialog;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 58
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/a;->notifyDataSetChanged()V

    .line 64
    :cond_0
    return-void
.end method
