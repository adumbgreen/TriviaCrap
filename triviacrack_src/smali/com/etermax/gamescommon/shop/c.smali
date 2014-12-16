.class public Lcom/etermax/gamescommon/shop/c;
.super Lcom/etermax/gamescommon/l;
.source "SourceFile"


# instance fields
.field c:Landroid/content/Context;

.field d:Lcom/etermax/tools/f/a;

.field e:Lcom/etermax/gamescommon/login/datasource/a;

.field f:Lcom/etermax/gamescommon/datasource/e;

.field g:Lcom/etermax/tools/j/a;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/etermax/gamescommon/l;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/shop/c;Lcom/etermax/gamescommon/g/j;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/g/j;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/shop/c;Lcom/etermax/gamescommon/g/j;ZLcom/etermax/gamescommon/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/g/j;ZLcom/etermax/gamescommon/n;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/shop/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/shop/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/mobileapptracker/h;->a()Lcom/mobileapptracker/h;

    move-result-object v8

    .line 158
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mobileapptracker/h;->e(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mobileapptracker/h;->c(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    .line 162
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v0, Lcom/mobileapptracker/b;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c;->g:Lcom/etermax/tools/j/a;

    invoke-virtual {v2}, Lcom/etermax/tools/j/a;->c()Z

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v7}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v5

    float-to-double v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/mobileapptracker/b;-><init>(Ljava/lang/String;IDD)V

    .line 164
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "purchase"

    invoke-virtual {v7}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v0

    float-to-double v3, v0

    const-string v5, ""

    move-object v0, v8

    move-object v2, v9

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mobileapptracker/h;->a(Ljava/lang/String;Ljava/util/List;DLjava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/shop/c;Lcom/etermax/gamescommon/g/j;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/g/j;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/shop/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 207
    new-instance v0, Lcom/etermax/gamescommon/b/ak;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/ak;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/etermax/gamescommon/b/ak;->a(Ljava/lang/String;J)V

    .line 209
    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 210
    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c;->g:Lcom/etermax/tools/j/a;

    invoke-virtual {v1}, Lcom/etermax/tools/j/a;->c()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/shop/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_0
    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/amazon/inapp/purchasing/PurchaseResponse;Lcom/etermax/gamescommon/n;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    const-string v0, "ShopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMAZON Post Purchase - purchaseToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "ShopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMAZON Post Purchase - userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "ShopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMAZON Post Purchase - sku: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/etermax/gamescommon/shop/c$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/etermax/gamescommon/shop/c$2;-><init>(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/shop/c$2;->a(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const-string v0, "ShopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post Purchase - transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/etermax/gamescommon/g/j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "ShopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post Purchase - signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/etermax/gamescommon/g/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/etermax/gamescommon/shop/c$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/etermax/gamescommon/shop/c$1;-><init>(Lcom/etermax/gamescommon/shop/c;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/shop/c$1;->a(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    .line 174
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/shop/c;->g:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/shop/c;->a(Ljava/util/Set;)V

    .line 180
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 59
    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    .line 60
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/b;

    invoke-interface {v0}, Lcom/etermax/tools/b;->u()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v2, "market_amazon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c;->c:Landroid/content/Context;

    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v2

    invoke-super {p0, v1, v0, v2}, Lcom/etermax/gamescommon/l;->a(Landroid/content/Context;Lcom/etermax/gamescommon/a;Z)V

    .line 65
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public e()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;-><init>()V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;->setList(Ljava/util/List;)V

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
