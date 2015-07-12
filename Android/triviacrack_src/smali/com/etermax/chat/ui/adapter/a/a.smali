.class public Lcom/etermax/chat/ui/adapter/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/ui/adapter/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/etermax/chat/ui/f;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 20
    .line 22
    if-nez p2, :cond_2

    .line 23
    sget v0, Lcom/etermax/k;->list_item_date_section:I

    invoke-virtual {p4, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p2, v0

    .line 29
    :goto_0
    instance-of v0, p5, Lcom/etermax/chat/a/f;

    if-eqz v0, :cond_1

    .line 30
    check-cast p5, Lcom/etermax/chat/a/f;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM "

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 36
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 39
    sget v0, Lcom/etermax/i;->tv_date_section:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_1
    return-object p2

    .line 25
    :cond_2
    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0
.end method
