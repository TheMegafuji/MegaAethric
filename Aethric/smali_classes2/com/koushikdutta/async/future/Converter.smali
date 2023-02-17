.class public Lcom/koushikdutta/async/future/Converter;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/future/Converter$ConverterEntries;,
        Lcom/koushikdutta/async/future/Converter$ConverterEntry;,
        Lcom/koushikdutta/async/future/Converter$PathInfo;,
        Lcom/koushikdutta/async/future/Converter$Converters;,
        Lcom/koushikdutta/async/future/Converter$ConverterTransformers;,
        Lcom/koushikdutta/async/future/Converter$MimedType;,
        Lcom/koushikdutta/async/future/Converter$EnsureHashMap;,
        Lcom/koushikdutta/async/future/Converter$MultiTransformer;,
        Lcom/koushikdutta/async/future/Converter$MimedData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

.field private static final MIME_ALL:Ljava/lang/String; = "*/*"


# instance fields
.field future:Lcom/koushikdutta/async/future/MultiFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/MultiFuture<",
            "TR;>;"
        }
    .end annotation
.end field

.field futureMime:Ljava/lang/String;

.field outputs:Lcom/koushikdutta/async/future/Converter$Converters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/Converter$Converters<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 349
    new-instance v0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    .line 353
    sget-object v6, Lcom/koushikdutta/async/future/-$$Lambda$Converter$R46KzWDN2hs2KXum0GmW87cWwns;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$R46KzWDN2hs2KXum0GmW87cWwns;

    .line 355
    sget-object v7, Lcom/koushikdutta/async/future/-$$Lambda$Converter$BDx6kN7ItfndVIwU-SGN1s8sFDs;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$BDx6kN7ItfndVIwU-SGN1s8sFDs;

    .line 357
    sget-object v8, Lcom/koushikdutta/async/future/-$$Lambda$Converter$24SKWo8iwz1FlGepToQhhy1rIBQ;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$24SKWo8iwz1FlGepToQhhy1rIBQ;

    .line 359
    sget-object v9, Lcom/koushikdutta/async/future/-$$Lambda$Converter$vuuWG8QWZYt5lmdPu_TzFBlR0v4;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$vuuWG8QWZYt5lmdPu_TzFBlR0v4;

    .line 361
    sget-object v10, Lcom/koushikdutta/async/future/-$$Lambda$Converter$kyD5fc1aqaiu4DGqLcUK2rLdg5M;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$kyD5fc1aqaiu4DGqLcUK2rLdg5M;

    .line 363
    sget-object v5, Lcom/koushikdutta/async/future/-$$Lambda$Converter$bUfsD3_r7FiA3xz8CvIILUm65jg;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$bUfsD3_r7FiA3xz8CvIILUm65jg;

    .line 366
    sget-object v16, Lcom/koushikdutta/async/future/-$$Lambda$Converter$Q0AvTOz3NZrjhbXu7XmNtA3EB78;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$Q0AvTOz3NZrjhbXu7XmNtA3EB78;

    .line 367
    sget-object v22, Lcom/koushikdutta/async/future/-$$Lambda$Converter$PoLjU4bqpOrVxFnQoaRO4Juw2Q0;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$PoLjU4bqpOrVxFnQoaRO4Juw2Q0;

    .line 368
    sget-object v28, Lcom/koushikdutta/async/future/-$$Lambda$Converter$nC2F0tBHXwELq_k36XHTflqK7Ts;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$nC2F0tBHXwELq_k36XHTflqK7Ts;

    .line 369
    sget-object v34, Lcom/koushikdutta/async/future/-$$Lambda$Converter$qJmU1SD87uwI5WLblurgwAJyJsY;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$qJmU1SD87uwI5WLblurgwAJyJsY;

    .line 371
    sget-object v0, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v3, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 372
    sget-object v11, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v12, Ljava/lang/String;

    const-class v14, [B

    const/4 v13, 0x0

    const-string v15, "text/plain"

    invoke-virtual/range {v11 .. v16}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 373
    sget-object v1, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v2, [B

    const-class v4, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 374
    sget-object v0, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v1, Lcom/koushikdutta/async/ByteBufferList;

    const-class v3, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 375
    sget-object v0, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v1, Lcom/koushikdutta/async/ByteBufferList;

    const-class v3, Ljava/nio/ByteBuffer;

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 376
    sget-object v0, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v1, Lcom/koushikdutta/async/ByteBufferList;

    const-class v3, Ljava/lang/String;

    const-string v2, "text/plain"

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 377
    sget-object v0, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v1, [B

    const-class v3, Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 378
    sget-object v17, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v18, Ljava/lang/String;

    const-class v20, Lorg/json/JSONObject;

    const-string v19, "application/json"

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v22}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 379
    sget-object v23, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v24, Lorg/json/JSONObject;

    const-class v26, Ljava/lang/String;

    const/16 v25, 0x0

    const-string v27, "application/json"

    invoke-virtual/range {v23 .. v28}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 380
    sget-object v29, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    const-class v30, [B

    const-class v32, Ljava/lang/String;

    const-string v31, "text/plain"

    const/16 v33, 0x0

    invoke-virtual/range {v29 .. v34}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    return-void
.end method

.method protected constructor <init>(Lcom/koushikdutta/async/future/Future;Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/koushikdutta/async/future/MultiFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/MultiFuture;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Converter;->future:Lcom/koushikdutta/async/future/MultiFuture;

    .line 172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "*/*"

    .line 174
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/Converter;->futureMime:Ljava/lang/String;

    .line 175
    iget-object p2, p0, Lcom/koushikdutta/async/future/Converter;->future:Lcom/koushikdutta/async/future/MultiFuture;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/MultiFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method public static convert(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Converter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-static {p0, v0}, Lcom/koushikdutta/async/future/Converter;->convert(Lcom/koushikdutta/async/future/Future;Ljava/lang/String;)Lcom/koushikdutta/async/future/Converter;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lcom/koushikdutta/async/future/Future;Ljava/lang/String;)Lcom/koushikdutta/async/future/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Converter<",
            "TT;>;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/koushikdutta/async/future/Converter;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/Converter;-><init>(Lcom/koushikdutta/async/future/Future;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$static$10(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lcom/koushikdutta/async/future/-$$Lambda$aZvS3YDHoKr6bnGLhb3C3itLA-c;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$aZvS3YDHoKr6bnGLhb3C3itLA-c;

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$11([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$static$2([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 354
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/koushikdutta/async/ByteBufferList;->deepCopy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$static$3(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getAllByteArray()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$static$4(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getAll()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$static$5(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->peekString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$static$6([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/koushikdutta/async/ByteBufferList;->deepCopy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$static$7(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/koushikdutta/async/ByteBufferList;->deepCopy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$static$8(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 366
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$static$9(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lcom/koushikdutta/async/future/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$to$0(Lcom/koushikdutta/async/future/Converter$MimedData;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    iget-object p0, p0, Lcom/koushikdutta/async/future/Converter$MimedData;->data:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/future/Future;

    return-object p0
.end method

.method static mimeReplace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 235
    aget-object v2, p1, v1

    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v1, p1, v1

    goto :goto_0

    :cond_0
    aget-object v1, p0, v1

    :goto_0
    const/4 v2, 0x1

    .line 236
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object p0, p1, v2

    goto :goto_1

    :cond_1
    aget-object p0, p0, v2

    .line 238
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private search(Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/HashSet;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/Converter$MimedType<",
            "TT;>;",
            "Ljava/util/ArrayDeque<",
            "Lcom/koushikdutta/async/future/Converter$PathInfo;",
            ">;",
            "Ljava/util/ArrayDeque<",
            "Lcom/koushikdutta/async/future/Converter$PathInfo;",
            ">;",
            "Lcom/koushikdutta/async/future/Converter$MimedType;",
            "Ljava/util/HashSet<",
            "Lcom/koushikdutta/async/future/Converter$MimedType;",
            ">;)Z"
        }
    .end annotation

    .line 246
    invoke-virtual {p1, p4}, Lcom/koushikdutta/async/future/Converter$MimedType;->isTypeOf(Lcom/koushikdutta/async/future/Converter$MimedType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->clear()V

    .line 248
    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    return p1

    .line 253
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/koushikdutta/async/future/Converter$PathInfo;->distance(Ljava/util/ArrayDeque;)I

    move-result v0

    invoke-static {p2}, Lcom/koushikdutta/async/future/Converter$PathInfo;->distance(Ljava/util/ArrayDeque;)I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    .line 257
    :cond_1
    invoke-virtual {p5, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 261
    :cond_2
    invoke-virtual {p5, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter;->outputs:Lcom/koushikdutta/async/future/Converter$Converters;

    invoke-virtual {v0, p4}, Lcom/koushikdutta/async/future/Converter$Converters;->getAll(Lcom/koushikdutta/async/future/Converter$MimedType;)Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/future/Converter$MimedType;

    .line 265
    new-instance v8, Lcom/koushikdutta/async/future/Converter$MimedType;

    iget-object v4, v3, Lcom/koushikdutta/async/future/Converter$MimedType;->type:Ljava/lang/Class;

    iget-object v5, p4, Lcom/koushikdutta/async/future/Converter$MimedType;->mime:Ljava/lang/String;

    iget-object v6, v3, Lcom/koushikdutta/async/future/Converter$MimedType;->mime:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/koushikdutta/async/future/Converter;->mimeReplace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/koushikdutta/async/future/Converter$MimedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 267
    new-instance v4, Lcom/koushikdutta/async/future/Converter$PathInfo;

    invoke-direct {v4}, Lcom/koushikdutta/async/future/Converter$PathInfo;-><init>()V

    .line 268
    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iput-object v5, v4, Lcom/koushikdutta/async/future/Converter$PathInfo;->transformer:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    .line 269
    iget-object v5, v8, Lcom/koushikdutta/async/future/Converter$MimedType;->mime:Ljava/lang/String;

    iput-object v5, v4, Lcom/koushikdutta/async/future/Converter$PathInfo;->mime:Ljava/lang/String;

    .line 270
    iput-object v3, v4, Lcom/koushikdutta/async/future/Converter$PathInfo;->candidate:Lcom/koushikdutta/async/future/Converter$MimedType;

    .line 271
    invoke-virtual {p3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p5

    .line 273
    :try_start_0
    invoke-direct/range {v4 .. v9}, Lcom/koushikdutta/async/future/Converter;->search(Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/HashSet;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v1, v3

    .line 276
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    throw p1

    :cond_3
    if-eqz v1, :cond_4

    .line 284
    invoke-virtual {p5, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    return v1
.end method

.method private final declared-synchronized to(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 185
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "*/*"

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter;->outputs:Lcom/koushikdutta/async/future/Converter$Converters;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lcom/koushikdutta/async/future/Converter$Converters;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/Converter$Converters;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Converter;->outputs:Lcom/koushikdutta/async/future/Converter$Converters;

    .line 190
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Converter;->getConverters()Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    move-result-object v0

    .line 191
    iget-object v0, v0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;

    .line 192
    iget-object v2, p0, Lcom/koushikdutta/async/future/Converter;->outputs:Lcom/koushikdutta/async/future/Converter$Converters;

    iget-object v3, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->from:Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/future/Converter$Converters;->ensure(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    iget-object v3, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->to:Lcom/koushikdutta/async/future/Converter$MimedType;

    new-instance v4, Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iget-object v5, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->typeConverter:Lcom/koushikdutta/async/future/TypeConverter;

    iget-object v6, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->to:Lcom/koushikdutta/async/future/Converter$MimedType;

    iget-object v6, v6, Lcom/koushikdutta/async/future/Converter$MimedType;->mime:Ljava/lang/String;

    iget v1, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->distance:I

    invoke-direct {v4, v5, v6, v1}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;-><init>(Lcom/koushikdutta/async/future/TypeConverter;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_1
    new-instance v1, Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-direct {v1, p2, p3}, Lcom/koushikdutta/async/future/Converter$MimedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 197
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 198
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 199
    new-instance v4, Lcom/koushikdutta/async/future/Converter$MimedType;

    iget-object p3, p0, Lcom/koushikdutta/async/future/Converter;->futureMime:Ljava/lang/String;

    invoke-direct {v4, p1, p3}, Lcom/koushikdutta/async/future/Converter$MimedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter;->search(Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 200
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/future/Converter$PathInfo;

    .line 202
    new-instance p3, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Lcom/koushikdutta/async/future/Converter$MimedData;

    iget-object v1, p0, Lcom/koushikdutta/async/future/Converter;->future:Lcom/koushikdutta/async/future/MultiFuture;

    iget-object v2, p0, Lcom/koushikdutta/async/future/Converter;->futureMime:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/future/Converter$MimedData;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/koushikdutta/async/future/Converter$PathInfo;->transformer:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 204
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 205
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/koushikdutta/async/future/Converter$PathInfo;

    .line 206
    iget-object p1, p1, Lcom/koushikdutta/async/future/Converter$PathInfo;->transformer:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iget-object v0, p3, Lcom/koushikdutta/async/future/Converter$PathInfo;->transformer:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    move-object p1, p3

    goto :goto_1

    .line 210
    :cond_2
    iget-object p1, p1, Lcom/koushikdutta/async/future/Converter$PathInfo;->transformer:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    sget-object p2, Lcom/koushikdutta/async/future/-$$Lambda$Converter$HXE5JcXrstZwY0n8rtrGYwzC_Po;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$HXE5JcXrstZwY0n8rtrGYwzC_Po;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->then(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 213
    :cond_3
    :try_start_1
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance p2, Ljava/io/InvalidObjectException;

    const-string p3, "unable to find converter"

    invoke-direct {p2, p3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized to(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance p2, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    .line 181
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/future/Converter;->to(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected getConverters()Lcom/koushikdutta/async/future/Converter$ConverterEntries;
    .locals 2

    .line 166
    new-instance v0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    sget-object v1, Lcom/koushikdutta/async/future/Converter;->Converters:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;-><init>(Lcom/koushikdutta/async/future/Converter$ConverterEntries;)V

    return-object v0
.end method

.method public synthetic lambda$to$1$Converter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    invoke-direct {p0, p3, p1, p2}, Lcom/koushikdutta/async/future/Converter;->to(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public final to(Ljava/lang/Class;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/future/Converter;->to(Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter;->future:Lcom/koushikdutta/async/future/MultiFuture;

    new-instance v1, Lcom/koushikdutta/async/future/-$$Lambda$Converter$n94r4zoxHBTWy7_0MBpQfwSAafE;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/future/-$$Lambda$Converter$n94r4zoxHBTWy7_0MBpQfwSAafE;-><init>(Lcom/koushikdutta/async/future/Converter;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/MultiFuture;->then(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
