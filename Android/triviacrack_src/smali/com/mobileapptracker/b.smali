.class public Lcom/mobileapptracker/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:D

.field public d:D

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IDD)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mobileapptracker/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobileapptracker/b;->b:I

    iput-wide v2, p0, Lcom/mobileapptracker/b;->c:D

    iput-wide v2, p0, Lcom/mobileapptracker/b;->d:D

    iput-object v1, p0, Lcom/mobileapptracker/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/b;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/b;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/b;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/b;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/mobileapptracker/b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/mobileapptracker/b;->b:I

    iput-wide p3, p0, Lcom/mobileapptracker/b;->c:D

    iput-wide p5, p0, Lcom/mobileapptracker/b;->d:D

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/mobileapptracker/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "item"

    iget-object v2, p0, Lcom/mobileapptracker/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "quantity"

    iget v2, p0, Lcom/mobileapptracker/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unit_price"

    iget-wide v2, p0, Lcom/mobileapptracker/b;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "revenue"

    iget-wide v2, p0, Lcom/mobileapptracker/b;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mobileapptracker/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "attribute_sub1"

    iget-object v2, p0, Lcom/mobileapptracker/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/mobileapptracker/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "attribute_sub2"

    iget-object v2, p0, Lcom/mobileapptracker/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/mobileapptracker/b;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "attribute_sub3"

    iget-object v2, p0, Lcom/mobileapptracker/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/mobileapptracker/b;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "attribute_sub4"

    iget-object v2, p0, Lcom/mobileapptracker/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/mobileapptracker/b;->i:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "attribute_sub5"

    iget-object v2, p0, Lcom/mobileapptracker/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
