.class Lcom/etermax/tools/social/a/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Landroid/net/Uri;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/etermax/tools/social/a/b;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$7;->b:Lcom/etermax/tools/social/a/b;

    iput-object p2, p0, Lcom/etermax/tools/social/a/b$7;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$7;->b:Lcom/etermax/tools/social/a/b;

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$7;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/social/a/b;->a(Landroid/net/Uri;)V

    .line 656
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 651
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 660
    return-void
.end method
