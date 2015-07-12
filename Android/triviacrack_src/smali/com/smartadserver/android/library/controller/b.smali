.class Lcom/smartadserver/android/library/controller/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/a;


# instance fields
.field a:Lcom/smartadserver/android/library/ui/a;

.field b:Z

.field final synthetic c:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/ui/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/smartadserver/android/library/controller/b;->a:Lcom/smartadserver/android/library/ui/a;

    .line 87
    iput-boolean p3, p0, Lcom/smartadserver/android/library/controller/b;->b:Z

    .line 88
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentLoaderView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentLoaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->d()V

    .line 140
    if-eqz p1, :cond_1

    .line 141
    invoke-static {}, Lcom/smartadserver/android/library/controller/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adElementLoadFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->a:Lcom/smartadserver/android/library/ui/a;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 146
    :cond_1
    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    iput-object p1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    .line 95
    iget-boolean v1, p0, Lcom/smartadserver/android/library/controller/b;->b:Z

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p1, v0}, Lcom/smartadserver/android/library/d/a;->b(Z)V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v1, p1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/d/a;)Z

    move-result v1

    .line 104
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->a()[Ljava/lang/String;

    move-result-object v2

    .line 105
    if-eqz v1, :cond_1

    array-length v3, v2

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v3

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/b/e;

    .line 107
    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    .line 108
    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/smartadserver/android/library/b/e;->a(Ljava/lang/String;Z)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentLoaderView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentLoaderView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->c:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->d()V

    .line 119
    invoke-static {}, Lcom/smartadserver/android/library/controller/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Display ad finished"

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->a:Lcom/smartadserver/android/library/ui/a;

    if-eqz v0, :cond_3

    .line 121
    if-eqz v1, :cond_4

    .line 122
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/a;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V

    .line 126
    :cond_3
    :goto_1
    return-void

    .line 124
    :cond_4
    new-instance v0, Lcom/smartadserver/android/library/a/b;

    const-string v1, "Ad was not properly displayed"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/a/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/controller/b;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/controller/b;->a(Ljava/lang/Exception;)V

    .line 130
    return-void
.end method
