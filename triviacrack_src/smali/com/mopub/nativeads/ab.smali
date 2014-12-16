.class Lcom/mopub/nativeads/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/ab;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v1, Lcom/mopub/nativeads/ab;

    invoke-direct {v1}, Lcom/mopub/nativeads/ab;-><init>()V

    .line 23
    :try_start_0
    iget v0, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mopub/nativeads/ab;->a:Landroid/widget/TextView;

    .line 24
    iget v0, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mopub/nativeads/ab;->b:Landroid/widget/TextView;

    .line 25
    iget v0, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mopub/nativeads/ab;->c:Landroid/widget/TextView;

    .line 26
    iget v0, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/mopub/nativeads/ab;->d:Landroid/widget/ImageView;

    .line 27
    iget v0, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/mopub/nativeads/ab;->e:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 33
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "Could not cast View from id in ViewBinder to expected View type"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add text ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to null TextView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    if-nez p2, :cond_1

    .line 79
    const-string v0, "Attempted to set TextView contents to null."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 48
    iget-object v0, p3, Lcom/mopub/nativeads/ViewBinder;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    iget-object v1, p3, Lcom/mopub/nativeads/ViewBinder;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/NativeResponse;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 55
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p2, v0, v2}, Lcom/mopub/nativeads/NativeResponse;->loadExtrasImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 57
    :cond_1
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 59
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    check-cast v2, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/mopub/nativeads/ab;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View bound to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " should be an instance of TextView or ImageView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method a(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/nativeads/ab;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/ab;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/mopub/nativeads/ab;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/ab;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/mopub/nativeads/ab;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/ab;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/mopub/nativeads/ab;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeResponse;->loadMainImage(Landroid/widget/ImageView;)V

    .line 42
    iget-object v0, p0, Lcom/mopub/nativeads/ab;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeResponse;->loadIconImage(Landroid/widget/ImageView;)V

    .line 43
    return-void
.end method
