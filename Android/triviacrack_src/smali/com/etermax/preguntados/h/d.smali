.class public Lcom/etermax/preguntados/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/h/e;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/etermax/preguntados/h/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/h/d;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090011

    const v3, 0x1020014

    invoke-direct {v1, p1, v2, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 38
    new-instance v2, Lcom/etermax/preguntados/h/d$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/etermax/preguntados/h/d$1;-><init>(Lcom/etermax/preguntados/h/d;Lcom/etermax/preguntados/h/e;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    new-instance v1, Lcom/etermax/preguntados/h/d$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/h/d$2;-><init>(Lcom/etermax/preguntados/h/d;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/h/d;->a:Landroid/app/AlertDialog;

    .line 54
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/h/d;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 62
    return-void
.end method
