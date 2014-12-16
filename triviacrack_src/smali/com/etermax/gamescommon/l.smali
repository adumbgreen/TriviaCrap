.class public abstract Lcom/etermax/gamescommon/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Ljava/lang/Boolean;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field private c:Landroid/support/v4/app/FragmentActivity;

.field private d:Lcom/etermax/gamescommon/a;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/etermax/gamescommon/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/etermax/gamescommon/g/c;

.field private g:I

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/g/k;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/etermax/gamescommon/g/g;

.field private k:Lcom/etermax/gamescommon/g/h;

.field private l:Lcom/etermax/gamescommon/g/f;

.field private m:Lcom/etermax/gamescommon/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/l;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/l;->a:Z

    .line 37
    const-string v0, "ProductBilling"

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->b:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->e:Ljava/util/Set;

    .line 45
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/etermax/gamescommon/l;->g:I

    .line 256
    new-instance v0, Lcom/etermax/gamescommon/l$2;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/l$2;-><init>(Lcom/etermax/gamescommon/l;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->j:Lcom/etermax/gamescommon/g/g;

    .line 271
    new-instance v0, Lcom/etermax/gamescommon/l$3;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/l$3;-><init>(Lcom/etermax/gamescommon/l;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->k:Lcom/etermax/gamescommon/g/h;

    .line 294
    new-instance v0, Lcom/etermax/gamescommon/l$4;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/l$4;-><init>(Lcom/etermax/gamescommon/l;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->l:Lcom/etermax/gamescommon/g/f;

    .line 371
    new-instance v0, Lcom/etermax/gamescommon/l$5;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/l$5;-><init>(Lcom/etermax/gamescommon/l;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->m:Lcom/etermax/gamescommon/a/a;

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/l;)Lcom/etermax/gamescommon/g/c;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-object p0, Lcom/etermax/gamescommon/l;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method private a(Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    new-instance v1, Lcom/etermax/gamescommon/l$1;

    invoke-direct {v1, p0, p2}, Lcom/etermax/gamescommon/l$1;-><init>(Lcom/etermax/gamescommon/l;Lcom/etermax/gamescommon/n;)V

    invoke-virtual {v0, p1, v1}, Lcom/etermax/gamescommon/g/c;->a(Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/g/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/etermax/gamescommon/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    if-eqz p2, :cond_0

    .line 250
    invoke-interface {p2}, Lcom/etermax/gamescommon/n;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/l;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->c:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/l;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->e:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Landroid/content/Context;
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/etermax/gamescommon/g/c;->a(IILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/etermax/gamescommon/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_0

    .line 168
    new-instance v0, Lcom/etermax/gamescommon/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/l;->m:Lcom/etermax/gamescommon/a/a;

    invoke-direct {v0, p1, v1}, Lcom/etermax/gamescommon/a/b;-><init>(Landroid/content/Context;Lcom/etermax/gamescommon/a/a;)V

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 170
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/etermax/gamescommon/a;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p3}, Lcom/etermax/gamescommon/l;->a(Z)V

    .line 66
    iput-object p2, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/etermax/gamescommon/g/c;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/etermax/gamescommon/g/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/l;->j:Lcom/etermax/gamescommon/g/g;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/g/c;->a(Lcom/etermax/gamescommon/g/g;)V

    .line 71
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/etermax/gamescommon/l;->c:Landroid/support/v4/app/FragmentActivity;

    .line 118
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/etermax/gamescommon/l;->k:Lcom/etermax/gamescommon/g/h;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/g/c;->a(ZLcom/etermax/gamescommon/g/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/etermax/gamescommon/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/support/v4/app/FragmentActivity;Lcom/amazon/inapp/purchasing/PurchaseResponse;Lcom/etermax/gamescommon/n;)V
.end method

.method protected abstract a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V
.end method

.method protected a(Lcom/etermax/gamescommon/g/j;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 221
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/j;->d()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_2

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i;

    .line 223
    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/i;->onApiVerificationException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 226
    :cond_2
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/g/j;ZLcom/etermax/gamescommon/n;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    if-eqz p1, :cond_1

    .line 200
    if-nez p2, :cond_1

    .line 202
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i;

    .line 203
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/j;->d()I

    move-result v2

    if-nez v2, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/etermax/gamescommon/i;->onPurchaseSucceded(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/etermax/gamescommon/l;->a(Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V

    .line 211
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/i;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_1

    .line 106
    invoke-static {p1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/l;->c:Landroid/support/v4/app/FragmentActivity;

    iget v2, p0, Lcom/etermax/gamescommon/l;->g:I

    iget-object v3, p0, Lcom/etermax/gamescommon/l;->l:Lcom/etermax/gamescommon/g/f;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/etermax/gamescommon/g/c;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/etermax/gamescommon/g/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/etermax/gamescommon/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/etermax/gamescommon/l;->a:Z

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    :cond_0
    return-void
.end method

.method protected a(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/etermax/gamescommon/g/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/g/a;-><init>()V

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    const-string v2, "inapp"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/etermax/gamescommon/g/c;->a(Ljava/lang/String;Lcom/etermax/gamescommon/g/a;Ljava/util/List;)I

    move-result v1

    .line 148
    if-nez v1, :cond_0

    .line 149
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/a;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->h:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 157
    :catch_2
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-static {p1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateItemDataRequest(Ljava/util/Set;)Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/etermax/gamescommon/l;->a:Z

    .line 87
    return-void
.end method

.method public b()Lcom/etermax/gamescommon/a;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/l;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/g/k;

    .line 186
    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AR$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->c:Landroid/support/v4/app/FragmentActivity;

    if-ne v0, p1, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/l;->c:Landroid/support/v4/app/FragmentActivity;

    .line 131
    :cond_0
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/i;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/etermax/gamescommon/l;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/etermax/gamescommon/l;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->d:Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/l;->f:Lcom/etermax/gamescommon/g/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i;

    .line 95
    invoke-interface {v0}, Lcom/etermax/gamescommon/i;->onBillingUnsupported()V

    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i;

    .line 216
    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/i;->onPurchaseSucceded(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/etermax/gamescommon/l;->a:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/etermax/gamescommon/l;->a:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/etermax/gamescommon/l;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    return-void
.end method
