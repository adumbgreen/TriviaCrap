.class public Lcom/mdotm/android/vast/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "SampleXMLParser"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->H:Ljava/lang/String;

    .line 22
    const-string v0, "Ad"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->a:Ljava/lang/String;

    .line 23
    const-string v0, "id"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->b:Ljava/lang/String;

    .line 24
    const-string v0, "AdTitle"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->c:Ljava/lang/String;

    .line 25
    const-string v0, "Description"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->d:Ljava/lang/String;

    .line 26
    const-string v0, "InLine"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->e:Ljava/lang/String;

    .line 27
    const-string v0, "Error"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->f:Ljava/lang/String;

    .line 28
    const-string v0, "Impression"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->g:Ljava/lang/String;

    .line 29
    const-string v0, "Creatives"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->h:Ljava/lang/String;

    .line 30
    const-string v0, "Creative"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->i:Ljava/lang/String;

    .line 31
    const-string v0, "Linear"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->j:Ljava/lang/String;

    .line 32
    const-string v0, "Duration"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->k:Ljava/lang/String;

    .line 33
    const-string v0, "TrackingEvents"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->l:Ljava/lang/String;

    .line 34
    const-string v0, "Tracking"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->m:Ljava/lang/String;

    .line 35
    const-string v0, "event"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->n:Ljava/lang/String;

    .line 36
    const-string v0, "VideoClicks"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->o:Ljava/lang/String;

    .line 37
    const-string v0, "ClickThrough"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->p:Ljava/lang/String;

    .line 38
    const-string v0, "MediaFiles"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->q:Ljava/lang/String;

    .line 39
    const-string v0, "MediaFile"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->r:Ljava/lang/String;

    .line 40
    const-string v0, "type"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->s:Ljava/lang/String;

    .line 41
    const-string v0, "video/mp4"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->t:Ljava/lang/String;

    .line 42
    const-string v0, "video/mpeg"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->u:Ljava/lang/String;

    .line 43
    const-string v0, "delivery"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->v:Ljava/lang/String;

    .line 45
    const-string v0, "start"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->w:Ljava/lang/String;

    .line 46
    const-string v0, "firstQuartile"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->x:Ljava/lang/String;

    .line 47
    const-string v0, "midpoint"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->y:Ljava/lang/String;

    .line 48
    const-string v0, "thirdQuartile"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->z:Ljava/lang/String;

    .line 49
    const-string v0, "mute"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->A:Ljava/lang/String;

    .line 50
    const-string v0, "unmute"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->B:Ljava/lang/String;

    .line 51
    const-string v0, "pause"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->C:Ljava/lang/String;

    .line 52
    const-string v0, "resume"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->D:Ljava/lang/String;

    .line 53
    const-string v0, "complete"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->E:Ljava/lang/String;

    .line 55
    const-string v0, "progressive"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->F:Ljava/lang/String;

    .line 56
    const-string v0, "stream"

    iput-object v0, p0, Lcom/mdotm/android/vast/h;->G:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private a(Lorg/w3c/dom/Node;)I
    .locals 3
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    const-string v1, "progressive"

    .line 338
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 338
    if-eqz v1, :cond_1

    .line 339
    const/4 v0, 0x1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    const-string v1, "stream"

    .line 341
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private a(Lcom/mdotm/android/vast/e;Lorg/w3c/dom/Node;)V
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 114
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v2, v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " child parsing done"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    return-void

    .line 115
    :cond_0
    invoke-interface {v7, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 116
    const-string v3, "AdTitle"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/mdotm/android/vast/e;->a:Ljava/lang/String;

    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 119
    :cond_2
    const-string v3, "Description"

    .line 120
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 123
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 123
    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/mdotm/android/vast/e;->b:Ljava/lang/String;

    goto :goto_1

    .line 126
    :cond_3
    const-string v3, "Error"

    .line 127
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v3, v3, Lorg/w3c/dom/CharacterData;

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 129
    check-cast v1, Lorg/w3c/dom/CharacterData;

    .line 131
    invoke-interface {v1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    .line 132
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/mdotm/android/vast/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    :cond_4
    const-string v3, "Impression"

    .line 137
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 137
    if-eqz v3, :cond_5

    .line 138
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v3, v3, Lorg/w3c/dom/CharacterData;

    if-eqz v3, :cond_1

    .line 140
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 139
    check-cast v1, Lorg/w3c/dom/CharacterData;

    .line 141
    invoke-interface {v1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    .line 142
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/mdotm/android/vast/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_5
    const-string v3, "Creatives"

    .line 147
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 147
    if-eqz v3, :cond_1

    .line 149
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 150
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 151
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 152
    const-string v4, "Creative"

    .line 153
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 153
    if-eqz v4, :cond_6

    .line 155
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 156
    const/4 v1, 0x0

    move v4, v1

    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v4, v1, :cond_7

    .line 150
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 158
    :cond_7
    invoke-interface {v9, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 159
    const-string v5, "Linear"

    .line 160
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 160
    if-eqz v5, :cond_8

    .line 161
    new-instance v10, Lcom/mdotm/android/vast/c;

    invoke-direct {v10}, Lcom/mdotm/android/vast/c;-><init>()V

    .line 162
    const/4 v5, 0x1

    iput v5, v10, Lcom/mdotm/android/vast/c;->a:I

    .line 165
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 166
    const/4 v1, 0x0

    move v5, v1

    .line 167
    :goto_4
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 166
    if-lt v5, v1, :cond_9

    .line 284
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/mdotm/android/vast/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_8
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 169
    :cond_9
    invoke-interface {v11, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 170
    const-string v6, "Duration"

    .line 172
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 171
    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 172
    if-eqz v6, :cond_b

    .line 174
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 173
    iput-object v1, v10, Lcom/mdotm/android/vast/c;->b:Ljava/lang/String;

    .line 167
    :cond_a
    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    .line 177
    :cond_b
    const-string v6, "TrackingEvents"

    .line 179
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 178
    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 179
    if-eqz v6, :cond_e

    .line 181
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 182
    new-instance v12, Lcom/mdotm/android/vast/d;

    invoke-direct {v12}, Lcom/mdotm/android/vast/d;-><init>()V

    .line 183
    const/4 v1, 0x0

    .line 184
    :goto_6
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 183
    if-lt v1, v13, :cond_c

    .line 196
    invoke-virtual {v10, v12}, Lcom/mdotm/android/vast/c;->a(Lcom/mdotm/android/vast/d;)V

    goto :goto_5

    .line 186
    :cond_c
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 187
    const-string v14, "Tracking"

    .line 189
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 188
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 189
    if-eqz v14, :cond_d

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/mdotm/android/vast/h;->a(Lorg/w3c/dom/Node;Lcom/mdotm/android/vast/d;)V

    .line 184
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 197
    :cond_e
    const-string v6, "VideoClicks"

    .line 199
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 198
    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 199
    if-eqz v6, :cond_10

    .line 201
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 202
    const/4 v1, 0x0

    move v6, v1

    .line 203
    :goto_7
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 202
    if-ge v6, v1, :cond_a

    .line 205
    invoke-interface {v12, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 206
    const-string v13, "ClickThrough"

    .line 208
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 207
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 208
    if-eqz v13, :cond_f

    .line 210
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    .line 209
    instance-of v13, v13, Lorg/w3c/dom/CharacterData;

    .line 210
    if-eqz v13, :cond_f

    .line 212
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 211
    check-cast v1, Lorg/w3c/dom/CharacterData;

    .line 214
    invoke-interface {v1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v13, v10, Lcom/mdotm/android/vast/c;->d:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_f
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_7

    .line 225
    :cond_10
    const-string v6, "MediaFiles"

    .line 227
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 226
    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 227
    if-eqz v6, :cond_a

    .line 231
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 232
    const/4 v1, 0x0

    move v6, v1

    .line 233
    :goto_8
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 232
    if-ge v6, v1, :cond_a

    .line 235
    invoke-interface {v12, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 236
    const-string v13, "MediaFile"

    .line 238
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 237
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 238
    if-eqz v13, :cond_12

    .line 242
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    .line 244
    const-string v14, "type"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 249
    const-string v15, "video/mp4"

    .line 251
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 250
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 251
    if-nez v15, :cond_11

    const-string v15, "video/mpeg"

    .line 253
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 252
    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 253
    if-eqz v14, :cond_12

    .line 258
    :cond_11
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    .line 257
    instance-of v14, v14, Lorg/w3c/dom/CharacterData;

    .line 258
    if-eqz v14, :cond_12

    .line 263
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 262
    check-cast v1, Lorg/w3c/dom/CharacterData;

    .line 265
    invoke-interface {v1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 268
    const-string v14, "delivery"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mdotm/android/vast/h;->a(Lorg/w3c/dom/Node;)I

    move-result v13

    .line 270
    new-instance v14, Lcom/mdotm/android/vast/a;

    invoke-direct {v14}, Lcom/mdotm/android/vast/a;-><init>()V

    .line 271
    iput v13, v14, Lcom/mdotm/android/vast/a;->b:I

    .line 272
    iput-object v1, v14, Lcom/mdotm/android/vast/a;->c:Ljava/lang/String;

    .line 273
    iput-object v14, v10, Lcom/mdotm/android/vast/c;->e:Lcom/mdotm/android/vast/a;

    .line 233
    :cond_12
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_8
.end method

.method private a(Lorg/w3c/dom/Node;Lcom/mdotm/android/vast/d;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 299
    .line 300
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 302
    const-string v1, "event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/CharacterData;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 305
    check-cast v0, Lorg/w3c/dom/CharacterData;

    .line 307
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v2, "firstQuartile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_2
    const-string v2, "midpoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_3
    const-string v2, "thirdQuartile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_4
    const-string v2, "complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_5
    const-string v2, "mute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 321
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_6
    const-string v2, "unmute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 324
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_7
    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 327
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_8
    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p2, Lcom/mdotm/android/vast/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mdotm/android/vast/e;
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/mdotm/android/vast/e;

    invoke-direct {v0}, Lcom/mdotm/android/vast/e;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 62
    :cond_0
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/e;->a(I)V

    .line 108
    :cond_1
    :goto_0
    return-object v0

    .line 65
    :cond_2
    invoke-virtual {v0, v3}, Lcom/mdotm/android/vast/e;->a(I)V

    .line 68
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 69
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 71
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 73
    new-instance v3, Lorg/xml/sax/InputSource;

    .line 74
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 73
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 76
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    .line 77
    const-string v3, "Ad"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 79
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    move v3, v2

    .line 81
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 82
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 84
    if-eqz v5, :cond_3

    .line 85
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    .line 86
    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v1, v6, :cond_4

    .line 81
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 87
    :cond_4
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 88
    const-string v7, "InLine"

    .line 89
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 89
    if-eqz v7, :cond_5

    .line 90
    invoke-direct {p0, v0, v6}, Lcom/mdotm/android/vast/h;->a(Lcom/mdotm/android/vast/e;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/e;->a(I)V

    .line 99
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 100
    :catch_1
    move-exception v1

    .line 101
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/e;->a(I)V

    .line 102
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 103
    :catch_2
    move-exception v1

    .line 104
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/e;->a(I)V

    .line 105
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
