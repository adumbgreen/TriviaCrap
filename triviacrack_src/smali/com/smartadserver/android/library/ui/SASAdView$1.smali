.class Lcom/smartadserver/android/library/ui/SASAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/smartadserver/android/library/ui/a;

.field final synthetic g:I

.field final synthetic h:Z

.field final synthetic i:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iput p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->a:I

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->c:I

    iput-boolean p5, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->d:Z

    iput-object p6, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->f:Lcom/smartadserver/android/library/ui/a;

    iput p8, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->g:I

    iput-boolean p9, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 490
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->a:I

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->b:Ljava/lang/String;

    iget v3, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->c:I

    iget-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->d:Z

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->f:Lcom/smartadserver/android/library/ui/a;

    iget v7, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->g:I

    iget-boolean v8, p0, Lcom/smartadserver/android/library/ui/SASAdView$1;->h:Z

    invoke-static/range {v0 .. v8}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V

    .line 491
    return-void
.end method
