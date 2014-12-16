.class Lcom/etermax/tools/social/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b;->a(ILandroid/support/v4/app/Fragment;Lcom/etermax/tools/social/a/h;)V
.end annotation


# instance fields
.field a:[Lcom/etermax/tools/social/a/c;

.field final synthetic b:I

.field final synthetic c:Lcom/etermax/tools/social/a/h;

.field final synthetic d:Landroid/support/v4/app/Fragment;

.field final synthetic e:Lcom/etermax/tools/social/a/b;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b;ILcom/etermax/tools/social/a/h;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$1;->e:Lcom/etermax/tools/social/a/b;

    iput p2, p0, Lcom/etermax/tools/social/a/b$1;->b:I

    iput-object p3, p0, Lcom/etermax/tools/social/a/b$1;->c:Lcom/etermax/tools/social/a/h;

    iput-object p4, p0, Lcom/etermax/tools/social/a/b$1;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/etermax/tools/social/a/c;

    iput-object v0, p0, Lcom/etermax/tools/social/a/b$1;->a:[Lcom/etermax/tools/social/a/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 947
    new-instance v0, Lcom/etermax/tools/social/a/b$1$1;

    invoke-direct {v0, p0}, Lcom/etermax/tools/social/a/b$1$1;-><init>(Lcom/etermax/tools/social/a/b$1;)V

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$1;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/social/a/b$1$1;->a(Ljava/lang/Object;)Z

    .line 973
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 977
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 981
    return-void
.end method
