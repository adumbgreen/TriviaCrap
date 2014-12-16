.class public Lcom/etermax/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/etermax/widget/a/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/widget/c;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/etermax/widget/c",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/etermax/widget/a;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 30
    if-eqz p4, :cond_0

    .line 31
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 33
    new-instance v2, Lcom/etermax/widget/b;

    invoke-direct {v2, p0, v1}, Lcom/etermax/widget/b;-><init>(Lcom/etermax/widget/a;Ljava/text/Collator;)V

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 36
    :cond_0
    new-instance v1, Lcom/etermax/widget/a/b;

    const v2, 0x1090011

    const v3, 0x1020014

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/etermax/widget/a/b;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 38
    new-instance v2, Lcom/etermax/widget/a$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/etermax/widget/a$1;-><init>(Lcom/etermax/widget/a;Lcom/etermax/widget/c;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    new-instance v1, Lcom/etermax/widget/a$2;

    invoke-direct {v1, p0}, Lcom/etermax/widget/a$2;-><init>(Lcom/etermax/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/widget/a;->a:Landroid/app/AlertDialog;

    .line 53
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/widget/a;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 61
    return-void
.end method
